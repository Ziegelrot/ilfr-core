--#ILFRSKINS, BY ZIEGELROT--

--ILFRCORE LOCAL----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
local QBCore = exports['ilfr-mainserver']:GetCoreObject()
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

--ITEM INVENTAIRE---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------
RegisterNetEvent('items:client:tabletteilfros', function()
	TriggerEvent('animations:client:EmoteCommandStart', {"tablet2"})
	ExecuteCommand('ilfrosmenuopennative')
end)

RegisterNetEvent('items:client:tablettelcid', function()
	ExecuteCommand('ilfrcommandexecutemdt')
end)

RegisterNetEvent('items:client:micro', function()
	ExecuteCommand('newsmic')
end)

RegisterNetEvent('items:client:camerapress', function()
	ExecuteCommand('newscam')
end)

RegisterNetEvent('items:client:perche', function()
	ExecuteCommand('newsbmic')
end)

RegisterNetEvent('ilfr-core:coffre:maisonclient', function()
	TriggerServerEvent("ilfr-core:coffre:maison")
end)

RegisterNetEvent('items:client:laptop', function()
	TriggerEvent('animations:client:EmoteCommandStart', {"tablet2"})
	ExecuteCommand('ilfrosmenuopennative')
end)


------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------