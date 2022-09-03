local QBCore = exports['ilfr-mainserver']:GetCoreObject()
local isLoggedIn = false
local PlayerJob = {}
local GarbageVehicle = nil
local hasGarbageTruck = false
local hasGarbageBag = false
local GarbageLocation = 0
local DeliveryBlip = nil
local IsWorking = false
local AmountOfBags = 0
local GarbageObject = nil
local EndBlip = nil
local GarbageBlip = nil
local Earnings = 0
local CanTakeBag = true

RegisterNetEvent('QBCore:Client:OnPlayerLoaded')
AddEventHandler('QBCore:Client:OnPlayerLoaded', function()
    isLoggedIn = true
    PlayerJob = QBCore.Functions.GetPlayerData().job
    GarbageVehicle = nil
    hasGarbageTruck = false
    hasGarbageBag = false
    GarbageLocation = 0
    DeliveryBlip = nil
    IsWorking = false
    AmountOfBags = 0
    GarbageObject = nil
    EndBlip = nil
end)

RegisterNetEvent('QBCore:Client:OnJobUpdate')
AddEventHandler('QBCore:Client:OnJobUpdate', function(JobInfo)
    GarbageVehicle = nil
    hasGarbageTruck = false
    hasGarbageBag = false
    GarbageLocation = 0
    DeliveryBlip = nil
    IsWorking = false
    AmountOfBags = 0
    GarbageObject = nil
    EndBlip = nil

    if PlayerJob.name == "garbage" then
        if GarbageBlip ~= nil then
            RemoveBlip(GarbageBlip)
        end
    end

    PlayerJob = JobInfo
end)

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

function DrawText3D2(coords, text)
    SetTextScale(0.35, 0.35)
    SetTextFont(4)
    SetTextProportional(1)
    SetTextColour(255, 255, 255, 215)
    SetTextEntry("STRING")
    SetTextCentre(true)
    AddTextComponentString(text)
    SetDrawOrigin(coords.x,coords.y,coords.z, 0)
    DrawText(0.0, 0.0)
    local factor = (string.len(text)) / 370
    DrawRect(0.0, 0.0+0.0125, 0.017+ factor, 0.03, 0, 0, 0, 75)
    ClearDrawOrigin()
end

function LoadModel(hash)
    RequestModel(hash)
    while not HasModelLoaded(hash) do
        Citizen.Wait(10)
    end
end

function LoadAnimation(dict)
    RequestAnimDict(dict)
	while not HasAnimDictLoaded(dict) do
		Citizen.Wait(10)
	end
end

function BringBackCar()
    local veh = GetVehiclePedIsIn(PlayerPedId())
    DeleteVehicle(veh)
    if EndBlip ~= nil then
        RemoveBlip(EndBlip)
    end
    if DeliveryBlip ~= nil then
        RemoveBlip(DeliveryBlip)
    end
    if Earnings > 0 then
        PayCheckLoop(GarbageLocation)
    end
    GarbageVehicle = nil
    hasGarbageTruck = false
    hasGarbageBag = false
    GarbageLocation = 0
    DeliveryBlip = nil
    IsWorking = false
    AmountOfBags = 0
    GarbageObject = nil
    EndBlip = nil
end

function PayCheckLoop(location)
    Citizen.CreateThread(function()
        while Earnings > 0 do
            local ped = PlayerPedId()
            local pos = GetEntityCoords(ped)
            local coords = Config.LocationsGarbage["paycheck"].coords
            local distance = #(pos - vector3(coords.x, coords.y, coords.z))

            if distance < 20 then
                DrawMarker(2, coords.x, coords.y, coords.z, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.3, 0.2, 0.15, 233, 55, 22, 222, false, false, false, true, false, false, false)
                if distance < 1.5 then
                    exports["ilfr-context"]:Help("Appuyez sur ~INPUT_CONTEXT~ pour récupérer votre salaire")
                    if IsControlJustPressed(0, 38) then
                        TriggerServerEvent('qb-garbagejob:server:PayShit', Earnings, location)
                        Earnings = 0
                    end
                elseif distance < 5 then
                    DrawText3D(coords.x, coords.y, coords.z, "Fiche de paie")
                end
            end

            Citizen.Wait(1)
        end
    end)
end

