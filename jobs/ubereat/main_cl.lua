




---------
-- Core --
---------

local QBCore = exports['ilfr-mainserver']:GetCoreObject()
PlayerData = {}


RegisterNetEvent('QBCore:Client:OnPlayerLoaded')
AddEventHandler('QBCore:Client:OnPlayerLoaded', function()
    isLoggedIn = true
    PlayerData = QBCore.Functions.GetPlayerData()
end)
-------------
-- Variables --
-------------

local InService = false
local Hired = true
local BlipSell = nil
local BlipEnd = nil
local BlipCancel = nil
local TargetPos = nil
local HasPizza = false
local NearVan = false
local LastGoal = 0
local DeliveriesCount = 0
local Delivered = false
local xxx = nil
local yyy = nil
local zzz = nil
local Blipy = {}
local JuzBlip = false
local PizzaDelivered = false
local ownsVan = false

---------------
-- Functions --
---------------

-- Create Job Blip
Citizen.CreateThread(function()
    while true do
        Citizen.Wait(10)
        if not JuzBlip then
            Blipy['praca'] = AddBlipForCoord(-1432.71, 1470.83, 19.26) 
            SetBlipSprite(Blipy['praca'], 488)
            SetBlipDisplay(Blipy['praca'], 4)
            SetBlipScale(Blipy['praca'], 0.5)
            SetBlipAsShortRange(Blipy['praca'], true)
            BeginTextCommandSetBlipName("STRING")
            AddTextComponentString('Livraison Uber')
            EndTextCommandSetBlipName(Blipy['praca'])
						JuzBlip = true
        end
    end
end)

--Spawn Van
function PullOutVehicle()
    if ownsVan == true then
		exports['ilfr-core']:SendAdvanced({
							message = 'Vous êtes ~r~déja~w~ en train de livrer.',
							title = 'Notification',
							subject = 'Action impossible',
							icon = 'CHAR_NON',
							})
    elseif ownsVan == false then
        coords = Config.ZonesUber.Spawn.Pos
        QBCore.Functions.SpawnVehicle('faggio2', function(veh)
            SetVehicleNumberPlateText(veh, "PIZZA"..tostring(math.random(1000, 9999)))
            SetEntityHeading(veh, coords.h)
			TriggerEvent("vehiclekeys:client:SetOwner", QBCore.Functions.GetPlate(veh))
			exports['LegacyFuel']:SetFuel(veh, GetVehicleNumberPlateText(veh), 250.0, false)
            TaskWarpPedIntoVehicle(PlayerPedId(), veh, -1)
            SetVehicleEngineOn(veh, true, true)
            plaquevehicule = GetVehicleNumberPlateText(veh)
        end, coords, true)
        InService = true
        DrawTarget()
        AddCancelBlip()
        ownsVan = true
        TriggerServerEvent("RoutePizza:TakeDeposit")
    end
end

-- Garaz
Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        if Hired then
            local ped = PlayerPedId()
            local pos = GetEntityCoords(ped)
            local dist = GetDistanceBetweenCoords(pos, Config.ZonesUber.Vehicle.Pos.x, Config.ZonesUber.Vehicle.Pos.y, Config.ZonesUber.Vehicle.Pos.z, true)
            if dist <= 2.5 then
                local GaragePos = {
                    ["x"] = Config.ZonesUber.Vehicle.Pos.x,
                    ["y"] = Config.ZonesUber.Vehicle.Pos.y,
                    ["z"] = Config.ZonesUber.Vehicle.Pos.z + 1
                }
                if dist <= 15.0 then
				DrawMarker(0, Config.ZonesUber.Vehicle.Pos.x, Config.ZonesUber.Vehicle.Pos.y, Config.ZonesUber.Vehicle.Pos.z, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.5, 0.5, 0.5, 255, 204, 0, 222, false, false, false, true, false, false, false)
					if dist <= 2.0 then
					exports["ilfr-context"]:Help("Appuyez sur ~INPUT_CONTEXT~ pour effectuer des livraisons pour Noodle Exchange")
                    if IsControlJustReleased(0, 46) then
                        PullOutVehicle()
                    end
					end
                end
            end
        end
    end
end)

-------------------
-- Target Search --
-------------------

