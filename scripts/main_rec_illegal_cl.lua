local QBCore = exports['ilfr-mainserver']:GetCoreObject()
local isLoggedIn = false
local sellItemsSet = false
local sellPrice = 0
local sellItemsSet2 = false
local sellPrice2 = 0
local sellHardwareItemsSet = false
local sellHardwarePrice = 0

Citizen.CreateThread(function()
	
	while true do 
		Citizen.Wait(1)
		local inRange = false
		local pos = GetEntityCoords(PlayerPedId())
		if #(pos - Config.DealerLocationCokaine) < 5.0 then
			inRange = true
			if #(pos - Config.DealerLocationCokaine) < 4.5 then
				if GetClockHours() >= 00 and GetClockHours() <= 24 then
					if not sellItemsSet then 
						sellPrice = GetSellingPrice()
						sellItemsSet = true
					elseif sellItemsSet and sellPrice ~= 0 then
						DrawText3D(Config.DealerLocationCokaine.x, Config.DealerLocationCokaine.y, Config.DealerLocationCokaine.z, "Prix d'achat : ($"..sellPrice..")")
						exports["ilfr-context"]:Help("Appuyez sur ~INPUT_CONTEXT~ pour revendre votre cocaïne")
						if IsControlJustReleased(0, 38) then
							TaskStartScenarioInPlace(PlayerPedId(), "WORLD_HUMAN_STAND_IMPATIENT", 0, true)
                            QBCore.Functions.Progressbar("sell_Dealer_items", "Vous êtes occupé(e), veuillez patienter", math.random(15000, 25000), false, true, {}, {}, {}, {}, function() -- Done
                                ClearPedTasks(PlayerPedId())
								TriggerServerEvent("ilfr-heroinedealer:server:sellDealerItems")
								sellItemsSet = false
								sellPrice = 0
                            end, function() -- Cancel
								ClearPedTasks(PlayerPedId())
								exports['ilfr-core']:SendAdvanced({
								message = 'Vous avez annulé(e) la vente.',
								title = 'Notification',
								subject = 'Action impossible',
								icon = 'CHAR_NON',
							})
							end)
						end
					else
						DrawText3D(Config.DealerLocationCokaine.x, Config.DealerLocationCokaine.y, Config.DealerLocationCokaine.z, "Vas-y reste pas la mec... c'est chaud ici si tu as rien pour moi")
					end
				else
					DrawText3D(Config.DealerLocationCokaine.x, Config.DealerLocationCokaine.y, Config.DealerLocationCokaine.z, "J'peux rien t'acheter la c'est chaud, repasse vers ~r~00:00")
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

Citizen.CreateThread(function()
	
	while true do 
		Citizen.Wait(1)
		local inRange = false
		local pos = GetEntityCoords(PlayerPedId())
		if #(pos - Config.DealerLocationCokaine2) < 5.0 then
			inRange = true
			if #(pos - Config.DealerLocationCokaine2) < 4.5 then
				if GetClockHours() >= 06 and GetClockHours() <= 23 then
					if not sellItemsSet2 then 
						sellPrice2 = GetSellingPrice2()
						sellItemsSet2 = true
					elseif sellItemsSet2 and sellPrice2 ~= 0 then
						DrawText3D(Config.DealerLocationCokaine2.x, Config.DealerLocationCokaine2.y, Config.DealerLocationCokaine2.z, "Prix d'achat : ($"..sellPrice2..")")
						exports["ilfr-context"]:Help("Appuyez sur ~INPUT_CONTEXT~ pour revendre votre héroine")
						if IsControlJustReleased(0, 38) then
							TaskStartScenarioInPlace(PlayerPedId(), "WORLD_HUMAN_STAND_IMPATIENT", 0, true)
                            QBCore.Functions.Progressbar("sell_Dealer_items", "Vous êtes occupé(e), veuillez patienter", math.random(15000, 25000), false, true, {}, {}, {}, {}, function() -- Done
                                ClearPedTasks(PlayerPedId())
								TriggerServerEvent("ilfr-heroinedealer:server:sellDealerItems2")
								sellItemsSet2 = false
								sellPrice2 = 0
                            end, function() -- Cancel
								ClearPedTasks(PlayerPedId())
								exports['ilfr-core']:SendAdvanced({
								message = 'Vous avez annulé(e) la vente.',
								title = 'Notification',
								subject = 'Action impossible',
								icon = 'CHAR_NON',
							})
							end)
						end
					else
						DrawText3D(Config.DealerLocationCokaine2.x, Config.DealerLocationCokaine2.y, Config.DealerLocationCokaine2.z, "Tu as rien pour moi? Bouge de la maintenant")
					end
				else
					DrawText3D(Config.DealerLocationCokaine2.x, Config.DealerLocationCokaine2.y, Config.DealerLocationCokaine2.z, "Repasse plutôt entre ~r~06:00h~w~ et ~r~23:00h~w~ poto")
				end
			end
		end
		if not inRange then
			sellPrice2 = 0
			sellItemsSet2 = false
			Citizen.Wait(2500)
		end
	end
end)





function GetSellingPrice()
	local price = 0
	QBCore.Functions.TriggerCallback('ilfr-heroinedealer:server:getSellPrice', function(result)
		price = result
	end)
	Citizen.Wait(500)
	return price
end

function GetSellingPrice2()
	local price2 = 0
	QBCore.Functions.TriggerCallback('ilfr-heroinedealer:server:getSellPrice2', function(result)
		price2 = result
	end)
	Citizen.Wait(500)
	return price2
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
