local QBCore = exports['ilfr-mainserver']:GetCoreObject()
local PaymentTax = 15
local Bail = {}

RegisterNetEvent('qb-trucker:server:DoBail', function(bool, vehInfo)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)

    if bool then
        if Player.PlayerData.money.cash >= Config.BailPrice then
            Bail[Player.PlayerData.citizenid] = Config.BailPrice
            Player.Functions.RemoveMoney('cash', Config.BailPrice, "tow-received-bail")
            TriggerClientEvent('ilfr-core:client:assurancepl', src, assurancepl)
            TriggerClientEvent('qb-trucker:client:SpawnVehicle', src, vehInfo)
        elseif Player.PlayerData.money.bank >= Config.BailPrice then
            Bail[Player.PlayerData.citizenid] = Config.BailPrice
            Player.Functions.RemoveMoney('bank', Config.BailPrice, "tow-received-bail")
            TriggerClientEvent('ilfr-core:client:assurancepl', src, assurancepl)
            TriggerClientEvent('qb-trucker:client:SpawnVehicle', src, vehInfo)
        else
            TriggerClientEvent('ilfr-core:client:assurancepl2', src, assurancepl2)
        end
    else
        if Bail[Player.PlayerData.citizenid] ~= nil then
            Player.Functions.AddMoney('cash', Bail[Player.PlayerData.citizenid], "trucker-bail-paid")
            Bail[Player.PlayerData.citizenid] = nil
            TriggerClientEvent('ilfr-core:client:assurancepl', src, assurancepl)
        end
    end
end)

RegisterNetEvent('qb-trucker:server:01101110', function(drops)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local drops = tonumber(drops)
    local bonus = 0
    local DropPrice = math.random(20, 60)

    if drops >= 5 then
        bonus = math.ceil((DropPrice / 10) * 5) + 50
    elseif drops >= 10 then
        bonus = math.ceil((DropPrice / 10) * 10) + 60
    elseif drops >= 15 then
        bonus = math.ceil((DropPrice / 10) * 15) + 70
    elseif drops >= 20 then
        bonus = math.ceil((DropPrice / 10) * 20) + 80
    end

    local price = (DropPrice * drops) + bonus
    local taxAmount = math.ceil((price / 100) * PaymentTax)
    local payment = price - taxAmount
    Player.Functions.AddJobReputation(drops)
    Player.Functions.AddMoney("bank", payment, "trucker-salary")
    TriggerClientEvent('ilfr-core:client:assurancepl3', src, assurancepl3)
end)