function DrawTarget()
    local RandomPoint = math.random(1, 16)
    if DeliveriesCount == 4 then
        exports['ilfr-core']:SendAdvanced({
							message = 'Vous avez livré(e) les pizzas, vous pouvez retourner à CluckingBell.',
							title = 'Notification',
							subject = 'Livreur',
							icon = 'CHAR_LIVREUR_PIZZA',
							})
        RemoveCancelBlip()
        SetBlipRoute(BlipSell, false)
        AddFinnishBlip()
        Delivered = true
				xxx = nil
				yyy = nil
				zzz = nil
    else
      local pizza = 4 - DeliveriesCount
      if pizza == 1 then
        exports['ilfr-core']:SendAdvanced({
							message = 'Il vous reste encore une livraison à faire',
							title = 'Notification',
							subject = 'Livreur',
							icon = 'CHAR_LIVREUR_PIZZA',
							})
      else
        if pizza == 4 then
          pizza = '4'
        elseif pizza == 3 then
          pizza = '3'
        elseif pizza == 2 then
          pizza = '1'
        end
        exports['ilfr-core']:SendAdvanced({
							message = 'Vous avez ' ..pizza.. ' pizzas à livrer.',
							title = 'Notification',
							subject = 'Livreur',
							icon = 'CHAR_LIVREUR_PIZZA',
							})
      end
        if LastGoal == RandomPoint then
            DrawTarget()
        else
            if RandomPoint == 1 then
								xxx =-1445.43 --
								yyy =1196.42
								zzz =21.39
                LastGoal = 1
            elseif RandomPoint == 2 then
								xxx =-1383.76 --
								yyy =1940.19
								zzz =23.29
                LastGoal = 2
            elseif RandomPoint == 3 then
								xxx =-1527.67 --
								yyy =1539.23
								zzz =25.45
                LastGoal = 3
            elseif RandomPoint == 4 then
								xxx =-1706.47 --
								yyy =1227.73
								zzz =27.39
                LastGoal = 4
            elseif RandomPoint == 5 then
								xxx =-1519.95 --
								yyy =1193.76
								zzz =25.45
                LastGoal = 5
            elseif RandomPoint == 6 then
								xxx =-482.04 --
								yyy =668.2
								zzz =7.85
                LastGoal = 6
            elseif RandomPoint == 7 then
								xxx =47.74 --
								yyy =1965.29
								zzz =16.66
                LastGoal = 7
            elseif RandomPoint == 8 then
								xxx =-319.14 --
								yyy =2378.8
								zzz =22.11
                LastGoal = 8
            elseif RandomPoint == 9 then
								xxx =741.01 --
								yyy =2578.41
								zzz =37.77
                LastGoal = 9
            elseif RandomPoint == 10 then
								xxx =138.37
								yyy =736.33
								zzz =14.82
                LastGoal = 10
            elseif RandomPoint == 11 then -- zrobione
								xxx =633.46
								yyy =2431.06
								zzz =27.97
                LastGoal = 11
            elseif RandomPoint == 12 then
								xxx =1687.4 --
								yyy =1317.19
								zzz =29.16
                LastGoal = 12
            elseif RandomPoint == 13 then
								xxx =1056.61 --
								yyy =576.45
								zzz =21.74
                LastGoal = 13
            elseif RandomPoint == 14 then
								xxx =976.82 --
								yyy =932.93
								zzz =36.8
                LastGoal = 14
            elseif RandomPoint == 15 then
								xxx =1244.31 --
								yyy =1313.69
								zzz =29.04
                LastGoal = 15
            elseif RandomPoint == 16 then
								xxx =1236.33 --
								yyy =1540.03
								zzz =38.9
                LastGoal = 16
            end
		    AddObjBlip(TargetPos)
        end
    end
end

--------------------
-- Creating Blips --
--------------------

-- Blip celu podrózy
function AddObjBlip(TargetPos)
    Blipy['obj'] = AddBlipForCoord(xxx, yyy, zzz)
    SetBlipRoute(Blipy['obj'], true)
	BeginTextCommandSetBlipName("STRING")
	AddTextComponentString('Livraison à effectuer')
	EndTextCommandSetBlipName(Blipy['obj'])
end

-- Blip anulowania pracy
function AddCancelBlip()
    Blipy['cancel'] = AddBlipForCoord(-1419.94, 1461.13, 19.57) 
		SetBlipColour(Blipy['cancel'], 59)
	BeginTextCommandSetBlipName("STRING")
	AddTextComponentString('Arrêter de livrer')
	EndTextCommandSetBlipName(Blipy['cancel'])
