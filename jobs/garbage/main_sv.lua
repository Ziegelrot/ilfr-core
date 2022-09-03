local QBCore = exports['ilfr-mainserver']:GetCoreObject()
local Bail = {}

QBCore.Functions.CreateCallback('qb-garbagejob:server:HasMoney', function(source, cb)
    local Player = QBCore.Functions.GetPlayer(source)
    local CitizenId = Player.PlayerData.citizenid

    -- if Player.PlayerData.money.cash >= Config.BailPriceGarbage then
    --     Bail[CitizenId] = "cash"
    --     Player.Functions.RemoveMoney('cash', Config.BailPriceGarbage)
    --     cb(true)
    -- else
        if Player.PlayerData.money.bank >= Config.BailPriceGarbage then
        Bail[CitizenId] = "bank"
        Player.Functions.RemoveMoney('bank', Config.BailPriceGarbage)
        cb(true)
    else
        cb(false)
    end
end)

QBCore.Functions.CreateCallback('qb-garbagejob:server:CheckBail', function(source, cb)
    local Player = QBCore.Functions.GetPlayer(source)
    local CitizenId = Player.PlayerData.citizenid

    if Bail[CitizenId] ~= nil then
        Player.Functions.AddMoney(Bail[CitizenId], Config.BailPriceGarbage)
        Bail[CitizenId] = nil
        cb(true)
    else
        cb(false)
    end
end)

local Materials = {
    "metalscrap",
    "plastic",
    "copper",
    "iron",
    "aluminum",
    "steel",
    "glass",
}


RegisterServerEvent('qb-garbagejob:server:PayShit')
AddEventHandler('qb-garbagejob:server:PayShit', function(amount, location)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)

    if amount > 0 then
        Player.Functions.AddMoney('bank', amount)

        if location == #Config.Locations["trashcan"] then
            for i = 1, math.random(1, 3), 1 do
                local item = Materials[math.random(1, #Materials)]
                Player.Functions.AddItem(item, math.random(4, 7))
                TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[item], 'add')
                Citizen.Wait(500)
            end
        end

        TriggerClientEvent('QBCore:Notify', src, "Vous avez gagné $"..amount..",- sur votre compte", "success")
    else
        TriggerClientEvent('QBCore:Notify', src, "Vous n'avez rien gagné...", "error")
    end
end)