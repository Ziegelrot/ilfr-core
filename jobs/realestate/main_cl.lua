local QBCore = exports['ilfr-mainserver']:GetCoreObject()
local isLoggedIn = true
local PlayerJob = {}
local onDuty = false

function DrawText3Ds(x, y, z, text)
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


RegisterNetEvent('QBCore:Client:OnPlayerLoaded')
AddEventHandler('QBCore:Client:OnPlayerLoaded', function()
    QBCore.Functions.GetPlayerData(function(PlayerData)
        PlayerJob = PlayerData.job
    end)
end)

RegisterNetEvent('QBCore:Client:OnJobUpdate')
AddEventHandler('QBCore:Client:OnJobUpdate', function(JobInfo)
    PlayerJob = JobInfo
    onDuty = PlayerJob.onduty
end)

RegisterNetEvent('QBCore:Client:SetDuty')
AddEventHandler('QBCore:Client:SetDuty', function(duty)
    onDuty = duty
end)


Citizen.CreateThread(function()
    while true do
        local inRange = false

        if isLoggedIn then
            if PlayerJob.name == "realestate" then
                local pos = GetEntityCoords(PlayerPedId())
                local OnDutyDistance = #(pos - Config.LocationsReal["duty"])
                local VehicleDistance = #(pos - vector3(Config.LocationsReal["vehicle"].x, Config.LocationsReal["vehicle"].y, Config.LocationsReal["vehicle"].z))

                if onDuty then
                    if VehicleDistance < 20 then
                        inRange = true
                        DrawMarker(36, Config.LocationsReal["vehicle"].x, Config.LocationsReal["vehicle"].y, Config.LocationsReal["vehicle"].z, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.7, 0.7, 0.7, 255,255,255, 255, false, false, false, true, false, false, false)
                        if VehicleDistance < 1 then
                            local InVehicle = IsPedInAnyVehicle(PlayerPedId())

                            if InVehicle then
                                exports["ilfr-context"]:Help("Appuyez sur ~INPUT_CONTEXT~ pour stationner le véhicule de l'entreprise")
                                if IsControlJustPressed(0, 38) then
                                    DeleteVehicle(GetVehiclePedIsIn(PlayerPedId()))
                                end
                            else
                                exports["ilfr-context"]:Help("Appuyez sur ~INPUT_CONTEXT~ pour accèder aux véhicules de l'entreprise")
                                if IsControlJustPressed(0, 38) then
                                    if IsControlJustPressed(0, 38) then
                                        EstateMenu()
                                    end
                                end
                            end
                        end
                    end
                end

                if OnDutyDistance < 20 then
                    inRange = true
                    DrawMarker(42, Config.LocationsReal["duty"].x, Config.LocationsReal["duty"].y, Config.LocationsReal["duty"].z, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.5, 0.5, 0.5, 255,255,255, 255, false, false, false, true, false, false, false)

                    if OnDutyDistance < 1 then
                        if onDuty then
                            exports["ilfr-context"]:Help("Appuyez sur ~INPUT_CONTEXT~ pour prendre une journée de repos")
                        else
                            exports["ilfr-context"]:Help("Appuyez sur ~INPUT_CONTEXT~ pour commencer à travailler")
                        end
                        if IsControlJustReleased(0, 38) then
                            TriggerServerEvent("QBCore:ToggleDuty")
                        end
                    end
                end
                if not inRange then
                    Citizen.Wait(1500)
                end
            else
                Citizen.Wait(1500)
            end
        else
            Citizen.Wait(1500)
        end
        Citizen.Wait(3)
    end
end)

function EstateMenu()
    exports['ilfr-menumap']:openMenu({
        {
            header = '🚘 Véhicule de l\'entreprise',
			 txt = "",
            isMenuHeader = true
        },
        {
            header = "Prendre un véhicule de fonction",
            txt = "Emprunter un véhicule de fonction",
            params = {
                event = "qb-realestatejob:client:VehicleList"
            }
        },
        {
            header = '❌ Retour en arrière',
            txt = "",
            params = {
                event = "ilfr-menumap:closeMenu"
            }
        },
    })
end

RegisterNetEvent("qb-realestatejob:client:VehicleList", function()
    local VehicleList = {
        {
            header = "Liste des véhicules disponibles",
            isMenuHeader = true
        },
    }
    for k, v in pairs(Config.VehiclesReal) do
        table.insert(VehicleList, {
            header = v,
            txt = "Prendre ce véhicule",
            params = {
                event = "qb-realestatejob:client:SpawnListVehicle",
                args = k
            }
        })
    end
    table.insert(VehicleList, {
        header = '❌ Retour en arrière',
        txt = "",
        params = {
            event = "ilfr-menumap:closeMenu",
        }
    })
    exports['ilfr-menumap']:openMenu(VehicleList)
end)

RegisterNetEvent("qb-realestatejob:client:SpawnListVehicle", function(model)
    
    local coords = {
        x = Config.LocationsReal["vehicle"].x,
        y = Config.LocationsReal["vehicle"].y,
        z = Config.LocationsReal["vehicle"].z,
        w = Config.LocationsReal["vehicle"].w,
    }
    QBCore.Functions.SpawnVehicle(model, function(veh)
        SetVehicleNumberPlateText(veh, "DYNASTY"..tostring(math.random(1000, 9999)))
        SetEntityHeading(veh, coords.w)
        SetVehicleColours(veh, 12, 12)
        exports['LegacyFuel']:SetFuel(veh, 100.0)
        TaskWarpPedIntoVehicle(PlayerPedId(), veh, -1)
        TriggerEvent("vehiclekeys:client:SetOwner", GetVehicleNumberPlateText(veh))
        SetVehicleEngineOn(veh, true, true)
    end, coords, true)
end)