Citizen.CreateThread(function()
    while true do
        local ped = PlayerPedId()
        local pos = GetEntityCoords(ped)
        local spawnplek = Config.LocationsGarbage["vehicle"].label
        local InVehicle = IsPedInAnyVehicle(PlayerPedId(), false)
        local distance = #(pos - vector3(Config.LocationsGarbage["vehicle"].coords.x, Config.LocationsGarbage["vehicle"].coords.y, Config.LocationsGarbage["vehicle"].coords.z))

        if isLoggedIn then
            if PlayerJob.name == "garbage" then
                if distance < 10.0 then
                    DrawMarker(36, Config.LocationsGarbage["vehicle"].coords.x, Config.LocationsGarbage["vehicle"].coords.y, Config.LocationsGarbage["vehicle"].coords.z, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.7, 0.7, 0.7, 0, 153, 153, 222, false, false, false, true, false, false, false)
                    if distance < 1.5 then
                        if InVehicle then
							exports["ilfr-context"]:Help("Appuyez sur ~INPUT_CONTEXT~ pour stationner le véhicule de l'entreprise")
                            if IsControlJustReleased(0, 38) then
                                QBCore.Functions.TriggerCallback('qb-garbagejob:server:CheckBail', function(DidBail)
                                    if DidBail then
                                        BringBackCar()
                                        exports['ilfr-core']:SendAdvanced({
										message = 'La caution de 35$ pour l\'assurance du véhicule vous a été rendu.',
										title = 'Notification',
										subject = 'Éboueur',
										icon = 'CHAR_EBOU',
							})
                                    else
                                        exports['ilfr-core']:SendAdvanced({
										message = 'Vous n\'avez versé(e) aucune caution pour l\'assurance du véhicule.',
										title = 'Notification',
										subject = 'Éboueur',
										icon = 'CHAR_EBOU',
							})
                                    end
                                end)
                            end
                        else
                            exports["ilfr-context"]:Help("Appuyez sur ~INPUT_CONTEXT~ pour prendre le véhicule de l'entreprise")
                            if IsControlJustReleased(0, 38) then
                                QBCore.Functions.TriggerCallback('qb-garbagejob:server:HasMoney', function(HasMoney)
                                    if HasMoney then
                                        local coords = Config.LocationsGarbage["vehicle"].coords
                                        QBCore.Functions.SpawnVehicle("trash2", function(veh)
                                            GarbageVehicle = veh
                                            SetVehicleNumberPlateText(veh, "GARB"..tostring(math.random(1000, 9999)))
                                            SetEntityHeading(veh, coords.w)
                                            exports['LegacyFuel']:SetFuel(veh, 100.0)
                                            TaskWarpPedIntoVehicle(PlayerPedId(), veh, -1)
                                            SetEntityAsMissionEntity(veh, true, true)
                                            TriggerEvent("vehiclekeys:client:SetOwner", GetVehicleNumberPlateText(veh))
                                            SetVehicleEngineOn(veh, true, true)
                                            hasGarbageTruck = true
                                            GarbageLocation = 1
                                            IsWorking = true
                                            SetGarbageRoute()
                                            exports['ilfr-core']:SendAdvanced({
											message = 'La caution de 35$ pour l\'assurance du véhicule a été payé, elle vous sera remboursée une fois le véhicule de l\'entreprise déposé à l\'entrepot.',
											title = 'Notification',
											subject = 'Éboueur',
											icon = 'CHAR_EBOU',
											})
                                        exports['ilfr-core']:SendAdvanced({
										message = 'Vous avez commencé(e) à travailler, l\'emplacement est indiqué sur votre carte.',
										title = 'Notification',
										subject = 'Éboueur',
										icon = 'CHAR_EBOU',
										})
                                        end, coords, true)
                                    else
                                        exports['ilfr-core']:SendAdvanced({
										message = 'Vous n\'avez pas assez d\'argent pour payer la caution de l\'assurance.',
										title = 'Notification',
										subject = 'Éboueur',
										icon = 'CHAR_EBOU',
							})
                                    end
                                end)
                            end
                        end
                    end
                end
            end
        end

        Citizen.Wait(1)
    end
end)

