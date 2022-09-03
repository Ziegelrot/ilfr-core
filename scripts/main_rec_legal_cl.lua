local QBCore = exports['ilfr-mainserver']:GetCoreObject()
local isLoggedIn = false
local sellItemsSet = false
local sellPrice = 0
local sellHardwareItemsSet = false
local sellHardwarePrice = 0

Citizen.CreateThread(function()
	
	while true do 
		Citizen.Wait(1)
		local inRange = false
		local pos = GetEntityCoords(PlayerPedId())
		if #(pos - Config.GalliumLocation) < 5.0 then
			inRange = true
			if #(pos - Config.GalliumLocation) < 4.5 then
				if GetClockHours() >= 8 and GetClockHours() <= 23 then
					if not sellItemsSet then 
						sellPrice = GetSellingPrice()
						sellItemsSet = true
					elseif sellItemsSet and sellPrice ~= 0 then
						DrawText3D(Config.GalliumLocation.x, Config.GalliumLocation.y, Config.GalliumLocation.z, "Prix d'achat : ($"..sellPrice..")")
						exports["ilfr-context"]:Help("Appuyez sur ~INPUT_CONTEXT~ pour revendre vos pierres au grossiste")
						if IsControlJustReleased(0, 38) then
							TaskStartScenarioInPlace(PlayerPedId(), "WORLD_HUMAN_STAND_IMPATIENT", 0, true)
                            QBCore.Functions.Progressbar("sell_Dealer_items", "Vous êtes occupé(e), veuillez patienter", math.random(15000, 25000), false, true, {}, {}, {}, {}, function() -- Done
                                ClearPedTasks(PlayerPedId())
								TriggerServerEvent("qb-GalliumShop:server:sellDealerItems")
								sellItemsSet = false
								sellPrice = 0
                            end, function() -- Cancel
								ClearPedTasks(PlayerPedId())
								QBCore.Functions.Notify("Vous avez annulé", "error")
							end)
						end
					else
						DrawText3D(Config.GalliumLocation.x, Config.GalliumLocation.y, Config.GalliumLocation.z, "J'achète que des pierres, désolé")
					end
				else
					DrawText3D(Config.GalliumLocation.x, Config.GalliumLocation.y, Config.GalliumLocation.z, "Je suis fermé, j'ouvre de ~r~08:00 à ~r~19:00")
				end
			end
		end
		if not inRange then
			sellPrice = 0
			sellItemsSet = false
			Citizen.Wait(2500)
		end
	end
end)




function GetSellingPrice()
	local price = 0
	QBCore.Functions.TriggerCallback('qb-GalliumShop:server:getSellPrice', function(result)
		price = result
	end)
	Citizen.Wait(500)
	return price
end



function DrawText3D(x, y, z, text)
	SetTextScale(0.35, 0.35)
    SetTextFont(4)
    SetTextProportional(1)
    SetTextColour(255, 255, 255, 215)
    SetTextEntry("STRING")
    SetTextCentre(true)
    AddTextComponentString(text)
    SetDrawOrigin(x,y,z, 0)
    DrawText(0.0, 0.0)
    local factor = (string.len(text)) / 370
    DrawRect(0.0, 0.0+0.0125, 0.017+ factor, 0.03, 0, 0, 0, 75)
    ClearDrawOrigin()
end
