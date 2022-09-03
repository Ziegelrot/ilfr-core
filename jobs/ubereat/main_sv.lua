local QBCore = exports['ilfr-mainserver']:GetCoreObject()

RegisterServerEvent('RoutePizza:Payment')
AddEventHandler('RoutePizza:Payment', function()
	local _source = source
	local Player = QBCore.Functions.GetPlayer(_source)
    Player.Functions.AddMoney("cash", 10, "sold-pizza")
	TriggerClientEvent("ilfr-core:client:payepizza", _source)
end)

RegisterServerEvent('RoutePizza:TakeDeposit')
AddEventHandler('RoutePizza:TakeDeposit', function()
	local _source = source
	local Player = QBCore.Functions.GetPlayer(_source)
    Player.Functions.RemoveMoney("bank", 50, "pizza-caution")
    TriggerClientEvent("ilfr-core:client:payepizza2", _source)
end)

RegisterServerEvent('RoutePizza:ReturnDeposit')
AddEventHandler('RoutePizza:ReturnDeposit', function(info)
	local _source = source
    local Player = QBCore.Functions.GetPlayer(_source)
    
    if info == 'cancel' then
        Player.Functions.AddMoney("bank", 50, "pizza-return-vehicle")
         TriggerClientEvent("ilfr-core:client:payepizza3", _source)
    elseif info == 'end' then
        Player.Functions.AddMoney("bank", 50, "pizza-return-vehicle")
        TriggerClientEvent("ilfr-core:client:payepizza3", _source)
    end
end)
