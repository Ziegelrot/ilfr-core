--#ILFRCORE, BY ZIEGELROT------------------------------------------------------------------------------------------------------------------------------------------------------------------------

--ILFRCORE----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
local QBCore = exports['ilfr-mainserver']:GetCoreObject()

--Appels des tenues dans l'inventaire------------------------------------------------------------------------------------------------------------------------------------------------------------
QBCore.Functions.CreateUseableItem("tabletteilfros", function(source, item)
    local src = source
    TriggerClientEvent("items:client:tabletteilfros", src)
end)
QBCore.Functions.CreateUseableItem("laptop", function(source, item)
    local src = source
    TriggerClientEvent("items:client:laptop", src)
end)
QBCore.Functions.CreateUseableItem("tenuebag", function(source, item)
    local src = source
    TriggerClientEvent("items:client:sacados", src)
end)
QBCore.Functions.CreateUseableItem("bgmenulight", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Eat", src, item.name)
		Wait(7000)
		TriggerClientEvent("consumables:client:Drink", src, item.name)
    end
end)
QBCore.Functions.CreateUseableItem("contractfacture", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	TriggerClientEvent("ilfr-core:client:amende", src)
end)
QBCore.Functions.CreateUseableItem("bgmenu", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Eat", src, item.name)
		Wait(7000)
		TriggerClientEvent("consumables:client:Drink", src, item.name)
    end
end)
QBCore.Functions.CreateUseableItem("bgmenu2", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Eat", src, item.name)
		Wait(7000)
		TriggerClientEvent("consumables:client:Drink", src, item.name)
    end
end)
QBCore.Functions.CreateUseableItem("bgmenu3", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Eat", src, item.name)
		Wait(7000)
		TriggerClientEvent("consumables:client:Drink", src, item.name)
    end
end)
QBCore.Functions.CreateUseableItem("bgmenu4", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Eat", src, item.name)
		Wait(7000)
		TriggerClientEvent("consumables:client:Drink", src, item.name)
    end
end)
QBCore.Functions.CreateUseableItem("bgmenu5", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Eat", src, item.name)
		Wait(7000)
		TriggerClientEvent("consumables:client:Drink", src, item.name)
    end
end)
QBCore.Functions.CreateUseableItem("bgmenu6", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Eat", src, item.name)
    end
end)
QBCore.Functions.CreateUseableItem("bgmenu7", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Eat", src, item.name)
    end
end)
QBCore.Functions.CreateUseableItem("bgmenu8", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Eat", src, item.name)
    end
end)
QBCore.Functions.CreateUseableItem("bgmenu9", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Eat", src, item.name)
    end
end)
QBCore.Functions.CreateUseableItem("tablettelcidmed", function(source, item)
     local src = source
    TriggerClientEvent("items:client:tablettelcid", src)
end)
QBCore.Functions.CreateUseableItem("tablettelcid", function(source, item)
     local src = source
    TriggerClientEvent("items:client:tablettelcid", src)
end)
QBCore.Functions.CreateUseableItem("tablettelcidjug", function(source, item)
     local src = source
    TriggerClientEvent("items:client:tablettelcid", src)
end)
QBCore.Functions.CreateUseableItem("herse", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent('police:client:SpawnSpikeStrip', src)
    end
end)
QBCore.Functions.CreateUseableItem("micro", function(source, item)
     local src = source
     TriggerClientEvent("items:client:micro", src)
end)
QBCore.Functions.CreateUseableItem("perche", function(source, item)
     local src = source
    TriggerClientEvent("items:client:perche", src)
end)
QBCore.Functions.CreateUseableItem("camerapress", function(source, item)
     local src = source
    TriggerClientEvent("items:client:camerapress", src)
end)
QBCore.Functions.CreateUseableItem("coffremaison", function(source, item)
    local src = source
	local Player = QBCore.Functions.GetPlayer(src)
    if Player.Functions.RemoveItem(item.name, 1, item.slot) then
    TriggerClientEvent('ilfr-core:coffre:maisonclient', src)
    end
end)

RegisterServerEvent('ilfr-inventaire:junkost')
AddEventHandler('ilfr-inventaire:junkost', function()
    local src = source
	local Player = QBCore.Functions.GetPlayer(src)
    TriggerClientEvent('inventory:client:ItemBox', src,  QBCore.Shared.Items["tenuejunko3"], 'add' )
	Player.Functions.AddItem("tenuejunko3", 1, nil)
end)

RegisterServerEvent('ilfr-inventaire:eboueur')
AddEventHandler('ilfr-inventaire:eboueur', function()
    local src = source
	local Player = QBCore.Functions.GetPlayer(src)
    TriggerClientEvent('inventory:client:ItemBox', src,  QBCore.Shared.Items["tenueeboueur"], 'add' )
	Player.Functions.AddItem("tenueeboueur", 1, nil)
end)







