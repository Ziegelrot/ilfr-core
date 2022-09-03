local QBCore = exports['ilfr-mainserver']:GetCoreObject()
local ItemList = {
    ["heroinleaf"] = "heroinleaf"
}

local DrugList = {
    ["heroinbaggy"] = "heroinbaggy"
}
local ItemList2 = {
    ["cocaineleaf"] = "cocaineleaf"
}

local DrugList2 = {
    ["cocainebaggy"] = "cocainebaggy"
}

RegisterServerEvent('ilfr-heroine:server:grindleaves')
AddEventHandler('ilfr-heroine:server:grindleaves', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local heroinleaf = Player.Functions.GetItemByName('heroinleaf')

    if Player.PlayerData.items ~= nil then 
        for k, v in pairs(Player.PlayerData.items) do 
            if heroinleaf ~= nil then
                if ItemList[Player.PlayerData.items[k].name] ~= nil then 
                    if Player.PlayerData.items[k].name == "heroinleaf" and Player.PlayerData.items[k].amount >= 1 then 
                        Player.Functions.RemoveItem("heroinleaf", 1)
                        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['heroinleaf'], "remove")

                        TriggerClientEvent("ilfr-heroine:client:grindleavesMinigame", src)
                    else
                        TriggerClientEvent("ilfr-core:client:pasderesourcescoke2", src, coke2)
                        break
                    end
                end
            else
                TriggerClientEvent("ilfr-core:client:pasderesourcescoke", src, coke)
                break
            end
        end
    end
end)

RegisterServerEvent('ilfr-heroine:server:grindleaves2')
AddEventHandler('ilfr-heroine:server:grindleaves2', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local heroinleaf2 = Player.Functions.GetItemByName('cocaineleaf')

    if Player.PlayerData.items ~= nil then 
        for k, v in pairs(Player.PlayerData.items) do 
            if heroinleaf2 ~= nil then
                if ItemList2[Player.PlayerData.items[k].name] ~= nil then 
                    if Player.PlayerData.items[k].name == "cocaineleaf" and Player.PlayerData.items[k].amount >= 3 then 
                        Player.Functions.RemoveItem("cocaineleaf", 3)
                        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['cocaineleaf'], "remove")

                        TriggerClientEvent("ilfr-heroine:client:grindleavesMinigame2", src)
                    else
                        TriggerClientEvent("ilfr-core:client:pasderesourcescoke2co", src, coke2)
                        break
                    end
                end
            else
                TriggerClientEvent("ilfr-core:client:pasderesourcescoke", src, coke)
                break
            end
        end
    end
end)


RegisterServerEvent('ilfr-heroine:server:getleaf')
AddEventHandler('ilfr-heroine:server:getleaf', function()
    local Player = QBCore.Functions.GetPlayer(source)
    Player.Functions.AddItem("heroinleaf", 1)
    TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['heroinleaf'], "add")
end)

RegisterServerEvent('ilfr-heroine:server:getleaf2')
AddEventHandler('ilfr-heroine:server:getleaf2', function()
    local Player = QBCore.Functions.GetPlayer(source)
    Player.Functions.AddItem("cocaineleaf", 1)
    TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['cocaineleaf'], "add")
end)

RegisterServerEvent('ilfr-heroine:server:getcoke') 
AddEventHandler('ilfr-heroine:server:getcoke', function()
    local Player = QBCore.Functions.GetPlayer(source)
    Player.Functions.AddItem("cocainebaggy", 1)
    TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['cocainebaggy'], "add")
end)

RegisterServerEvent('ilfr-heroine:server:getcoke2') 
AddEventHandler('ilfr-heroine:server:getcoke2', function()
    local Player = QBCore.Functions.GetPlayer(source)
    Player.Functions.AddItem("heroinbaggy", 2)
    TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['heroinbaggy'], "add")
end)


