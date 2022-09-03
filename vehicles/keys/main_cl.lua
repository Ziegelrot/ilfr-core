-- Variables

local QBCore = exports['ilfr-mainserver']:GetCoreObject()
local HasVehicleKey = false
local IsRobbing = false
local IsHotwiring = false
local AlertSend = false
local lockpicked = false
local lockpickedPlate = nil
local usingAdvanced

-- Functions

local function loadAnimDict(dict)
    while (not HasAnimDictLoaded(dict)) do
        RequestAnimDict(dict)
        Wait(0)
    end
end

local function HasVehicleKey(plate)
	QBCore.Functions.TriggerCallback('vehiclekeys:server:CheckHasKey', function(result)
		if result then
			HasVehicleKey = true
		else
			HasVehicleKey = false
		end
	end, plate)
	return HasVehicleKey
end

local function LockVehicle()
    local ped = PlayerPedId()
    local pos = GetEntityCoords(ped)
    local veh = QBCore.Functions.GetClosestVehicle(pos)
    local plate = QBCore.Functions.GetPlate(veh)
    local vehpos = GetEntityCoords(veh)
    if IsPedInAnyVehicle(ped) then
        veh = GetVehiclePedIsIn(ped)
    end
    if veh ~= nil and #(pos - vehpos) < 7.5 then
        QBCore.Functions.TriggerCallback('vehiclekeys:server:CheckHasKey', function(result)
            if result then
                local vehLockStatus = GetVehicleDoorLockStatus(veh)
                loadAnimDict("anim@mp_player_intmenu@key_fob@")
                TaskPlayAnim(ped, 'anim@mp_player_intmenu@key_fob@', 'fob_click', 3.0, 3.0, -1, 49, 0, false, false,
                    false)

                if vehLockStatus == 1 then
                    Wait(750)
                    ClearPedTasks(ped)
                    TriggerServerEvent("InteractSound_SV:PlayWithinDistance", 5, "lock", 0.3)
                    SetVehicleDoorsLocked(veh, 2)
                    if (GetVehicleDoorLockStatus(veh) == 2) then
                        SetVehicleLights(veh, 2)
                        Wait(250)
                        SetVehicleLights(veh, 1)
                        Wait(200)
                        SetVehicleLights(veh, 0)
                        exports['ilfr-core']:SendAdvanced({
						message = 'Le véhicule est ~r~verrouillé~w~.',
						title = 'Notification',
						subject = 'Véhicule',
						icon = 'CAR_LOCK',
							})
                    else
                        exports['ilfr-core']:SendAdvanced({
						message = 'Impossible d\'ouvrir le véhicule.',
						title = 'Notification',
						subject = 'Véhicule',
						icon = 'CAR_LOCK',
							})
                    end
                else
                    Wait(750)
                    ClearPedTasks(ped)
                    TriggerServerEvent("InteractSound_SV:PlayWithinDistance", 5, "unlock", 0.3)
                    SetVehicleDoorsLocked(veh, 1)
                    if (GetVehicleDoorLockStatus(veh) == 1) then
                        SetVehicleLights(veh, 2)
                        Wait(250)
                        SetVehicleLights(veh, 1)
                        Wait(200)
                        SetVehicleLights(veh, 0)
                        exports['ilfr-core']:SendAdvanced({
						message = 'Le véhicule est ~g~déverrouillé~w~.',
						title = 'Notification',
						subject = 'Véhicule',
						icon = 'CAR_LOCK',
							})
                    else
                        exports['ilfr-core']:SendAdvanced({
						message = 'Impossible d\'ouvrir le véhicule.',
						title = 'Notification',
						subject = 'Véhicule',
						icon = 'CAR_LOCK',
							})
                    end
                end
            else
                exports['ilfr-core']:SendAdvanced({
						message = 'Impossible d\'ouvrir le véhicule, vous n\'avez pas les clefs.',
						title = 'Notification',
						subject = 'Véhicule',
						icon = 'CAR_LOCK',
							})
            end
        end, plate)
    end
