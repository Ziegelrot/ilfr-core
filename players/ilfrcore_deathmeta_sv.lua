--#ILFRCORE, BY ZIEGELROT--

--ILFRCORE----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
local QBCore = exports['ilfr-mainserver']:GetCoreObject()
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

--Système d'assurance-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent('ilfr-core:assurance:verification', function()
    local src = source
	local Player = QBCore.Functions.GetPlayer(src) 
	local Assurance = Player.PlayerData.metadata["assurance"]
	local deletecharacter = Player.PlayerData.citizenid
	if Assurance == 0 then
	TriggerClientEvent('ilfr-core:notification:deleteplayers', src)
		MySQL.Async.execute('DELETE FROM players WHERE citizenid = ?', { deletecharacter })
		MySQL.Async.execute('DELETE FROM player_vehicles WHERE citizenid = ?', { deletecharacter })
		MySQL.Async.execute('DELETE FROM player_outfits WHERE citizenid = ?', { deletecharacter })
		MySQL.Async.execute('DELETE FROM player_houses WHERE citizenid = ?', { deletecharacter })
		MySQL.Async.execute('DELETE FROM player_contacts WHERE citizenid =?', { deletecharacter })
		MySQL.Async.execute('DELETE FROM playerskins WHERE citizenid =?', { deletecharacter })
		Citizen.Wait(5000)
		QBCore.Player.Logout(src)
		TriggerClientEvent('qb-multicharacter:client:chooseChar', src)
			elseif Assurance == 1 then
				Player.Functions.RemoveMoney("bank", 10000)
				TriggerClientEvent('ilfr-core:notification:deleteplayers2', src)
				TriggerClientEvent("hospital:client:RespawnAtHospital", src)
			elseif Assurance == 2 then
				TriggerClientEvent('ilfr-core:notification:deleteplayers3', src)
				TriggerClientEvent("hospital:client:RespawnAtHospital", src)
	end
end)
RegisterNetEvent('ilfr-core:assurance:ajouttier', function()
	local src = source
	local Player = QBCore.Functions.GetPlayer(src) 
	local Assurance = Player.PlayerData.metadata["assurance"]
	Player.Functions.RemoveMoney("bank", 50)
	Player.Functions.SetMetaData('assurance', 1)
	TriggerClientEvent('ilfr-core:notification:ajouttier', src)
	Player.Functions.AddItem("assurance", 1)
	TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["assurance"], 'add' )
end)
RegisterNetEvent('ilfr-core:assurance:ajouttoutrisque', function()
	local src = source
	local Player = QBCore.Functions.GetPlayer(src) 
	local Assurance = Player.PlayerData.metadata["assurance"]
	Player.Functions.RemoveMoney("bank", 125)
	Player.Functions.SetMetaData('assurance', 2)
	TriggerClientEvent('ilfr-core:notification:ajouttier2', src)
	Player.Functions.AddItem("assurance", 1)
	TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["assurance"], 'add' )
end)
RegisterNetEvent('ilfr-core:assurance:annuler', function()
	local src = source
	local Player = QBCore.Functions.GetPlayer(src) 
	local Assurance = Player.PlayerData.metadata["assurance"]
	Player.Functions.SetMetaData('assurance', 0)
	TriggerClientEvent('ilfr-core:notification:ajouttier3', src)
end)
RegisterNetEvent('ilfr-core:assurance:paietier', function()
	local src = source
	local Player = QBCore.Functions.GetPlayer(src) 
	local Assurance = Player.PlayerData.metadata["assurance"]
	if Assurance == 1 then
    Player.Functions.RemoveMoney("bank", 20)
	TriggerClientEvent('ilfr-core:notification:paieassurance', src)
	end
end)
RegisterNetEvent('ilfr-core:assurance:paietoutrisque', function()
	local src = source
	local Player = QBCore.Functions.GetPlayer(src) 
	local Assurance = Player.PlayerData.metadata["assurance"]
	if Assurance == 2 then
    Player.Functions.RemoveMoney("bank", 50)
	TriggerClientEvent('ilfr-core:notification:paieassurance', src)
	end
end)
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------