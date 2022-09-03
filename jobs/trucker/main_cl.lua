local QBCore = exports['ilfr-mainserver']:GetCoreObject()
local PlayerJob = {}
local JobsDone = 0
local LocationsDone = {}
local CurrentLocation = nil
local CurrentBlip = nil
local hasBox = false
local isWorking = false
local currentCount = 0
local CurrentPlate = nil
local selectedVeh = nil
local TruckVehBlip = nil
local ThreadAlreadyRan = false

-- Functions

local function hasDoneLocation(locationId)
    local retval = false
    if LocationsDone ~= nil and next(LocationsDone) ~= nil then
        for k, v in pairs(LocationsDone) do
            if v == locationId then
                retval = true
            end
        end
    end
    return retval
end

local function getNextClosestLocation()
    local pos = GetEntityCoords(PlayerPedId(), true)
    local current = 0
    local dist = nil

    for k, _ in pairs(Config.Locations["stores"]) do
        if current ~= 0 then
            if #(pos - vector3(Config.Locations["stores"][k].coords.x, Config.Locations["stores"][k].coords.y, Config.Locations["stores"][k].coords.z)) < dist then
                if not hasDoneLocation(k) then
                    current = k
                    dist = #(pos - vector3(Config.Locations["stores"][k].coords.x, Config.Locations["stores"][k].coords.y, Config.Locations["stores"][k].coords.z))
                end
            end
        else
            if not hasDoneLocation(k) then
                current = k
                dist = #(pos - vector3(Config.Locations["stores"][k].coords.x, Config.Locations["stores"][k].coords.y, Config.Locations["stores"][k].coords.z))
            end
        end
    end

    return current
end

local function getNewLocation()
    local location = getNextClosestLocation()
    if location ~= 0 then
        CurrentLocation = {}
        CurrentLocation.id = location
        CurrentLocation.dropcount = math.random(1, 3)
        CurrentLocation.store = Config.Locations["stores"][location].name
        CurrentLocation.x = Config.Locations["stores"][location].coords.x
        CurrentLocation.y = Config.Locations["stores"][location].coords.y
        CurrentLocation.z = Config.Locations["stores"][location].coords.z

        CurrentBlip = AddBlipForCoord(CurrentLocation.x, CurrentLocation.y, CurrentLocation.z)
        SetBlipColour(CurrentBlip, 5)
        SetBlipRoute(CurrentBlip, true)
        SetBlipRouteColour(CurrentBlip, 5)
    else
        exports['ilfr-core']:SendAdvanced({
						message = 'Vous avez terminé(e) votre journée de travail, revenez à ~g~l\'entreprise~w~ pour recevoir votre commission.',
						title = 'Notification',
						subject = 'Chauffeurs-livreurs',
						icon = 'CHAR_PL',
							})
        if CurrentBlip ~= nil then
            RemoveBlip(CurrentBlip)
	    ClearAllBlipRoutes()
            CurrentBlip = nil
        end
    end
end

local function isTruckerVehicle(vehicle)
    local retval = false
    for k, v in pairs(Config.Vehicles) do
        if GetEntityModel(vehicle) == GetHashKey(k) then
            retval = true
        end
    end
    return retval
end

local function DrawText3D(x, y, z, text)
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

local function RemoveTruckerBlips()
    if TruckVehBlip ~= nil then
        RemoveBlip(TruckVehBlip)
	ClearAllBlipRoutes()
        TruckVehBlip = nil
    end

    if CurrentBlip ~= nil then
        RemoveBlip(CurrentBlip)
	ClearAllBlipRoutes()
        CurrentBlip = nil
    end
end

-- Old Menu Code (being removed)

local function MenuGarage()
    local truckMenu = {
        {
            header = "🚛 Véhicule de l'entreprise",
            isMenuHeader = true
        }
    }
    for k, v in pairs(Config.Vehicles) do
        truckMenu[#truckMenu+1] = {
            header = Config.Vehicles[k],
            params = {
                event = "qb-trucker:client:TakeOutVehicle",
                args = {
                    vehicle = k
                }
            }
        }
    end

    truckMenu[#truckMenu+1] = {
        header = '❌ Retour en arrière',
        txt = "",
        params = {
            event = "qb-menu:client:closeMenu"
        }

    }
    exports['ilfr-menumap']:openMenu(truckMenu)
end


local function CloseMenuFull()
    exports['ilfr-menumap']:closeMenu()
end

-- Events