end

local function GetNearbyPed()
    local retval = nil
    local PlayerPeds = {}
    for _, player in ipairs(GetActivePlayers()) do
        local ped = GetPlayerPed(player)
        PlayerPeds[#PlayerPeds+1] = ped
    end
    local player = PlayerPedId()
    local coords = GetEntityCoords(player)
    local closestPed, closestDistance = QBCore.Functions.GetClosestPed(coords, PlayerPeds)
    if not IsEntityDead(closestPed) and closestDistance < 30.0 then
        retval = closestPed
    end
    return retval
end

local function PoliceCall()
    if not AlertSend then
        local ped = PlayerPedId()
        local pos = GetEntityCoords(ped)
        local chance = Config.PoliceAlertChance
        if GetClockHours() >= 1 and GetClockHours() <= 6 then
            chance = Config.PoliceNightAlertChance
        end
        if math.random() <= chance then
            local closestPed = GetNearbyPed()
            if closestPed ~= nil then
                local msg = ""
                local s1, s2 = GetStreetNameAtCoord(pos.x, pos.y, pos.z)
                local streetLabel = GetStreetNameFromHashKey(s1)
                local street2 = GetStreetNameFromHashKey(s2)
                if street2 ~= nil and street2 ~= "" then
                    streetLabel = streetLabel .. " " .. street2
                end
                local alertTitle = ""
                if IsPedInAnyVehicle(ped) then
                    local vehicle = GetVehiclePedIsIn(ped, false)
                    local modelName = GetDisplayNameFromVehicleModel(GetEntityModel(vehicle)):lower()
                    if QBCore.Shared.Vehicles[modelName] ~= nil then
                        Name = QBCore.Shared.Vehicles[modelName]["brand"] .. ' ' .. QBCore.Shared.Vehicles[modelName]["name"]
                    else
                        Name = "Unknown"
                    end
                    local modelPlate = QBCore.Functions.GetPlate(vehicle)
                    local msg = "Vehicle theft attempt at " .. streetLabel .. ". Vehicle: " .. Name .. ", Licenseplate: " .. modelPlate
                    local alertTitle = "Vehicle theft attempt at"
                    TriggerServerEvent("police:server:VehicleCall", pos, msg, alertTitle, streetLabel, modelPlate, Name)
                else
                    local vehicle = QBCore.Functions.GetClosestVehicle()
                    local modelName = GetDisplayNameFromVehicleModel(GetEntityModel(vehicle)):lower()
                    local modelPlate = QBCore.Functions.GetPlate(vehicle)
                    if QBCore.Shared.Vehicles[modelName] ~= nil then
                        Name = QBCore.Shared.Vehicles[modelName]["brand"] .. ' ' .. QBCore.Shared.Vehicles[modelName]["name"]
                    else
                        Name = "Unknown"
                    end
                    local msg = "Vehicle theft attempt at " .. streetLabel .. ". Vehicle: " .. Name .. ", Licenseplate: " .. modelPlate
                    local alertTitle = "Vehicle theft attempt at"
                    TriggerServerEvent("police:server:VehicleCall", pos, msg, alertTitle, streetLabel, modelPlate, Name)
                end
            end
        end
        AlertSend = true
        SetTimeout(Config.AlertCooldown, function()
            AlertSend = false
        end)
    end
end

local function lockpickFinish(success)
    local ped = PlayerPedId()
    local pos = GetEntityCoords(ped)
    local vehicle = QBCore.Functions.GetClosestVehicle(pos)
    local chance = math.random()
    if success then
        TriggerServerEvent('hud:server:GainStress', math.random(1, 4))
        exports['ilfr-core']:SendAdvanced({
						message = 'La porte du véhicule est ~g~ouverte~w~ !',
						title = 'Notification',
						subject = 'Véhicule',
						icon = 'CAR_LOCK',
							})
        SetVehicleDoorsLocked(vehicle, 1)
        lockpicked = true
        lockpickedPlate = QBCore.Functions.GetPlate(vehicle)
    else
        PoliceCall()
        TriggerServerEvent('hud:server:GainStress', math.random(1, 4))
        exports['ilfr-core']:SendAdvanced({
						message = 'Un témoin à appelé la police.',
						title = 'Notification',
						subject = 'Alerte',
						icon = 'CHAR_POLICE',
							})
    end
    if usingAdvanced then
        if chance <= Config.RemoveLockpickAdvanced then
            TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items["advancedlockpick"], "remove")
            TriggerServerEvent("QBCore:Server:RemoveItem", "advancedlockpick", 1)
        end
    else
        if chance <= Config.RemoveLockpickNormal then
            TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items["lockpick"], "remove")
            TriggerServerEvent("QBCore:Server:RemoveItem", "lockpick", 1)
        end
    end