Citizen.CreateThread(function()
    while true do

        local ped = PlayerPedId()
        local pos = GetEntityCoords(ped)
        local inRange = false

        if isLoggedIn then
            if PlayerJob.name == "garbage" then
                if IsWorking then
                    if GarbageLocation ~= 0 then
                        if DeliveryBlip ~= nil then
                            local DeliveryData = Config.LocationsGarbage["trashcan"][GarbageLocation]
                            local Distance = #(pos - vector3(DeliveryData.coords.x, DeliveryData.coords.y, DeliveryData.coords.z))

                            if Distance < 20 or hasGarbageBag then
                                LoadAnimation('missfbi4prepp1')
                                DrawMarker(2, DeliveryData.coords.x, DeliveryData.coords.y, DeliveryData.coords.z, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.3, 0.3, 0.3, 255, 55, 22, 255, false, false, false, false, false, false, false)
                                if not hasGarbageBag then
                                    if CanTakeBag then
                                        if Distance < 1.5 then
                                            exports["ilfr-context"]:Help("Appuyez sur ~INPUT_CONTEXT~ pour prendre le sac poubelle")
                                            if IsControlJustPressed(0, 51) then
                                                if AmountOfBags == 0 then
                                                    -- Randomizes how many bags to deliver
                                                    AmountOfBags = math.random(3, 5)
                                                end
                                                hasGarbageBag = true
                                                TakeAnim()
                                            end
                                        elseif Distance < 10 then
                                            exports["ilfr-context"]:Help("Approchez-vous du sac pour le récupérer")
                                        end
                                    end
                                else
                                    if DoesEntityExist(GarbageVehicle) then
                                        if Distance < 10 then
                                            exports["ilfr-context"]:Help("Déposer le sac à l'arrière du camion poubelle")
                                        end

                                        local Coords = GetOffsetFromEntityInWorldCoords(GarbageVehicle, 0.0, -4.5, 0.0)
                                        local TruckDist = #(pos - Coords)

                                        if TruckDist < 2 then
                                            exports["ilfr-context"]:Help("Appuyez sur ~INPUT_CONTEXT~ pour déposer le sac poubelle dans le camion")
                                            if IsControlJustPressed(0, 51) then
                                                hasGarbageBag = false
                                                local AmountOfLocations = #Config.LocationsGarbage["trashcan"]
                                                -- Checks if you've delivered all the bags
                                                if (AmountOfBags - 1) == 0 then
                                                    -- Delivered all the bags
                                                    Earnings = Earnings + math.random(60, 90)
                                                    if (GarbageLocation + 1) <= AmountOfLocations then
                                                        -- Here he puts your next location and you are not finished working yet.
                                                        GarbageLocation = GarbageLocation + 1
                                                        local chance = math.random(1,100)
                                                        if chance < 26 then
                                                            TriggerServerEvent('qb-garbagejob:server:nano')
                                                        end
                                                        SetGarbageRoute()
														exports['ilfr-core']:SendAdvanced({
														message = "Tous les sacs poubelles sont ramassés, passez à l'emplacement suivant.",
														title = 'Notification',
														subject = 'Éboueur',
														icon = 'CHAR_EBOU',
														})
                                                    else
														exports['ilfr-core']:SendAdvanced({
														message = "Vous avez fini de travailler, retournez à la déchèterie pour récupérer votre salaire.",
														title = 'Notification',
														subject = 'Éboueur',
														icon = 'CHAR_EBOU',
														})
                                                        IsWorking = false
                                                        RemoveBlip(DeliveryBlip)
                                                        SetRouteBack()
                                                    end
                                                    AmountOfBags = 0
                                                    hasGarbageBag = false
                                                else
                                                    -- Didn't deliver all the bags yet
                                                    AmountOfBags = AmountOfBags - 1
                                                    if AmountOfBags > 1 then
                                                        exports['ilfr-core']:SendAdvanced({
														message = "Vous n'avez ~r~pas~w~ fini votre travail.",
														title = 'Notification',
														subject = 'Éboueur',
														icon = 'CHAR_EBOU',
														})
                                                    else
                                                        exports['ilfr-core']:SendAdvanced({
														message = "Vous n'avez ~r~pas~w~ fini votre travail.",
														title = 'Notification',
														subject = 'Éboueur',
														icon = 'CHAR_EBOU',
														})
                                                    end
                                                    hasGarbageBag = false
                                                end
                                                DeliverAnim()
                                            end
                                        elseif TruckDist < 10 then
                                            exports["ilfr-context"]:Help("Déposer le sac poubelle")
                                        end
                                    else
                                        exports["ilfr-context"]:Help("Vous n'avez pas le camion de l'entreprise")
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end

        if not IsWorking then
            Citizen.Wait(1000)
        end

        Citizen.Wait(1)
    end
end)