RegisterNetEvent('qb-trucker:client:SpawnVehicle', function()
    local vehicleInfo = selectedVeh
    local coords = Config.Locations["vehicle"].coords
    coords = vector3(coords.x, coords.y, coords.z)
    local ped = PlayerPedId()
    local pos = GetEntityCoords(ped)
    if #(pos - coords) <= 15 then
        QBCore.Functions.SpawnVehicle(vehicleInfo, function(veh)
            SetVehicleNumberPlateText(veh, "PL"..tostring(math.random(1000, 9999)))
            SetEntityHeading(veh, coords.w)
            exports['LegacyFuel']:SetFuel(veh, 100.0)
            CloseMenuFull()
            TaskWarpPedIntoVehicle(PlayerPedId(), veh, -1)
            SetEntityAsMissionEntity(veh, true, true)
            TriggerEvent("vehiclekeys:client:SetOwner", QBCore.Functions.GetPlate(veh))
            SetVehicleEngineOn(veh, true, true)
            CurrentPlate = QBCore.Functions.GetPlate(veh)
            getNewLocation()
        end, coords, true)
    else
        exports['ilfr-core']:SendAdvanced({
						message = 'Vous êtes trop loin.',
						title = 'Notification',
						subject = 'Chauffeurs-livreurs',
						icon = 'CHAR_PL',
							})
    end

end)

RegisterNetEvent('QBCore:Client:OnPlayerLoaded', function()
    PlayerJob = QBCore.Functions.GetPlayerData().job
    CurrentLocation = nil
    CurrentBlip = nil
    hasBox = false
    isWorking = false
    JobsDone = 0

    if PlayerJob.name == "trucker" then
    RunWorkThread()
    end
end)

RegisterNetEvent('QBCore:Client:OnPlayerUnload', function()
    RemoveTruckerBlips()
    CurrentLocation = nil
    CurrentBlip = nil
    hasBox = false
    isWorking = false
    JobsDone = 0
end)

RegisterNetEvent('QBCore:Client:OnJobUpdate', function(JobInfo)
    local OldPlayerJob = PlayerJob.name
    PlayerJob = JobInfo

    if PlayerJob.name == "trucker" then
        RunWorkThread()
    elseif OldPlayerJob == "trucker" then
        RemoveTruckerBlips()
    end
end)

RegisterNetEvent('qb-trucker:client:TakeOutVehicle', function(data)
    local coords = Config.Locations["vehicle"].coords
    coords = vector3(coords.x, coords.y, coords.z)
    local ped = PlayerPedId()
    local pos = GetEntityCoords(ped)
    if #(pos - coords) <= 15 then
        local vehicleInfo = data.vehicle
        TriggerServerEvent('qb-trucker:server:DoBail', true, vehicleInfo)
        selectedVeh = vehicleInfo
    else
        exports['ilfr-core']:SendAdvanced({
						message = 'Vous êtes trop loin.',
						title = 'Notification',
						subject = 'Chauffeurs-livreurs',
						icon = 'CHAR_PL',
							})
    end
end)

RegisterNetEvent('qb-trucker:client:SelectVehicle', function()
    local coords = Config.Locations["vehicle"].coords
    coords = vector3(coords.x, coords.y, coords.z)
    local ped = PlayerPedId()
    local pos = GetEntityCoords(ped)

    if #(pos - coords) <= 10 then
        MenuGarage()
    else
        exports['ilfr-core']:SendAdvanced({
						message = 'Vous êtes trop loin.',
						title = 'Notification',
						subject = 'Chauffeurs-livreurs',
						icon = 'CHAR_PL',
							})
    end
end)

