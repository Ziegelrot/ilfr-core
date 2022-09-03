--#ILFRCORE, BY ZIEGELROT--
local QBCore = exports['ilfr-mainserver']:GetCoreObject()
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--Paieloop-----------------------------------------------------------------------------------------------------------
RegisterNetEvent('ilfr-core:server:pallier0', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	Player.Functions.AddMoney("bank", 15)
end)
RegisterNetEvent('ilfr-core:server:pallier1', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	Player.Functions.AddMoney("bank", 75)
end)
RegisterNetEvent('ilfr-core:server:pallier2', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src) 
	Player.Functions.AddMoney("bank", 125)
end)
RegisterNetEvent('ilfr-core:server:pallier3', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	Player.Functions.AddMoney("bank", 175)
end)
RegisterNetEvent('ilfr-core:server:pallier4', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	Player.Functions.AddMoney("bank", 225)
end)
RegisterNetEvent('ilfr-core:server:pallier5', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	Player.Functions.AddMoney("bank", 350)
end)
RegisterNetEvent('ilfr-core:server:payercoiffeur', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	if Player.Functions.RemoveMoney("cash", 17500) then
	TriggerClientEvent("qb-clothing:client:openOutfitpaye", source)
	else
	TriggerClientEvent("ilfr-core:notification:pasdargent", source)
	end
end)
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--Commandslist----------------------------------------------------------------------------------------------------
QBCore.Commands.Add('chat', 'Affiche un message 3D', {{name = 'message', help = 'Message à écrire'}}, false, function(source, args)
    local src = source
    local ped = GetPlayerPed(src)
    local pCoords = GetEntityCoords(ped)
    local msg = table.concat(args, ' ')
    if msg == '' then return end
    for k,v in pairs(QBCore.Functions.GetPlayers()) do
        local target = GetPlayerPed(v)
        local tCoords = GetEntityCoords(target)
        if #(pCoords - tCoords) < 20 then
            TriggerClientEvent('QBCore:Command:ShowMe3D', v, src, msg)
        end
    end
end, 'user')
QBCore.Commands.Add('cash', 'Affiche votre liquide', {}, false, function(source, _)
    local Player = QBCore.Functions.GetPlayer(source)
    local cashamount = Player.PlayerData.money.cash
    TriggerClientEvent('hud:client:ShowAccounts', source, 'cash', cashamount)
end)
RegisterNetEvent('ilfr-core:newpl:velo')
AddEventHandler('ilfr-core:newpl:velo', function()
local src = source
local Player = QBCore.Functions.GetPlayer(src)
local Velo = Player.PlayerData.metadata["velo"]
TriggerClientEvent("ilfr-core:newpl:velocl", src)
Player.Functions.SetMetaData("velo", amoi)
end)
RegisterNetEvent('ilfr-core:newpl:velosave')
AddEventHandler('ilfr-core:newpl:velosave', function()
TriggerClientEvent("ilfr-admin:client:SaveCarVelo", source)
TriggerClientEvent("ilfr-core:notification:velonewpl", source)
end)
RegisterNetEvent('ilfr-core:depan:caution')
AddEventHandler('ilfr-core:depan:caution', function()
local src = source
local Player = QBCore.Functions.GetPlayer(src)
Player.Functions.RemoveMoney("bank", 750)
end)
RegisterNetEvent('ilfr-core:police:armurerie')
AddEventHandler('ilfr-core:police:armurerie', function()
TriggerClientEvent("qb-police:client:openArmoury", source)
end)
RegisterNetEvent('ilfr-core:coffre:maison')
AddEventHandler('ilfr-core:coffre:maison', function()
TriggerClientEvent("qb-houses:client:setLocation", source)
TriggerClientEvent("ilfr-core:notification:maisoncoffre", source)
end)
RegisterNetEvent('ilfr-core:clef:maison')
AddEventHandler('ilfr-core:clef:maison', function()
TriggerClientEvent("qb-houses:client:giveHouseKey", source)
end)
RegisterNetEvent('ilfr-core:ouvrircoffre:maison')
AddEventHandler('ilfr-core:ouvrircoffre:maison', function()
TriggerClientEvent("qb-houses:client:OpenStash", source)
end)
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--Pay 'n' spray----------------------------------------------------------------------------------------------------
RegisterNetEvent('ilfr-core:server:paynspray', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	if Player.Functions.RemoveMoney("Cash", 100) then
	TriggerClientEvent("ilfr-core:plate:paynspray", src)
	Player.Functions.AddItem("licenseplate", 1)
	TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['licenseplate'], "add")
	else
	TriggerClientEvent("ilfr-core:client:pasargentpaynspray", src)
	end
end)
RegisterNetEvent('ilfr-core:server:paynspray2', function()
    local src = source
	TriggerClientEvent("ilfr-core:client:pasargentpaynspray2", src)
end)
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------