local QBCore = exports['ilfr-mainserver']:GetCoreObject()

local ItemList = {
    ["pierrenontraite"] = "pierrenontraite"
}

local DrugList = {
    ["pierretraite"] = "pierretraite",
	["pierretraite2"] = "pierretraite2",
	["pierretraite3"] = "pierretraite3",
	["pierretraite4"] = "pierretraite4"
}


RegisterServerEvent('qb-gallium:server:grindleaves')
AddEventHandler('qb-gallium:server:grindleaves', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local pierrenontraite = Player.Functions.GetItemByName('pierrenontraite')

    if Player.PlayerData.items ~= nil then 
        for k, v in pairs(Player.PlayerData.items) do 
            if pierrenontraite ~= nil then
                if ItemList[Player.PlayerData.items[k].name] ~= nil then 
                    if Player.PlayerData.items[k].name == "pierrenontraite" and Player.PlayerData.items[k].amount >= 5 then 
                        Player.Functions.RemoveItem("pierrenontraite", 5)
                        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['pierrenontraite'], "remove")

                        TriggerClientEvent("qb-gallium:client:grindleavesMinigame", src)
                    else
                        TriggerClientEvent('QBCore:Notify', src, "Pour acceder à la fonderie vous devez au moins avoir 5KG à faire fondre", 'error')
                        break
                    end
                end
            else
                TriggerClientEvent('QBCore:Notify', src, "Vous avez pas assez de gallium", 'error')
                break
            end
        end
    end
end)


RegisterServerEvent('qb-gallium:server:getleaf')
AddEventHandler('qb-gallium:server:getleaf', function()
    local Player = QBCore.Functions.GetPlayer(source)
    Player.Functions.AddItem("pierrenontraite", 5)
    TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['pierrenontraite'], "add")
end)

RegisterServerEvent('qb-gallium:server:getgallium')
AddEventHandler('qb-gallium:server:getgallium', function()
    local Player = QBCore.Functions.GetPlayer(source)
    Player.Functions.AddItem("pierretraite", math.random(1, 5))
	TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['pierretraite'], "add")
	Player.Functions.AddItem("pierretraite2", math.random(1, 7))
	TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['pierretraite2'], "add")
	Player.Functions.AddItem("pierretraite3", math.random(1, 2))
	TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['pierretraite3'], "add")
	Player.Functions.AddItem("pierretraite4", math.random(1, 3))
	TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['pierretraite4'], "add") 
    
end)