end

-- Blip zakonczenia pracy
function AddFinnishBlip()
    Blipy['end'] = AddBlipForCoord(-1419.94, 1461.13, 19.57)
		SetBlipColour(Blipy['end'], 2)
    SetBlipRoute(Blipy['end'], true)
	BeginTextCommandSetBlipName("STRING")
	AddTextComponentString('Récupérer votre caution')
	EndTextCommandSetBlipName(Blipy['end'])
end

------------------
-- Delete Blips --
------------------

function RemoveBlipObj()
    RemoveBlip(Blipy['obj'])
end

function RemoveCancelBlip()
    RemoveBlip(Blipy['cancel'])
end

function RemoveAllBlips()
    RemoveBlip(Blipy['obj'])
    RemoveBlip(Blipy['cancel'])
    RemoveBlip(Blipy['end'])
end

-------------------
-- DELIVERY AREA --
-------------------

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(4)
        local ped = PlayerPedId()
        local pos = GetEntityCoords(ped)
        local dist = GetDistanceBetweenCoords(pos, xxx, yyy, zzz, true)
        if dist <= 20.0 and Hired and (not HasPizza) then
            local DeliveryPoint = {
                ["x"] = xxx,
                ["y"] = yyy,
                ["z"] = zzz
            }
			
            local Vehicle = GetClosestVehicle(pos, 6.0, 0, 70)
            if IsVehicleModel(Vehicle, GetHashKey('faggio2')) then
                local VehPos = GetEntityCoords(Vehicle)
								local distance = GetDistanceBetweenCoords(pos, VehPos, true)
                
				exports["ilfr-context"]:Help("Appuyez sur ~INPUT_CONTEXT~ pour prendre la pizza")
								if dist >= 4 and distance <= 5 then
                	                NearVan = true
								end
            end
        elseif dist <= 25 and HasPizza and Hired then
            local DeliveryPoint = {
                ["x"] = xxx,
                ["y"] = yyy,
                ["z"] = zzz
            }
			DrawMarker(0, DeliveryPoint["x"],DeliveryPoint["y"],DeliveryPoint["z"], 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.5, 0.5, 0.5, 255, 204, 0, 222, false, false, false, true, false, false, false)
            if dist <= 3 then
				exports["ilfr-context"]:Help("Appuyez sur ~INPUT_CONTEXT~ pour livrer la pizza")
                if IsControlJustReleased(0, 46) then
                    TakePizza()
                    DeliverPizza()
                end
            end
        end
    end
end)

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(10)
		if (not HasPizza) and NearVan then
			if IsControlJustReleased(0, 46) then
                TakePizza()
                NearVan = false
			end
		end
	end
end)

-------------------
-- DELIVER PIZZA --
-------------------

function loadAnimDict(dict)
	while ( not HasAnimDictLoaded(dict)) do
		RequestAnimDict(dict)
		Citizen.Wait(0)
	end
end

function TakePizza()
    local player = PlayerPedId()
    if not IsPedInAnyVehicle(player, false) then
        local ad = "anim@heists@box_carry@"
        local prop_name = 'prop_pizza_box_01'
        if ( DoesEntityExist( player ) and not IsEntityDead( player )) then
            loadAnimDict( ad )
            if HasPizza then
                TaskPlayAnim( player, ad, "exit", 3.0, 1.0, -1, 49, 0, 0, 0, 0 )
                DetachEntity(prop, 1, 1)
                DeleteObject(prop)
                Wait(1000)
                ClearPedSecondaryTask(PlayerPedId())
                HasPizza = false
            else
                local x,y,z = table.unpack(GetEntityCoords(player))
                prop = CreateObject(GetHashKey(prop_name), x, y, z+0.2,  true,  true, true)
                AttachEntityToEntity(prop, player, GetPedBoneIndex(player, 60309), 0.2, 0.08, 0.2, -45.0, 290.0, 0.0, true, true, false, true, 1, true)
                TaskPlayAnim( player, ad, "idle", 3.0, -8, -1, 63, 0, 0, 0, 0 )
                HasPizza = true
            end
        end
    end
end

function DeliverPizza()
    if not PizzaDelivered then
        PizzaDelivered = true
        DeliveriesCount = DeliveriesCount + 1
        RemoveBlipObj()
        SetBlipRoute(BlipSell, false)
        HasPizza = false    
        NextDelivery()
        Citizen.Wait(2500)
        PizzaDelivered = false
    end