end

local function LockpickDoor(isAdvanced)
    local ped = PlayerPedId()
    local pos = GetEntityCoords(ped)
    local vehicle = QBCore.Functions.GetClosestVehicle(pos)
    if vehicle ~= nil and vehicle ~= 0 then
        local vehpos = GetEntityCoords(vehicle)
        if #(pos - vehpos) < 2.5 then
            local vehLockStatus = GetVehicleDoorLockStatus(vehicle)
            if (vehLockStatus > 0) then
                usingAdvanced = isAdvanced
                TriggerEvent('qb-lockpick:client:openLockpick', lockpickFinish)
            end
        end
    end
end

local function Hotwire()
    if not HasVehicleKey then
        local ped = PlayerPedId()
        local vehicle = GetVehiclePedIsIn(ped, true)
        IsHotwiring = true
        lockpickedPlate = nil
        local hotwireTime = math.random(20000, 40000)
        SetVehicleAlarm(vehicle, true)
        SetVehicleAlarmTimeLeft(vehicle, hotwireTime)
        PoliceCall()
        QBCore.Functions.Progressbar("hotwire_vehicle", "Vous êtes occupé(e), veuillez patienter", hotwireTime, false, true, {
            disableMovement = true,
            disableCarMovement = true,
            disableMouse = false,
            disableCombat = true
        }, {
            animDict = "anim@amb@clubhouse@tutorial@bkr_tut_ig3@",
            anim = "machinic_loop_mechandplayer",
            flags = 16
        }, {}, {}, function() -- Done
            StopAnimTask(ped, "anim@amb@clubhouse@tutorial@bkr_tut_ig3@", "machinic_loop_mechandplayer", 1.0)
            if (math.random() <= Config.HotwireChance) then
                lockpicked = false
                TriggerServerEvent('hud:server:GainStress', math.random(1, 4))
                TriggerEvent('vehiclekeys:client:SetOwner', QBCore.Functions.GetPlate(vehicle))
                QBCore.Functions.Notify("Hotwire succeeded!")
            else
                SetVehicleEngineOn(veh, false, false, true)
                TriggerServerEvent('hud:server:GainStress', math.random(1, 4))
                QBCore.Functions.Notify("Hotwire failed!", "error")
            end
            IsHotwiring = false
        end, function() -- Cancel
            StopAnimTask(ped, "anim@amb@clubhouse@tutorial@bkr_tut_ig3@", "machinic_loop_mechandplayer", 1.0)
            SetVehicleEngineOn(veh, false, false, true)
            QBCore.Functions.Notify("Hotwire failed!", "error")
            IsHotwiring = false
        end)
    end
end

