local QBCore = exports['ilfr-mainserver']:GetCoreObject()
local ModdedVehicles = {}
local VehicleStatus = {}
local ClosestPlate = nil
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
    isLoggedIn = true
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
            if PlayerJob.name == "boitedenuit" then
                local pos = GetEntityCoords(PlayerPedId())
                local StashDistance = #(pos - Config.LocationsBDN["stash"])
                local OnDutyDistance = #(pos - Config.LocationsBDN["duty"])  

                if onDuty then
                    if StashDistance < 20 then
                        inRange = true
                        DrawMarker(30, Config.LocationsBDN["stash"].x, Config.LocationsBDN["stash"].y, Config.LocationsBDN["stash"].z, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.7, 0.7, 0.7, 148, 0, 211, 255, false, false, false, true, false, false, false)

                        if StashDistance < 1 then
                           exports["ilfr-context"]:Help("Appuyez sur ~INPUT_CONTEXT~ pour accéder à vos affaires personnelles")
                            if IsControlJustReleased(0, 38) then
                                TriggerEvent("inventory:client:SetCurrentStash", "boitedenuit")
                                TriggerServerEvent('inventory:Server:OpenInventory','boite_de_nuit',{slots=20})
                            end
                        end
                    end
                end

                if OnDutyDistance < 20 then
                    inRange = true
                    DrawMarker(42, Config.LocationsBDN["duty"].x, Config.LocationsBDN["duty"].y, Config.LocationsBDN["duty"].z, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.3, 0.3, 0.3, 148, 0, 211, 255,  false, false, false, true, false, false, false)

                    if OnDutyDistance < 1 then
                        if onDuty then
                            exports["ilfr-context"]:Help("Appuyez sur ~INPUT_CONTEXT~ pour prendre une journée de repos")
                        else
                            exports["ilfr-context"]:Help("Appuyez sur ~INPUT_CONTEXT~ pour commencer à travailer")
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