-- Threads
function RunWorkThread()
    if not ThreadAlreadyRan then
        ThreadAlreadyRan = true
        CreateThread(function()
            local shownHeader = false
            local TruckerBlip = AddBlipForCoord(Config.Locations["main"].coords.x, Config.Locations["main"].coords.y, Config.Locations["main"].coords.z)
            SetBlipSprite(TruckerBlip, 108)
            SetBlipDisplay(TruckerBlip, 4)
            SetBlipScale(TruckerBlip, 0.5)
            SetBlipAsShortRange(TruckerBlip, true)
            SetBlipColour(TruckerBlip, 5)
            BeginTextCommandSetBlipName("STRING")
            AddTextComponentSubstringPlayerName(Config.Locations["main"].label)
            EndTextCommandSetBlipName(TruckerBlip)

            while LocalPlayer.state.isLoggedIn and PlayerJob.name == "trucker" do
                local sleep = 1000
                local pos = GetEntityCoords(PlayerPedId())
                local vehicleCoords = vector3(Config.Locations["vehicle"].coords.x, Config.Locations["vehicle"].coords.y, Config.Locations["vehicle"].coords.z)
                local mainCoords = vector3(Config.Locations["main"].coords.x, Config.Locations["main"].coords.y, Config.Locations["main"].coords.z)

                if IsControlJustReleased(0, 178) then
                    if IsPedInAnyVehicle(PlayerPedId()) and isTruckerVehicle(GetVehiclePedIsIn(PlayerPedId(), false)) then
                        getNewLocation()
                        CurrentPlate = QBCore.Functions.GetPlate(GetVehiclePedIsIn(PlayerPedId(), false))
                    end
                end

                if #(pos - vehicleCoords) <= 25.0 then
                    local x = vehicleCoords.x
                    local y = vehicleCoords.y
                    local z = vehicleCoords.z

                   
                    if #(pos - vehicleCoords) <= 15.0 then
                        if IsPedInAnyVehicle(PlayerPedId(), false) then
						
                        exports["ilfr-context"]:Help("Appuyez sur ~INPUT_CONTEXT~ pour stationner le véhicule de l\'entreprise et récuperer la caution de l'assurance")    
                       DrawMarker(39, x,y,z+2.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.7, 0.7, 0.7, 255, 204, 0, 222, false, false, false, true, false, false, false)
                        end

                        if IsControlJustReleased(0, 38) then
                            if IsPedInAnyVehicle(PlayerPedId(), false) then
                                if GetPedInVehicleSeat(GetVehiclePedIsIn(PlayerPedId()), -1) == PlayerPedId() then
                                    if isTruckerVehicle(GetVehiclePedIsIn(PlayerPedId(), false)) then
                                        DeleteVehicle(GetVehiclePedIsIn(PlayerPedId()))
                                        TriggerServerEvent('qb-trucker:server:DoBail', false)
                                    else
                                        exports['ilfr-core']:SendAdvanced({
										message = '~r~Ce véhicule n\'appartient pas à l\'entreprise~w~.',
										title = 'Notification',
										subject = 'Chauffeurs-livreurs',
										icon = 'CHAR_PL',
							})
                                    end
                                else
                                    exports['ilfr-core']:SendAdvanced({
										message = '~r~Vous devez être le conducteur pour faire cette action~w~.',
										title = 'Notification',
										subject = 'Chauffeurs-livreurs',
										icon = 'CHAR_PL',
							})
                                end
                            end
                        end
                    end
                    sleep = 3
                else
                    if shownHeader then
                        shownHeader = false
                        exports['ilfr-menumap']:closeMenu()
                    end
                end

                if #(pos - mainCoords) < 10.0 then
				
                    if #(pos - mainCoords) < 10.0 then
                        local x = mainCoords.x
                        local y = mainCoords.y
                        local z = mainCoords.z
						DrawMarker(29, x,y,z, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.7, 0.7, 0.7, 255, 204, 0, 222, false, false, false, true, false, false, false)
						
						if #(pos - mainCoords) < 1.5 then
                        exports["ilfr-context"]:Help("Appuyez sur ~INPUT_CONTEXT~ pour récupérer votre commission")
						end
                        if IsControlJustReleased(0, 38) then
                            if JobsDone > 0 then
                                TriggerServerEvent("qb-trucker:server:01101110", JobsDone)
                                JobsDone = 0
                                if #LocationsDone == #Config.Locations["stores"] then
                                    LocationsDone = {}
                                end
                                if CurrentBlip ~= nil then
                                    RemoveBlip(CurrentBlip)
                                    ClearAllBlipRoutes()
                                    CurrentBlip = nil
                                end
                            else
								exports['ilfr-core']:SendAdvanced({
										message = '~r~Vous n\'avez pas encore travaillé(e)~w~.',
										title = 'Notification',
										subject = 'Chauffeurs-livreurs',
										icon = 'CHAR_PL',
							})
                            end
                        end
                    elseif #(pos - mainCoords) < 2.5 then
                        DrawMarker(29, x,y,z, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.7, 0.7, 0.7, 255, 204, 0, 222, false, false, false, true, false, false, false)
                    end
                    sleep = 3
                end

                if CurrentLocation ~= nil  and currentCount < CurrentLocation.dropcount then
                    if #(pos - vector3(CurrentLocation.x, CurrentLocation.y, CurrentLocation.z)) < 40.0 and not IsPedInAnyVehicle(PlayerPedId()) then
                        sleep = 3
                        if not hasBox then
                            local vehicle = GetVehiclePedIsIn(PlayerPedId(), true)
                            if isTruckerVehicle(vehicle) and CurrentPlate == QBCore.Functions.GetPlate(vehicle) then
                                local trunkpos = GetOffsetFromEntityInWorldCoords(vehicle, 0, -7.0, 0)
                                if #(pos - vector3(trunkpos.x, trunkpos.y, trunkpos.z)) < 3.5 and not isWorking then
								DrawMarker(30, trunkpos.x, trunkpos.y, trunkpos.z, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.7, 0.7, 0.7, 255, 204, 0, 222, false, false, false, true, false, false, false)
                                    exports["ilfr-context"]:Help("Appuyez sur ~INPUT_CONTEXT~ pour récupérer les produits à l'arrière du camion", trunkpos.x, trunkpos.y, trunkpos.z)
                                    if IsControlJustReleased(0, 38) then
                                        isWorking = true
                                        QBCore.Functions.Progressbar("work_carrybox", "Vous êtes occupé(e), veuillez patienter", 5000, false, true, {
                                            disableMovement = true,
                                            disableCarMovement = true,
                                            disableMouse = false,
                                            disableCombat = true,
                                        }, {
                                            animDict = "anim@gangops@facility@servers@",
                                            anim = "hotwire",
                                            flags = 16,
                                        }, {}, {}, function() -- Done
                                            isWorking = false
                                            StopAnimTask(PlayerPedId(), "anim@gangops@facility@servers@", "hotwire", 1.0)
                                            TriggerEvent('animations:client:EmoteCommandStart', {"box"})
                                            hasBox = true
                                        end, function() -- Cancel
                                            isWorking = false
                                            StopAnimTask(PlayerPedId(), "anim@gangops@facility@servers@", "hotwire", 1.0)
                                            exports['ilfr-core']:SendAdvanced({
										message = '~r~Vous avez annulé(e) l\'action~w~.',
										title = 'Notification',
										subject = 'Chauffeurs-livreurs',
										icon = 'CHAR_PL',
							})
                                        end)
                                    end
                                
                                end
                            end
                        elseif hasBox then
                            if #(pos - vector3(CurrentLocation.x, CurrentLocation.y, CurrentLocation.z)) < 1.5 and not isWorking then
								DrawMarker(30, CurrentLocation.x, CurrentLocation.y, CurrentLocation.z, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.7, 0.7, 0.7, 255, 204, 0, 222, false, false, false, true, false, false, false)
								exports["ilfr-context"]:Help("Appuyez sur ~INPUT_CONTEXT~ pour livrer les produits", CurrentLocation.x, CurrentLocation.y, CurrentLocation.z)
                                if IsControlJustReleased(0, 38) then
                                    isWorking = true
                                    TriggerEvent('animations:client:EmoteCommandStart', {"c"})
                                    Wait(500)
                                    TriggerEvent('animations:client:EmoteCommandStart', {"bumbin"})
                                    QBCore.Functions.Progressbar("work_dropbox", "Vous êtes occupé(e), veuillez patienter", 6000, false, true, {
                                        disableMovement = true,
                                        disableCarMovement = true,
                                        disableMouse = false,
                                        disableCombat = true,
                                    }, {}, {}, {}, function() -- Done
                                        isWorking = false
                                        ClearPedTasks(PlayerPedId())
                                        hasBox = false
                                        currentCount = currentCount + 1
                                        if currentCount == CurrentLocation.dropcount then
                                            LocationsDone[#LocationsDone+1] = CurrentLocation.id
                                            TriggerServerEvent("qb-shops:server:RestockShopItems", CurrentLocation.store)
                                            exports['ilfr-core']:SendAdvanced({
										message = 'Vous avez ~g~délivré(e) les produits~w~, vous pouvez continuer votre livraison.',
										title = 'Notification',
										subject = 'Chauffeurs-livreurs',
										icon = 'CHAR_PL',
										})
                                            
                                            if CurrentBlip ~= nil then
                                                RemoveBlip(CurrentBlip)
                                                ClearAllBlipRoutes()
                                                CurrentBlip = nil
                                            end
                                            CurrentLocation = nil
                                            currentCount = 0
                                            JobsDone = JobsDone + 1
                                            getNewLocation()
                                        end
                                    end, function() -- Cancel
                                        isWorking = false
                                        ClearPedTasks(PlayerPedId())
                                        exports['ilfr-core']:SendAdvanced({
										message = '~r~Vous avez annulé(e) l\'action~w~.',
										title = 'Notification',
										subject = 'Chauffeurs-livreurs',
										icon = 'CHAR_PL',
										})
                                    end)
                                end
                            else
								DrawMarker(30, CurrentLocation.x, CurrentLocation.y, CurrentLocation.z, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.7, 0.7, 0.7, 255, 204, 0, 222, false, false, false, true, false, false, false)
                            end
                        end
                    end
                end

                Wait(sleep)
            end

            ThreadAlreadyRan = false
        end)
    end
end