local function RobVehicle(target)
    IsRobbing = true
    loadAnimDict('mp_am_hold_up')
    TaskPlayAnim(target, "mp_am_hold_up", "holdup_victim_20s", 8.0, -8.0, -1, 2, 0, false, false, false)
    QBCore.Functions.Progressbar("rob_keys", "Vous êtes occupé(e), veuillez patienter", 6000, false, true, {}, {}, {}, {}, function()
        local chance = math.random()
        if chance <= Config.RobberyChance then
            veh = GetVehiclePedIsUsing(target)
            TaskEveryoneLeaveVehicle(veh)
            Wait(500)
            ClearPedTasksImmediately(target)
            TaskReactAndFleePed(target, PlayerPedId())
            local plate = QBCore.Functions.GetPlate(GetVehiclePedIsIn(target, true))
            TriggerServerEvent('hud:server:GainStress', math.random(1, 4))
            TriggerEvent('vehiclekeys:client:SetOwner', plate)
            exports['ilfr-core']:SendAdvanced({
						message = 'Vous avez les clefs du véhicule.',
						title = 'Notification',
						subject = 'Véhicule',
						icon = 'CAR_LOCK',
							})
            Wait(10000)
            IsRobbing = false
        else
            PoliceCall()
            ClearPedTasks(target)
            TaskReactAndFleePed(target, PlayerPedId())
            TriggerServerEvent('hud:server:GainStress', math.random(1, 4))
            exports['ilfr-core']:SendAdvanced({
						message = 'Un témoin a appelé la police !',
						title = 'Notification',
						subject = 'Véhicule',
						icon = 'CHAR_POLICE',
							})
            Wait(10000)
            IsRobbing = false
        end
    end)
end

local function IsBlacklistedWeapon()
    local weapon = GetSelectedPedWeapon(PlayerPedId())
    if weapon ~= nil then
        for _, v in pairs(Config.NoRobWeapons) do
            if weapon == GetHashKey(v) then
                return true
            end
        end
    end
    return false
end

local function DrawText3D(x, y, z, text)
    SetTextScale(0.35, 0.35)
    SetTextFont(4)
    SetTextProportional(1)
    SetTextColour(255, 255, 255, 215)
    SetTextEntry("STRING")
    SetTextCentre(true)
    AddTextComponentString(text)
    SetDrawOrigin(x, y, z, 0)
    DrawText(0.0, 0.0)
    local factor = (string.len(text)) / 370
    DrawRect(0.0, 0.0 + 0.0125, 0.017 + factor, 0.03, 0, 0, 0, 75)
    ClearDrawOrigin()
end

-- Events

RegisterNetEvent('lockpicks:UseLockpick', function(isAdvanced)
    LockpickDoor(isAdvanced)
end)

RegisterNetEvent('vehiclekeys:client:SetOwner', function(plate)
    local VehPlate = plate
    local CurrentVehPlate = QBCore.Functions.GetPlate(GetVehiclePedIsIn(PlayerPedId(), true))
    if VehPlate == nil then
        VehPlate = CurrentVehPlate
    end
    TriggerServerEvent('vehiclekeys:server:SetVehicleOwner', VehPlate)
    if IsPedInAnyVehicle(PlayerPedId()) and plate == CurrentVehPlate then
        SetVehicleEngineOn(GetVehiclePedIsIn(PlayerPedId(), true), true, false, true)
    end
    HasVehicleKey = true
end)

RegisterNetEvent('vehiclekeys:client:GiveKeys', function(target)
    local vehicles = IsPedInAnyVehicle(PlayerPedId())
    if vehicles then
        local plate = QBCore.Functions.GetPlate(GetVehiclePedIsIn(PlayerPedId(), true))
        TriggerServerEvent('vehiclekeys:server:GiveVehicleKeys', plate, target)
    else
        exports['ilfr-core']:SendAdvanced({
						message = 'Vous devez être dans le véhicule pour donner les clefs.',
						title = 'Notification',
						subject = 'Véhicule',
						icon = 'CAR_LOCK',
							})
    end
end)

