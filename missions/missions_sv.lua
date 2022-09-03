--#ILFRCORE, BY ZIEGELROT------------------------------------------------------------------------------------------------------------------------------------------------------------------------

--ILFRCORE----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
local QBCore = exports['ilfr-mainserver']:GetCoreObject()

--MISSION NEWPL----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent('ilfr-core:newpl:mission00finsv')
AddEventHandler('ilfr-core:newpl:mission00finsv', function()
local src = source
local Player = QBCore.Functions.GetPlayer(src)
local MissionRep = Player.PlayerData.metadata["missionrep"]
Player.Functions.SetMetaData('missionrep', (MissionRep + 1))
end)
RegisterNetEvent('ilfr-core:newpl:missiongangfin')
AddEventHandler('ilfr-core:newpl:missiongangfin', function()
local src = source
local Player = QBCore.Functions.GetPlayer(src)
local GangRep = Player.PlayerData.metadata["gangrep"]
Player.Functions.SetMetaData('gangrep', (GangRep + 1))
end)
RegisterNetEvent('ilfr-core:newpl:missiongangnonfin')
AddEventHandler('ilfr-core:newpl:missiongangnonfin', function()
local src = source
local Player = QBCore.Functions.GetPlayer(src)
local GangRep = Player.PlayerData.metadata["gangrep"]
Player.Functions.SetMetaData('gangrep', (GangRep - 1))
end)
--MISSION 01----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Les missions ne sont pas encore disponible pendant la phase de beta!
