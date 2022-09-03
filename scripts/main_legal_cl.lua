local QBCore = exports['ilfr-mainserver']:GetCoreObject()
local NeededAttempts = 0
local SucceededAttempts = 0
local FailedAttemps = 0
local galliumpicking = false
local galliumprocess = false
local nearDealer = false


DrawText3Ds = function(x, y, z, text)
	SetTextScale(0.35, 0.35)
    SetTextFont(4)
    SetTextProportional(1)
    SetTextColour(255, 255, 255, 215)
    SetTextEntry("STRING")
    SetTextCentre(true)
    AddTextComponentString(text)
    SetDrawOrigin(x,y,z, 0)
    DrawText(0.0, 0.0)
    local factor = (string.len(text)) / 370
    DrawRect(0.0, 0.0+0.0125, 0.017+ factor, 0.03, 0, 0, 0, 75)
    ClearDrawOrigin()
end


--Pierre (Traitement)
-- Citizen.CreateThread(function()
    -- while true do
        -- local inRange = false

        -- local PlayerPed = PlayerPedId()
        -- local PlayerPos = GetEntityCoords(PlayerPed)

        -- local distance = #(PlayerPos - vector3(-1583.56, -171.61, 2.88))
        
        -- if distance < 10 then
            -- inRange = true


			
            -- if distance < 3 then
                -- exports["ilfr-context"]:Help("Appuyez sur ~INPUT_DETONATE~ pour faire fondre la pierre")
                -- if IsControlJustPressed(0, 47) then
                    -- TriggerServerEvent("qb-gallium:server:grindleaves")

                -- end
            -- end
            
        -- end

        -- if not inRange then
            -- Citizen.Wait(2000)
        -- end
        -- Citizen.Wait(3)
    -- end
-- end)


--Pierre (mine)
-- Citizen.CreateThread(function()
    -- while true do
        -- local inRange = false

        -- local PlayerPed = PlayerPedId()
        -- local PlayerPos = GetEntityCoords(PlayerPed)

        -- local distance1 = #(PlayerPos - vector3(-585.38, 1877.36, 3.34))
		-- local distance2 = #(PlayerPos - vector3(-576.06, 1856.8, 5.04))
        
        -- if distance1 < 100 then
            -- inRange = true

            -- if distance1 < 5 then
				-- exports["ilfr-context"]:Help("Appuyez sur ~INPUT_DETONATE~ pour miner la pierre")
                -- if IsControlJustPressed(0, 47) then
                    -- PrepareAnim()
                    -- PickMinigame()
                -- end
            -- end
			-- if distance2 < 5 then
				-- exports["ilfr-context"]:Help("Appuyez sur ~INPUT_DETONATE~ pour miner la pierre")
                -- if IsControlJustPressed(0, 47) then
                    -- PrepareAnim()
                    -- PickMinigame()
                -- end
            -- end
        -- end
        -- if not inRange then
            -- Citizen.Wait(2000)
        -- end
        -- Citizen.Wait(3)
    -- end
-- end)


RegisterNetEvent('qb-gallium:client:grindleavesMinigame')
AddEventHandler('qb-gallium:client:grindleavesMinigame', function(source)
    PrepareProcessAnim()
    ProcessMinigame(source)
end)

RegisterNetEvent('qb-gallium:client:processCrack')
AddEventHandler('qb-gallium:client:processCrack', function(source)
    ProcessCrackMinigame(source)
end)

function pickProcess()
    QBCore.Functions.Progressbar("grind_gallium", "Vous êtes occupé(e), veuillez patienter", math.random(10000,20000), false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerServerEvent("qb-gallium:server:getleaf")
        ClearPedTasks(PlayerPedId())
        galliumpicking = false
    end, function() -- Cancel
        openingDoor = false
        ClearPedTasks(PlayerPedId())
        QBCore.Functions.Notify("Vous avez arrêter de miner", "error")
    end)
end

function galliumProcess()
    QBCore.Functions.Progressbar("grind_gallium", "Vous êtes occupé(e), veuillez patienter", math.random(10000, 20000), false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerServerEvent("qb-gallium:server:getgallium")
        ClearPedTasks(PlayerPedId())
        galliumpicking = false
    end, function() -- Cancel
        openingDoor = false
        ClearPedTasks(PlayerPedId())
        QBCore.Functions.Notify("Vous avez arrêter de faire fondre le gallium", "error")
    end)
end

function PickMinigame()
    local Skillbar = exports['ilfr-skillbar']:GetSkillbarObject()
    if NeededAttempts == 0 then
        NeededAttempts = math.random(3, 5)
        -- NeededAttempts = 1
    end

    local maxwidth = 30
    local maxduration = 3500

    Skillbar.Start({
        duration = math.random(2000, 3000),
        pos = math.random(10, 30),
        width = math.random(20, 30),
    }, function()

        if SucceededAttempts + 1 >= NeededAttempts then
            pickProcess()
            FailedAttemps = 0
            SucceededAttempts = 0
            NeededAttempts = 0
        else    
            SucceededAttempts = SucceededAttempts + 1
            Skillbar.Repeat({
                duration = math.random(2000, 3000),
                pos = math.random(10, 30),
                width = math.random(20, 30),
            })
        end
                
        
	end, function()

            QBCore.Functions.Notify("Tu as loupé ton coups", "error")
            FailedAttemps = 0
            SucceededAttempts = 0
            NeededAttempts = 0
            galliumpicking = false
       
    end)
