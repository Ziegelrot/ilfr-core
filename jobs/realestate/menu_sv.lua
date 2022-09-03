local QBCore = exports['ilfr-mainserver']:GetCoreObject()

--Events

RegisterNetEvent('qb-realestate:server:changetier', function(tier, name, hasOwner)
    local src = source
    if hasOwner then
        
        TriggerClientEvent('QBCore:Notify', src, "This house is owned by somebody. Tier cannot be changed")  
    else 
        MySQL.Async.fetchAll('UPDATE houselocations SET tier = ? WHERE name = ?', {tier, name})
        TriggerClientEvent('ilfr-core:client:prixajour2', src, prixajour2)
        TriggerEvent('qb-houses:server:updateTier')
          
    end 
end)

RegisterNetEvent('qb-realestate:server:changeprice', function(price, name, hasOwner)
    local src = source
    if hasOwner then
        TriggerClientEvent('QBCore:Notify', src, "This house is already bought. Why would you change price?")  
    else 
        MySQL.Async.fetchAll('UPDATE houselocations SET price = ? WHERE name = ?', {price, name})
        TriggerClientEvent('ilfr-core:client:prixajour', src, prixajour)
        TriggerEvent('qb-houses:server:updatePrice', price)
        
    end 
end)

-- Callbacks

QBCore.Functions.CreateCallback("qb-realestate:server:GetHouses", function(source, cb)
    MySQL.Async.fetchAll('SELECT * FROM houselocations' , {}, function(result)
        if result[1] then
            cb(result)
        else
            cb(nil)
        end
    end)
end)