function SetGarbageRoute()
    local ped = PlayerPedId()
    local pos = GetEntityCoords(ped)
    local CurrentLocation = Config.LocationsGarbage["trashcan"][GarbageLocation]

    if DeliveryBlip ~= nil then
        RemoveBlip(DeliveryBlip)
    end

    DeliveryBlip = AddBlipForCoord(CurrentLocation.coords.x, CurrentLocation.coords.y, CurrentLocation.coords.z)
    SetBlipSprite(DeliveryBlip, 1)
    SetBlipDisplay(DeliveryBlip, 2)
    SetBlipScale(DeliveryBlip, 1.0)
    SetBlipAsShortRange(DeliveryBlip, false)
    SetBlipColour(DeliveryBlip, 46)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentSubstringPlayerName(Config.LocationsGarbage["trashcan"][GarbageLocation].name)
    EndTextCommandSetBlipName(DeliveryBlip)
    SetBlipRoute(DeliveryBlip, true)
end

function SetRouteBack()
    local ped = PlayerPedId()
    local pos = GetEntityCoords(ped)
    local inleverpunt = Config.LocationsGarbage["vehicle"]

    EndBlip = AddBlipForCoord(inleverpunt.coords.x, inleverpunt.coords.y, inleverpunt.coords.z)
    SetBlipSprite(EndBlip, 1)
    SetBlipDisplay(EndBlip, 2)
    SetBlipScale(EndBlip, 1.0)
    SetBlipAsShortRange(EndBlip, false)
    SetBlipColour(EndBlip, 46)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentSubstringPlayerName(Config.LocationsGarbage["vehicle"].name)
    EndTextCommandSetBlipName(EndBlip)
    SetBlipRoute(EndBlip, true)
end

function TakeAnim()
    local ped = PlayerPedId()

    LoadAnimation('missfbi4prepp1')
    TaskPlayAnim(ped, 'missfbi4prepp1', '_bag_walk_garbage_man', 6.0, -6.0, -1, 49, 0, 0, 0, 0)
    GarbageObject = CreateObject(GetHashKey("prop_cs_rub_binbag_01"), 0, 0, 0, true, true, true)
    AttachEntityToEntity(GarbageObject, ped, GetPedBoneIndex(ped, 57005), 0.12, 0.0, -0.05, 220.0, 120.0, 0.0, true, true, false, true, 1, true)

    AnimCheck()
end

function AnimCheck()
    Citizen.CreateThread(function()
        while true do
            local ped = PlayerPedId()

            if hasGarbageBag then
                if not IsEntityPlayingAnim(ped, 'missfbi4prepp1', '_bag_walk_garbage_man', 3) then
                    ClearPedTasksImmediately(ped)
                    LoadAnimation('missfbi4prepp1')
                    TaskPlayAnim(ped, 'missfbi4prepp1', '_bag_walk_garbage_man', 6.0, -6.0, -1, 49, 0, 0, 0, 0)
                end
            else
                break
            end

            Citizen.Wait(200)
        end
    end)
end

function DeliverAnim()
    local ped = PlayerPedId()

    LoadAnimation('missfbi4prepp1')
    TaskPlayAnim(ped, 'missfbi4prepp1', '_bag_throw_garbage_man', 8.0, 8.0, 1100, 48, 0.0, 0, 0, 0)
    FreezeEntityPosition(ped, true)
    SetEntityHeading(ped, GetEntityHeading(GarbageVehicle))
    CanTakeBag = false

    SetTimeout(1250, function()
        DetachEntity(GarbageObject, 1, false)
        DeleteObject(GarbageObject)
        TaskPlayAnim(ped, 'missfbi4prepp1', 'exit', 8.0, 8.0, 1100, 48, 0.0, 0, 0, 0)
        FreezeEntityPosition(ped, false)
        GarbageObject = nil
        CanTakeBag = true
    end)
end

AddEventHandler('onResourceStop', function(resource)
    if GetCurrentResourceName() == resource then
        if GarbageObject ~= nil then
            DeleteEntity(GarbageObject)
            GarbageObject = nil
        end
    end
end)
