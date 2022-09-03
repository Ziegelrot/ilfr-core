local QBCore = exports['ilfr-mainserver']:GetCoreObject()
local PaymentTax = 15
local Bail = {}

RegisterNetEvent('qb-tow:server:DoBail', function(bool, vehInfo)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if bool then
        if Player.PlayerData.money.cash >= Config.BailPriceTow then
            Bail[Player.PlayerData.citizenid] = Config.BailPriceTow
            Player.Functions.RemoveMoney('cash', Config.BailPriceTow, "tow-paid-bail")
            TriggerClientEvent('ilfr-core:client:depan01', src, depan01)
            TriggerClientEvent('qb-tow:client:SpawnVehicle', src, vehInfo)
        elseif Player.PlayerData.money.bank >= Config.BailPriceTow then
            Bail[Player.PlayerData.citizenid] = Config.BailPriceTow
            Player.Functions.RemoveMoney('bank', Config.BailPriceTow, "tow-paid-bail")
            TriggerClientEvent('ilfr-core:client:depan01', src, depan01)
            TriggerClientEvent('qb-tow:client:SpawnVehicle', src, vehInfo)
        else
            TriggerClientEvent('ilfr-core:client:cautiontropchere', src, cautiontropchere)
        end
    else
        if Bail[Player.PlayerData.citizenid] ~= nil then
            Player.Functions.AddMoney('bank', Bail[Player.PlayerData.citizenid], "tow-bail-paid")
            Bail[Player.PlayerData.citizenid] = nil
            TriggerClientEvent('ilfr-core:client:cautionrendu', src, cautionrendu)
        end
    end
end)

RegisterNetEvent('qb-tow:server:11101110', function(drops)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local drops = tonumber(drops)
    local bonus = 0
    local DropPrice = math.random(80, 160)
    if drops > 5 then
        bonus = math.ceil((DropPrice / 10) * 5)
    elseif drops > 10 then
        bonus = math.ceil((DropPrice / 10) * 7)
    elseif drops > 15 then
        bonus = math.ceil((DropPrice / 10) * 10)
    elseif drops > 20 then
        bonus = math.ceil((DropPrice / 10) * 12)
    end
    local price = (DropPrice * drops) + bonus
    local taxAmount = math.ceil((price / 100) * PaymentTax)
    local payment = price - taxAmount

    Player.Functions.AddJobReputation(1)
    Player.Functions.AddMoney("bank", payment, "tow-salary")
    TriggerClientEvent('ilfr-core:client:assurancedl', src, assurancedl)
end)

QBCore.Commands.Add("npc", "Active les missions d'intérim", {}, false, function(source, args)
	TriggerClientEvent("jobs:client:ToggleNpc", source)
end)

QBCore.Commands.Add("tow", "Remorque le véhicule d'une personne", {}, false, function(source, args)
    local Player = QBCore.Functions.GetPlayer(source)
    if Player.PlayerData.job.name == "tow"  or Player.PlayerData.job.name == "mechanic" then
        TriggerClientEvent("qb-tow:client:TowVehicle", source)
    end
end)