end

function NextDelivery()
    TriggerServerEvent('RoutePizza:Payment')
    Citizen.Wait(300)
    DrawTarget()
end
-----------------
-- END OF WORK --
-----------------

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(4)
        local ped = PlayerPedId()
        local pos = GetEntityCoords(ped)
        local DistanceFromEndZone = GetDistanceBetweenCoords(pos, -1418.36, 1463.16, 19.57, true) 
        local DistanceFromCancelZone = GetDistanceBetweenCoords(pos, -1418.36, 1463.16, 19.57, true)
        if InService then
            if Delivered then
                if DistanceFromEndZone <= 15.5 then
                    DrawMarker(0, -1418.36, 1463.16, 19.57, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.5, 0.5, 0.5, 255, 204, 0, 222, false, false, false, true, false, false, false)
                    exports["ilfr-context"]:Help("Appuyez sur ~INPUT_CONTEXT~ pour terminer votre mission de livraison")
                    if DistanceFromEndZone <= 7 then
                        if IsControlJustReleased(0, 46) then
                            exports['ilfr-core']:SendAdvanced({
							message = 'Vous avez terminé(e) vos missions de livraison pour le moment, faite une pause pour vous reposer.',
							title = 'Notification',
							subject = 'Livreur',
							icon = 'CHAR_LIVREUR_PIZZA',
							})
                            EndOfWork()
                        end
                    end
                end
            else
                if DistanceFromCancelZone <= 3.5 then
                    DrawMarker(0, -1418.36, 1463.16, 19.57, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.5, 0.5, 0.5, 255, 204, 0, 222, false, false, false, true, false, false, false)
                    exports["ilfr-context"]:Help("Appuyez sur ~INPUT_CONTEXT~ pour annuler votre mission de livraison")
                    if DistanceFromCancelZone <= 7 then
                        if IsControlJustReleased(0, 46) then
                            exports['ilfr-core']:SendAdvanced({
							message = 'Vous avez arrêté(e) de faire vos livraisons de pizzas.',
							title = 'Notification',
							subject = 'Action impossible',
							icon = 'CHAR_LIVREUR_PIZZA',
							})
							EndOfWork()
                        end
                    end
                end
            end
        end
    end
end)

function EndOfWork()
    RemoveAllBlips()
    local ped = PlayerPedId()
    if IsPedInAnyVehicle(ped, false) then
        local Van = GetVehiclePedIsIn(ped, false)
        if IsVehicleModel(Van, GetHashKey('faggio2')) then
            QBCore.Functions.DeleteVehicle(Van)
            if Delivered == true then
                TriggerServerEvent("RoutePizza:ReturnDeposit", 'end')
            end
            InService = false
            BlipSell = nil
            BlipEnd = nil
            BlipCancel = nil
            TargetPos = nil
            HasPizza = false
            LastGoal = nil
            DeliveriesCount = 0
            xxx = nil
            yyy = nil
            zzz = nil
            ownsVan = false
            Delivered = false
        else
            exports['ilfr-core']:SendAdvanced({
							message = 'Vous devez rendre le véhicule pour récupérer la caution.',
							title = 'Notification',
							subject = 'Action impossible',
							icon = 'CHAR_LIVREUR_PIZZA',
							})
        end
    else
        InService = false
        BlipSell = nil
        BlipEnd = nil
        BlipCancel = nil
        TargetPos = nil
        HasPizza = false
        LastGoal = nil
        DeliveriesCount = 0
        xxx = nil
        yyy = nil
        zzz = nil
        ownsVan = false
        Delivered = false
    end
end

----------------------
-- 3D text function --
----------------------
DrawText3Ds = function(x,y,z, text)
    local onScreen,_x,_y=World3dToScreen2d(x,y,z)
	local factor = #text / 370
	local px,py,pz=table.unpack(GetGameplayCamCoords())
	
	SetTextScale(0.35, 0.35)
	SetTextFont(4)
	SetTextProportional(1)
	SetTextColour(255, 255, 255, 215)
	SetTextEntry("STRING")
	SetTextCentre(1)
	AddTextComponentString(text)
	DrawText(_x,_y)
	DrawRect(_x,_y + 0.0125, 0.015 + factor, 0.03, 0, 0, 0, 120)
end