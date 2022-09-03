local QBCore = exports['ilfr-mainserver']:GetCoreObject()
local ItemList = {
    ["pierretraite"] = math.random(10, 20), --cuivre
	["pierretraite2"] = math.random(1, 10), --bronze
	 ["pierretraite3"] = math.random(70, 100), --diamant
	  ["pierretraite4"] = math.random(50, 70), --or
}

RegisterServerEvent("qb-GalliumShop:server:sellDealerItems")
AddEventHandler("qb-GalliumShop:server:sellDealerItems", function()
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
        TriggerClientEvent('QBCore:Notify', src, "Vous avez vendu vos pierres")
    end
end)



QBCore.Functions.CreateCallback('qb-GalliumShop:server:getSellPrice', function(source, cb)
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