RegisterNetEvent('vehiclekeys:client:ToggleEngine', function()
    local EngineOn = IsVehicleEngineOn(GetVehiclePedIsIn(PlayerPedId()))
    local veh = GetVehiclePedIsIn(PlayerPedId(), true)
    if HasVehicleKey then
        if EngineOn then
            SetVehicleEngineOn(veh, false, false, true)
        else
            SetVehicleEngineOn(veh, true, false, true)
        end
    end
end)

-- command

RegisterKeyMapping('togglelocks', 'Toggle Vehicle Locks', 'keyboard', 'L')
RegisterCommand('togglelocks', function()
    LockVehicle()
end)

-- thread

CreateThread(function()
    while true do
        local sleep = 100
        if LocalPlayer.state.isLoggedIn then
            local ped = PlayerPedId()
            local entering = GetVehiclePedIsTryingToEnter(ped)
            if entering ~= 0 and not Entity(entering).state.ignoreLocks then
                sleep = 2000
                local plate = QBCore.Functions.GetPlate(entering)
                QBCore.Functions.TriggerCallback('vehiclekeys:server:CheckOwnership', function(result)
                    if not result then -- if not player owned
                        local driver = GetPedInVehicleSeat(entering, -1)
                        if driver ~= 0 and not IsPedAPlayer(driver) then
                            if Config.Rob then
                                if IsEntityDead(driver) then
                                    TriggerEvent("vehiclekeys:client:SetOwner", plate)
                                    SetVehicleDoorsLocked(entering, 1)
                                    HasVehicleKey = true
                                else
                                    SetVehicleDoorsLocked(entering, 2)
                                end
                            else
                                TriggerEvent("vehiclekeys:client:SetOwner", plate)
                                SetVehicleDoorsLocked(entering, 1)
                                HasVehicleKey = true
                            end
                        else
                            QBCore.Functions.TriggerCallback('vehiclekeys:server:CheckHasKey', function(result)
                                if not lockpicked and lockpickedPlate ~= plate then
                                    if result == false then
                                        SetVehicleDoorsLocked(entering, 2)
                                        HasVehicleKey = false
                                    else 
                                        HasVehicleKey = true
                                    end
                                elseif lockpicked and lockpickedPlate == plate then
                                    if result == false then
                                        HasVehicleKey = false
                                    else 
                                        HasVehicleKey = true
                                    end
                                end
                            end, plate)
                        end
                    end
                end, plate)
            end

            if IsPedInAnyVehicle(ped, false) and lockpicked and not IsHotwiring and not HasVehicleKey then
                sleep = 5
                local veh = GetVehiclePedIsIn(ped)
                local vehpos = GetOffsetFromEntityInWorldCoords(veh, 0.0, 2.0, 1.0)
                SetVehicleEngineOn(veh, false, false, true)
                if GetPedInVehicleSeat(veh, -1) == PlayerPedId() then
                    DrawText3D(vehpos.x, vehpos.y, vehpos.z, "~g~[H]~w~ - Hotwire")
                    if IsControlJustPressed(0, 74) then
                        Hotwire()
                    end
                end
            end

            if Config.Rob then
                if not IsRobbing then
                    local playerid = PlayerId()
                    local aiming, target = GetEntityPlayerIsFreeAimingAt(playerid)
                    if aiming and (target ~= nil and target ~= 0) then
                        if DoesEntityExist(target) and not IsEntityDead(target) and not IsPedAPlayer(target) then
                            if IsPedInAnyVehicle(target, false) then
                                local targetveh = GetVehiclePedIsIn(target)
                                if GetPedInVehicleSeat(targetveh, -1) == target then
                                    if not IsBlacklistedWeapon() then
                                        local pos = GetEntityCoords(ped, true)
                                        local targetpos = GetEntityCoords(target, true)
                                        if #(pos - targetpos) < 5.0 then
                                            RobVehicle(target)
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
        Wait(sleep)
    end
end)