end

function ProcessMinigame(source)
    local Skillbar = exports['ilfr-skillbar']:GetSkillbarObject()
    if NeededAttempts == 0 then
        NeededAttempts = math.random(3, 5)
        -- NeededAttempts = 1
    end

    local maxwidth = 30
    local maxduration = 3000

    Skillbar.Start({
        duration = math.random(2000, 3000),
        pos = math.random(10, 30),
        width = math.random(20, 30),
    }, function()

        if SucceededAttempts + 1 >= NeededAttempts then
            galliumProcess()
            QBCore.Functions.Notify("Tu fais fondre le gallium", "success")
            FailedAttemps = 0
            SucceededAttempts = 0
            NeededAttempts = 0
        else    
            SucceededAttempts = SucceededAttempts + 1
            Skillbar.Repeat({
                duration = math.random(2000, 3000),
                pos = math.random(10, 30),
                width = math.random(20, 30),
            })
        end
                
        
	end, function()

            QBCore.Functions.Notify("Tu as appuyé sur le mauvais bouton!", "error")
            FailedAttemps = 0
            SucceededAttempts = 0
            NeededAttempts = 0
            galliumprocess = false
       
    end)
end

function ProcessCrackMinigame(source)
    local Skillbar = exports['ilfr-skillbar']:GetSkillbarObject()
    if NeededAttempts == 0 then
        NeededAttempts = math.random(3, 4)
        -- NeededAttempts = 1
    end

    local maxwidth = 30
    local maxduration = 3500

    Skillbar.Start({
        duration = math.random(2000, 3000),
        pos = math.random(10, 30),
        width = math.random(20, 30),
    }, function()

        if SucceededAttempts + 1 >= NeededAttempts then
            crackProcess()
            QBCore.Functions.Notify("Tu fais fondre le gallium", "success")
            FailedAttemps = 0
            SucceededAttempts = 0
            NeededAttempts = 0
        else    
            SucceededAttempts = SucceededAttempts + 1
            Skillbar.Repeat({
                duration = math.random(2000, 3000),
                pos = math.random(10, 30),
                width = math.random(20, 30),
            })
        end
                
        
	end, function()

            QBCore.Functions.Notify("Tu t'es loupé!", "error")
            FailedAttemps = 0
            SucceededAttempts = 0
            NeededAttempts = 0
            galliumprocess = false
       
    end)
end

function PrepareProcessAnim()
    local ped = PlayerPedId()
    LoadAnim('mini@repair')
    TaskPlayAnim(ped, 'mini@repair', 'fixing_a_ped', 6.0, -6.0, -1, 47, 0, 0, 0, 0)
    -- TaskStartScenarioInPlace(ped, "WORLD_HUMAN_GARDENER_PLANT", 0, true)
    PreparingProcessAnimCheck()
end

function PreparingProcessAnimCheck()
    galliumprocess = true
    Citizen.CreateThread(function()
        while true do
            local ped = PlayerPedId()

            if galliumprocess then
                -- if not TaskStartScenarioInPlace(ped, "WORLD_HUMAN_GARDENER_PLANT", 0, true) then
                --     TaskStartScenarioInPlace(ped, "WORLD_HUMAN_GARDENER_PLANT", 0, true)
                -- end
            else
                ClearPedTasksImmediately(ped)
                break
            end

            Citizen.Wait(200)
        end
    end)
end

function PrepareAnim()
    local ped = PlayerPedId()
LoadAnim('amb@prop_human_bbq@male@idle_a')
    -- TaskPlayAnim(ped, 'amb@prop_human_bbq@male@idle_a', 'idle_b', 6.0, -6.0, -1, 47, 0, 0, 0, 0)
    TaskStartScenarioInPlace(ped, "WORLD_HUMAN_CONST_DRILL", 0, true)
    PreparingAnimCheck()
end

function ProcessPrepareAnim()
    local ped = PlayerPedId()
    LoadAnim('amb@prop_human_bbq@male@idle_a')
    TaskPlayAnim(ped, 'amb@prop_human_bbq@male@idle_a', 'idle_b', 6.0, -6.0, -1, 47, 0, 0, 0, 0)
    -- TaskStartScenarioInPlace(ped, "WORLD_HUMAN_GARDENER_PLANT", 0, true)
    PreparingAnimCheck()
end

function PreparingAnimCheck()
    galliumpicking = true
    Citizen.CreateThread(function()
        while true do
            local ped = PlayerPedId()

            if galliumpicking then
                -- if not TaskStartScenarioInPlace(ped, "WORLD_HUMAN_GARDENER_PLANT", 0, true) then
                --     TaskStartScenarioInPlace(ped, "WORLD_HUMAN_GARDENER_PLANT", 0, true)
                -- end
            else
                ClearPedTasksImmediately(ped)
                break
            end

            Citizen.Wait(200)
        end
    end)
end


function LoadAnim(dict)
    while not HasAnimDictLoaded(dict) do
        RequestAnimDict(dict)
        Citizen.Wait(1)
    end
end

function LoadModel(model)
    while not HasModelLoaded(model) do
        RequestModel(model)
        Citizen.Wait(1)
    end
end