--#ILFRCORE, BY ZIEGELROT-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
--ILFRCORE----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
local QBCore = exports['ilfr-mainserver']:GetCoreObject()
--MISSION NEWPL----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent('ilfr-core:newpl:mission00')
AddEventHandler('ilfr-core:newpl:mission00', function()
local ped = PlayerPedId()
    local pos = GetEntityCoords(ped)
    MairiePlop = AddBlipForCoord(-109.28, 499.83, 17.87) 
    SetBlipSprite(MairiePlop, 1)
    SetBlipDisplay(MairiePlop, 2)
    SetBlipScale(MairiePlop, 1.0)
    SetBlipAsShortRange(MairiePlop, false)
    SetBlipColour(MairiePlop, 5)
    BeginTextCommandSetBlipName("STRING")
	AddTextComponentSubstringPlayerName("Votre mission")
    EndTextCommandSetBlipName(MairiePlop)
    SetBlipRoute(MairiePlop, true)
end)


RegisterNetEvent('ilfr-core:newpl:mission00fin')
AddEventHandler('ilfr-core:newpl:mission00fin', function()
exports['ilfr-core']:SendAdvanced({
						message = 'Vous avez terminé(e) le prologue, d\'autre missions arriverons prochainement ! Profitez-en pour visiter la ville!',
						title = 'Notification',
						subject = 'Campagne solo',
						icon = 'CHAR_MISSION_OK',
							}) 
						TriggerServerEvent('ilfr-core:newpl:mission00finsv')
						RemoveBlip(MairiePlop)
end)
--FONCTION GANG----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent('ilfr-core:newpl:missiongang')
AddEventHandler('ilfr-core:newpl:missiongang', function()
exports['ilfr-core']:SendAdvanced({
						message = "Vous faites désormais partie d'un gang.",
						title = 'Notification',
						subject = 'Information',
						icon = 'CHAR_MISSION_GANG',
							}) 
						TriggerServerEvent('ilfr-core:newpl:missiongangfin')
end)
RegisterNetEvent('ilfr-core:newpl:missiongangnon')
AddEventHandler('ilfr-core:newpl:missiongangnon', function()
exports['ilfr-core']:SendAdvanced({
						message = 'Vous n\'êtes désormais plus dans un gang.',
						title = 'Notification',
						subject = 'Information',
						icon = 'CHAR_MISSION_GANG',
							}) 
						TriggerServerEvent('ilfr-core:newpl:missiongangnonfin')
end)
--MISSION 01----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Les missions ne sont pas encore disponible pendant la phase de beta!
