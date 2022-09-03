local QBCore = exports['ilfr-mainserver']:GetCoreObject()
local ItemList = {
    ["cocainebaggy"] = math.random(300, 450),
}
local ItemList2 = {
    ["heroinbaggy"] = math.random(30, 45),
}

RegisterServerEvent("ilfr-heroinedealer:server:sellDealerItems")
AddEventHandler("ilfr-heroinedealer:server:sellDealerItems", function()
    local src = source
    local price = 0
    local Player = QBCore.Functions.GetPlayer(src)
    if Player.PlayerData.items ~= nil and next(Player.PlayerData.items) ~= nil then 
        for k, v in pairs(Player.PlayerData.items) do 
            if Player.PlayerData.items[k] ~= nil then 
                if ItemList[Player.PlayerData.items[k].name] ~= nil then 
                    price = price + (ItemList[Player.PlayerData.items[k].name] * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem(Player.PlayerData.items[k].name, Player.PlayerData.items[k].amount, k)
                    TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items[Player.PlayerData.items[k].name], "remove")
                end
            end
        end
        Player.Functions.AddMoney("cash", price, "sold Dealerable items")
        TriggerClientEvent("ilfr-core:client:ventecoka", src, ventecoka)
    end
end)

RegisterServerEvent("ilfr-heroinedealer:server:sellDealerItems2")
AddEventHandler("ilfr-heroinedealer:server:sellDealerItems2", function()
    local src = source
    local price2 = 0
    local Player = QBCore.Functions.GetPlayer(src)
    if Player.PlayerData.items ~= nil and next(Player.PlayerData.items) ~= nil then 
        for k, v in pairs(Player.PlayerData.items) do 
            if Player.PlayerData.items[k] ~= nil then 
                if ItemList2[Player.PlayerData.items[k].name] ~= nil then 
                    price2 = price2 + (ItemList2[Player.PlayerData.items[k].name] * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem(Player.PlayerData.items[k].name, Player.PlayerData.items[k].amount, k)
                    TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items[Player.PlayerData.items[k].name], "remove")
                end
            end
        end
        Player.Functions.AddMoney("cash", price2, "sold Dealerable items")
        TriggerClientEvent("ilfr-core:client:ventecoka", src, ventecoka)
    end
end)


QBCore.Functions.CreateCallback('ilfr-heroinedealer:server:getSellPrice', function(source, cb)
    local retval = 0
    local Player = QBCore.Functions.GetPlayer(source)
    if Player.PlayerData.items ~= nil and next(Player.PlayerData.items) ~= nil then 
        for k, v in pairs(Player.PlayerData.items) do 
            if Player.PlayerData.items[k] ~= nil then 
                if ItemList[Player.PlayerData.items[k].name] ~= nil then 
                    retval = retval + (ItemList[Player.PlayerData.items[k].name] * Player.PlayerData.items[k].amount)
                end
            end
        end
    end
    cb(retval)
end)

QBCore.Functions.CreateCallback('ilfr-heroinedealer:server:getSellPrice2', function(source, cb)
    local retval2 = 0
    local Player = QBCore.Functions.GetPlayer(source)
    if Player.PlayerData.items ~= nil and next(Player.PlayerData.items) ~= nil then 
        for k, v in pairs(Player.PlayerData.items) do 
            if Player.PlayerData.items[k] ~= nil then 
                if ItemList2[Player.PlayerData.items[k].name] ~= nil then 
                    retval2 = retval2 + (ItemList2[Player.PlayerData.items[k].name] * Player.PlayerData.items[k].amount)
                end
            end
        end
    end
    cb(retval2)
end)

