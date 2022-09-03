local QBCore = exports['ilfr-mainserver']:GetCoreObject()
local PlayerJob = {}
local JobsDone = 0
local NpcOn = false
local CurrentLocation = {}
local CurrentBlip = nil
local LastVehicle = 0
local VehicleSpawned = false
local selectedVeh = nil
local ranWorkThread = false

-- Functions

local function getRandomVehicleLocation()
    local randomVehicle = math.random(1, #Config.LocationsTow["towspots"])
    while (randomVehicle == LastVehicle) do
        Wait(10)
        randomVehicle = math.random(1, #Config.LocationsTow["towspots"])
    end
    return randomVehicle
end

local function deliverVehicle(vehicle)
    DeleteVehicle(vehicle)
    RemoveBlip(CurrentBlip2)
    JobsDone = JobsDone + 1
    VehicleSpawned = false
	exports['ilfr-core']:SendAdvanced({
	message = 'Vous avez ~g~remorqué(e)~w~ le véhicule.',
	title = 'Notification',
	subject = 'Dépanneur',
	icon = 'CHAR_DEPAN',
	})
	exports['ilfr-core']:SendAdvanced({
	message = 'Un ~g~nouveau~w~ véhicule à remorquer est affiché sur votre ~g~GPS~w~.',
	title = 'Notification',
	subject = 'Dépanneur',
	icon = 'CHAR_DEPAN',
	})
    local randomLocation = getRandomVehicleLocation()
    CurrentLocation.x = Config.LocationsTow["towspots"][randomLocation].coords.x
    CurrentLocation.y = Config.LocationsTow["towspots"][randomLocation].coords.y
    CurrentLocation.z = Config.LocationsTow["towspots"][randomLocation].coords.z
    CurrentLocation.model = Config.LocationsTow["towspots"][randomLocation].model
    CurrentLocation.id = randomLocation

    CurrentBlip = AddBlipForCoord(CurrentLocation.x, CurrentLocation.y, CurrentLocation.z)
    SetBlipColour(CurrentBlip, 5)
    SetBlipRoute(CurrentBlip, true)
    SetBlipRouteColour(CurrentBlip, 5)
end

local function getVehicleInDirection(coordFrom, coordTo)
	local rayHandle = CastRayPointToPoint(coordFrom.x, coordFrom.y, coordFrom.z, coordTo.x, coordTo.y, coordTo.z, 10, PlayerPedId(), 0)
	local a, b, c, d, vehicle = GetRaycastResult(rayHandle)
	return vehicle
end

local function isTowVehicle(vehicle)
    local retval = false
    for k, v in pairs(Config.VehiclesTow) do
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

local function doCarDamage(currentVehicle)
	local smash = false
	local damageOutside = false
	local damageOutside2 = false
	local engine = 199.0
	local body = 149.0
	if engine < 200.0 then
		engine = 200.0
    end

    if engine  > 1000.0 then
        engine = 950.0
    end

	if body < 150.0 then
		body = 150.0
	end
	if body < 950.0 then
		smash = true
	end

	if body < 920.0 then
		damageOutside = true
	end

	if body < 920.0 then
		damageOutside2 = true
	end

    Wait(100)
    SetVehicleEngineHealth(currentVehicle, engine)
	if smash then
		SmashVehicleWindow(currentVehicle, 0)
		SmashVehicleWindow(currentVehicle, 1)
		SmashVehicleWindow(currentVehicle, 2)
		SmashVehicleWindow(currentVehicle, 3)
		SmashVehicleWindow(currentVehicle, 4)
	end
	if damageOutside then
		SetVehicleDoorBroken(currentVehicle, 1, true)
		SetVehicleDoorBroken(currentVehicle, 6, true)
		SetVehicleDoorBroken(currentVehicle, 4, true)
	end
	if damageOutside2 then
		SetVehicleTyreBurst(currentVehicle, 1, false, 990.0)
		SetVehicleTyreBurst(currentVehicle, 2, false, 990.0)
		SetVehicleTyreBurst(currentVehicle, 3, false, 990.0)
		SetVehicleTyreBurst(currentVehicle, 4, false, 990.0)
	end
	if body < 1000 then
		SetVehicleBodyHealth(currentVehicle, 985.1)
	end
end

-- Old Menu Code (being removed)

local function MenuGarage()
    local towMenu = {
        {
            header = "🚚 Véhicule de l'entreprise",
            isMenuHeader = true
        }
    }
    for k, v in pairs(Config.VehiclesTow) do
        towMenu[#towMenu+1] = {
            header = Config.VehiclesTow[k],
            params = {
                event = "qb-tow:client:TakeOutVehicle",
                args = {
                    vehicle = k
                }
            }
        }
    end

    towMenu[#towMenu+1] = {
        header = '❌ Retour en arrière',
        txt = "",
        params = {
            event = "qb-menu:client:closeMenu"
        }

    }
    exports['ilfr-menumap']:openMenu(towMenu)
end

local function CloseMenuFull()
    exports['ilfr-menumap']:closeMenu()
end

-- Events

RegisterNetEvent('qb-tow:client:SpawnVehicle', function()
    local vehicleInfo = selectedVeh
    local coords = Config.LocationsTow["vehicle"].coords
    QBCore.Functions.SpawnVehicle(vehicleInfo, function(veh)
        SetVehicleNumberPlateText(veh, "LCDC"..tostring(math.random(1000, 9999)))
        SetEntityHeading(veh, coords.w)
        exports['LegacyFuel']:SetFuel(veh, 100.0)
        SetEntityAsMissionEntity(veh, true, true)
        CloseMenuFull()
        TaskWarpPedIntoVehicle(PlayerPedId(), veh, -1)
        TriggerEvent("vehiclekeys:client:SetOwner", QBCore.Functions.GetPlate(veh))
        SetVehicleEngineOn(veh, true, true)
        for i = 1, 9, 1 do
            SetVehicleExtra(veh, i, 0)
        end
    end, coords, true)
end)

RegisterNetEvent('QBCore:Client:OnPlayerLoaded', function()
    PlayerJob = QBCore.Functions.GetPlayerData().job

    if PlayerJob.name == "tow" then
        
        RunWorkThread()
    end
end)

RegisterNetEvent('QBCore:Client:OnJobUpdate', function(JobInfo)
    PlayerJob = JobInfo

    if PlayerJob.name == "tow" then
        
        RunWorkThread()
    end
end)

RegisterNetEvent('jobs:client:ToggleNpc', function()
    if QBCore.Functions.GetPlayerData().job.name == "tow" then
        if CurrentTow ~= nil then
            exports['ilfr-core']:SendAdvanced({
						message = 'Terminer votre ~r~dépannage~w~ avant d\'entreprendre autre chose.',
						title = 'Notification',
						subject = 'Dépanneur',
						icon = 'CHAR_DEPAN',
							})
            return
        end
        NpcOn = not NpcOn
        if NpcOn then
            local randomLocation = getRandomVehicleLocation()
            CurrentLocation.x = Config.LocationsTow["towspots"][randomLocation].coords.x
            CurrentLocation.y = Config.LocationsTow["towspots"][randomLocation].coords.y
            CurrentLocation.z = Config.LocationsTow["towspots"][randomLocation].coords.z
            CurrentLocation.model = Config.LocationsTow["towspots"][randomLocation].model
            CurrentLocation.id = randomLocation

            CurrentBlip = AddBlipForCoord(CurrentLocation.x, CurrentLocation.y, CurrentLocation.z)
            SetBlipColour(CurrentBlip, 5)
            SetBlipRoute(CurrentBlip, true)
            SetBlipRouteColour(CurrentBlip, 5)
        else
            if DoesBlipExist(CurrentBlip) then
                RemoveBlip(CurrentBlip)
                CurrentLocation = {}
                CurrentBlip = nil
            end
            VehicleSpawned = false
        end
    end
end)

RegisterNetEvent('qb-tow:client:TowVehicle', function()
    local vehicle = GetVehiclePedIsIn(PlayerPedId(), true)
    if isTowVehicle(vehicle) then
        if CurrentTow == nil then
            local playerped = PlayerPedId()
            local coordA = GetEntityCoords(playerped, 1)
            local coordB = GetOffsetFromEntityInWorldCoords(playerped, 0.0, 5.0, 0.0)
            local targetVehicle = getVehicleInDirection(coordA, coordB)

            if NpcOn and CurrentLocation ~= nil then
                if GetEntityModel(targetVehicle) ~= GetHashKey(CurrentLocation.model) then
                    exports['ilfr-core']:SendAdvanced({
						message = 'Ce n\'est pas le bon véhicule ou vous êtes pas assez proche.',
						title = 'Notification',
						subject = 'Dépanneur',
						icon = 'CHAR_DEPAN',
							})
                    return
                end
            end
            if not IsPedInAnyVehicle(PlayerPedId()) then
                if vehicle ~= targetVehicle then
                    NetworkRequestControlOfEntity(targetVehicle)
                    local towPos = GetEntityCoords(vehicle)
                    local targetPos = GetEntityCoords(targetVehicle)
                    if #(towPos - targetPos) < 11.0 then
                        QBCore.Functions.Progressbar("towing_vehicle", "Vous êtes occupé(e), veuillez patienter", 10000, false, true, {
                            disableMovement = true,
                            disableCarMovement = true,
                            disableMouse = false,
                            disableCombat = true,
                        }, {
                            animDict = "mini@repair",
                            anim = "fixing_a_ped",
                            flags = 16,
                        }, {}, {}, function() -- Done
                            StopAnimTask(PlayerPedId(), "mini@repair", "fixing_a_ped", 1.0)
                            AttachEntityToEntity(targetVehicle, vehicle, GetEntityBoneIndexByName(vehicle, 'bodyshell'), 0.0, -1.5 + -0.85, 0.0 + 0.80, 0, 0, 0, 1, 1, 0, 1, 0, 1)
                            FreezeEntityPosition(targetVehicle, true)
                            CurrentTow = targetVehicle
                            if NpcOn then
                                RemoveBlip(CurrentBlip)
                                exports['ilfr-core']:SendAdvanced({
								message = 'Amenez le ~r~véhicule~w~ à la ~r~fourrière~w~.',
								title = 'Notification',
								subject = 'Dépanneur',
								icon = 'CHAR_DEPAN',
							})
                                CurrentBlip2 = AddBlipForCoord(-236.74, 2239.67, 8.14)
                                SetBlipColour(CurrentBlip2, 5)
                                SetBlipRoute(CurrentBlip2, true)
                                SetBlipRouteColour(CurrentBlip2, 5)
                            end
                            exports['ilfr-core']:SendAdvanced({
								message = 'Le véhicule est désormais ~g~remorqué~w~.',
								title = 'Notification',
								subject = 'Dépanneur',
								icon = 'CHAR_DEPAN',
							})
                        end, function() -- Cancel
                            StopAnimTask(PlayerPedId(), "mini@repair", "fixing_a_ped", 1.0)
                            exports['ilfr-core']:SendAdvanced({
								message = 'Vous n\'avez ~r~pas réussi~w~ à remorquer le véhicule.',
								title = 'Notification',
								subject = 'Dépanneur',
								icon = 'CHAR_DEPAN',
							})
                        end)
                    end
                end
            end
        else
            QBCore.Functions.Progressbar("untowing_vehicle", "Vous êtes occupé(e), veuillez patienter", 10000, false, true, {
                disableMovement = true,
                disableCarMovement = true,
                disableMouse = false,
                disableCombat = true,
            }, {
                animDict = "mini@repair",
                anim = "fixing_a_ped",
                flags = 16,
            }, {}, {}, function() -- Done
                StopAnimTask(PlayerPedId(), "mini@repair", "fixing_a_ped", 1.0)
                FreezeEntityPosition(CurrentTow, false)
                Wait(250)
                AttachEntityToEntity(CurrentTow, vehicle, 20, -0.0, -15.0, 1.0, 0.0, 0.0, 0.0, false, false, false, false, 20, true)
                DetachEntity(CurrentTow, true, true)
                if NpcOn then
                    local targetPos = GetEntityCoords(CurrentTow)
                    if #(targetPos - vector3(Config.LocationsTow["vehicle"].coords.x, Config.LocationsTow["vehicle"].coords.y, Config.LocationsTow["vehicle"].coords.z)) < 25.0 then
                        deliverVehicle(CurrentTow)
                    end
                end
                CurrentTow = nil
            end, function() -- Cancel
                StopAnimTask(PlayerPedId(), "mini@repair", "fixing_a_ped", 1.0)
                exports['ilfr-core']:SendAdvanced({
								message = 'Vous n\'avez ~r~pas réussi~w~ à décrocher le véhicule.',
								title = 'Notification',
								subject = 'Dépanneur',
								icon = 'CHAR_DEPAN',
							})
            end)
        end
    else
       exports['ilfr-core']:SendAdvanced({
								message = 'Vous devez d\'abord être monté(e) dans votre véhicule de ~g~dépannage~w~ pour faire cette action.',
								title = 'Notification',
								subject = 'Dépanneur',
								icon = 'CHAR_DEPAN',
							})
    end
end)

RegisterNetEvent('qb-tow:client:TakeOutVehicle', function(data)
    local coords = Config.LocationsTow["vehicle"].coords
    coords = vector3(coords.x, coords.y, coords.z)
    local ped = PlayerPedId()
    local pos = GetEntityCoords(ped)
    
        local vehicleInfo = data.vehicle
        TriggerServerEvent('qb-tow:server:DoBail', true, vehicleInfo)
        selectedVeh = vehicleInfo
    
end)

RegisterNetEvent('qb-tow:client:SelectVehicle', function()
        MenuGarage()
end)

-- Threads
function RunWorkThread()
    if not ranWorkThread then
        ranWorkThread = true

        CreateThread(function()
            local shownHeader = false

            while LocalPlayer.state.isLoggedIn and PlayerJob.name == "tow" do
                local sleep = 1000
                local pos = GetEntityCoords(PlayerPedId())
                local vehicleCoords = vector3(Config.LocationsTow["vehicle"].coords.x, Config.LocationsTow["vehicle"].coords.y, Config.LocationsTow["vehicle"].coords.z)
                local mainCoords = vector3(Config.LocationsTow["main"].coords.x, Config.LocationsTow["main"].coords.y, Config.LocationsTow["main"].coords.z)

                if #(pos - vehicleCoords) <= 15 then
                    local x = vehicleCoords.x
                    local y = vehicleCoords.y
                    local z = vehicleCoords.z

                   
                    if #(pos - vehicleCoords) < 14.5 then
                        if IsPedInAnyVehicle(PlayerPedId(), false) then
							 DrawMarker(36, x,y,z , 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.7, 0.7, 0.7, 0, 153, 153, 222, false, false, false, true, false, false, false)
                            exports["ilfr-context"]:Help("Appuyez sur ~INPUT_CONTEXT~ pour stationner le véhicule de l'entreprise")
                        end

                        if IsControlJustReleased(0, 38) then
                            if IsPedInAnyVehicle(PlayerPedId(), false) then
                                DeleteVehicle(GetVehiclePedIsIn(PlayerPedId()))
                                TriggerServerEvent('qb-tow:server:DoBail', false)
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
					
                    if #(pos - mainCoords) < 1.5 then
                        local x = mainCoords.x
                        local y = mainCoords.y
                        local z = mainCoords.z
						exports["ilfr-context"]:Help("Appuyez sur ~INPUT_CONTEXT~ pour récupérer votre commission")
                        DrawMarker(29, x,y,z , 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.7, 0.7, 0.7, 0, 153, 153, 222, false, false, false, true, false, false, false)
                        if IsControlJustReleased(0, 38) then
                            if JobsDone > 0 then
                                RemoveBlip(CurrentBlip)
                                TriggerServerEvent("qb-tow:server:11101110", JobsDone)
                                JobsDone = 0
                                NpcOn = false
                            else
                                exports['ilfr-core']:SendAdvanced({
										message = 'Vous n\'avez ~r~pas~w~ encore travaillé(e).',
										title = 'Notification',
										subject = 'Dépanneur',
										icon = 'CHAR_DEPAN',
							})
                            end
                        end
                    elseif #(pos - mainCoords) < 15.0 then
                        local x = mainCoords.x
                        local y = mainCoords.y
                        local z = mainCoords.z
                        DrawMarker(29, x,y,z , 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.7, 0.7, 0.7, 0, 153, 153, 222, false, false, false, true, false, false, false)
                    end
                    sleep = 3
                end

                if NpcOn and CurrentLocation ~= nil and next(CurrentLocation) ~= nil then
                    if #(pos - vector3(CurrentLocation.x, CurrentLocation.y, CurrentLocation.z)) < 50.0 and not VehicleSpawned then
                        VehicleSpawned = true
                        QBCore.Functions.SpawnVehicle(CurrentLocation.model, function(veh)
                            exports['LegacyFuel']:SetFuel(veh, 0.0)
                            if math.random(1,2) == 1 then
                                doCarDamage(veh)
                            end
                        end, CurrentLocation, true)
                    end
                    sleep = 5
                end

                Wait(sleep)
            end
        end)

        ranWorkThread = false
    end
end