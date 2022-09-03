local QBCore = exports['ilfr-mainserver']:GetCoreObject()
local NeededAttempts = 0
local SucceededAttempts = 0
local FailedAttemps = 0
local cokepicking = false
local cokeprocess = false
local cokeprocess2 = false
local nearDealer = false

--PROCESSUS
RegisterNetEvent('ilfr-heroine:client:grindleavesMinigame')
AddEventHandler('ilfr-heroine:client:grindleavesMinigame', function(source)
    PrepareProcessAnim()
    ProcessMinigame(source)
end)
RegisterNetEvent('ilfr-heroine:client:grindleavesMinigame2')
AddEventHandler('ilfr-heroine:client:grindleavesMinigame2', function(source)
    PrepareProcessAnim()
    ProcessMinigame2(source)
end)
--RECOLTE
RegisterNetEvent('ilfr-heroine:client:recolte')
AddEventHandler('ilfr-heroine:client:recolte', function(source)
    PrepareAnim()
    PickMinigame()
end)
RegisterNetEvent('ilfr-heroine:client:recolte2')
AddEventHandler('ilfr-heroine:client:recolte2', function(source)
    PrepareAnim()
    PickMinigamecockaine()
end)

RegisterNetEvent('ilfr-core:drugs:hero')
AddEventHandler('ilfr-core:drugs:hero', function()
	inRange = true
	PrepareAnim()
	PickMinigame()  
end)

RegisterNetEvent('ilfr-core:drugs:herotrait')
AddEventHandler('ilfr-core:drugs:herotrait', function()
	inRange = true
	PrepareAnim()
	PickMinigame()  
end)

RegisterNetEvent('ilfr-core:drugs:cokerecolte')
AddEventHandler('ilfr-core:drugs:cokerecolte', function()
	PrepareAnim()
    PickMinigamecockaine()
end)

function pickProcess()
    QBCore.Functions.Progressbar("grind_coke", "Vous êtes occupé(e), veuillez patienter", math.random(80000,120000), false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerServerEvent("ilfr-heroine:server:getleaf")
        ClearPedTasks(PlayerPedId())
        cokepicking = false
    end, function() -- Cancel
        openingDoor = false
        ClearPedTasks(PlayerPedId())
        exports['ilfr-core']:SendAdvanced({
						message = 'Vous avez arrêté(e) de récolter.',
						title = 'Notification',
						subject = 'Processus interrompu',
						icon = 'CHAR_RECOLTE',
							})
    end)
end

function pickProcesscokaine()
    QBCore.Functions.Progressbar("grind_coke", "Vous êtes occupé(e), veuillez patienter", math.random(80000,120000), false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerServerEvent("ilfr-heroine:server:getleaf2")
        ClearPedTasks(PlayerPedId())
        cokepicking = false
    end, function() -- Cancel
        openingDoor = false
        ClearPedTasks(PlayerPedId())
        exports['ilfr-core']:SendAdvanced({
						message = 'Vous avez arrêté(e) de récolter.',
						title = 'Notification',
						subject = 'Processus interrompu',
						icon = 'CHAR_RECOLTE',
							})
    end)
end

function cokeProcess()
    QBCore.Functions.Progressbar("grind_coke", "Vous êtes occupé(e), veuillez patienter", math.random(120000, 200000), false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerServerEvent("ilfr-heroine:server:getcoke2")
        ClearPedTasks(PlayerPedId())
        cokepicking = false
    end, function() -- Cancel
        openingDoor = false
        ClearPedTasks(PlayerPedId())
        exports['ilfr-core']:SendAdvanced({
						message = 'Vous avez arrêté(e) de traiter.',
						title = 'Notification',
						subject = 'Processus interrompu',
						icon = 'CHAR_TRAITEMENT',
							})
    end)
end

function cokeProcess2()
    QBCore.Functions.Progressbar("grind_coke", "Vous êtes occupé(e), veuillez patienter", math.random(120000, 200000), false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerServerEvent("ilfr-heroine:server:getcoke")
        ClearPedTasks(PlayerPedId())
        cokepicking = false
    end, function() -- Cancel
        openingDoor = false
        ClearPedTasks(PlayerPedId())
        exports['ilfr-core']:SendAdvanced({
						message = 'Vous avez arrêté(e) de traiter.',
						title = 'Notification',
						subject = 'Processus interrompu',
						icon = 'CHAR_TRAITEMENT',
							})
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

            exports['ilfr-core']:SendAdvanced({
						message = 'Vous avez cassé(e) la feuille.',
						title = 'Notification',
						subject = 'Processus interrompu',
						icon = 'CHAR_RECOLTE',
							})
            FailedAttemps = 0
            SucceededAttempts = 0
            NeededAttempts = 0
            cokepicking = false
       
    end)
end

function PickMinigamecockaine()
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
            pickProcesscokaine()
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

            exports['ilfr-core']:SendAdvanced({
						message = 'Vous avez cassé(e) la feuille.',
						title = 'Notification',
						subject = 'Processus interrompu',
						icon = 'CHAR_RECOLTE',
							})
            FailedAttemps = 0
            SucceededAttempts = 0
            NeededAttempts = 0
            cokepicking = false
       
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
            cokeProcess()
            exports['ilfr-core']:SendAdvanced({
						message = 'Vous êtes en train de créer de l\'héroine.',
						title = 'Notification',
						subject = 'Traitement des ressources',
						icon = 'CHAR_TRAITEMENT',
							})
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

            exports['ilfr-core']:SendAdvanced({
						message = 'Vous avez foiré(e) le processus.',
						title = 'Notification',
						subject = 'Processus interrompu',
						icon = 'CHAR_TRAITEMENT',
							})
            FailedAttemps = 0
            SucceededAttempts = 0
            NeededAttempts = 0
            cokeprocess = false
       
    end)
end


function ProcessMinigame2(source)
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
            cokeProcess2()
            exports['ilfr-core']:SendAdvanced({
						message = 'Vous êtes en train de créer de la cocaïne.',
						title = 'Notification',
						subject = 'Traitement des ressources',
						icon = 'CHAR_TRAITEMENT',
							})
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

            exports['ilfr-core']:SendAdvanced({
						message = 'Vous avez foiré(e) le processus.',
						title = 'Notification',
						subject = 'Processus interrompu',
						icon = 'CHAR_TRAITEMENT',
							})
            FailedAttemps = 0
            SucceededAttempts = 0
            NeededAttempts = 0
            cokeprocess2 = false
       
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
    cokeprocess = true
	cokeprocess2 = true
    Citizen.CreateThread(function()
        while true do
            local ped = PlayerPedId()

            if cokeprocess then
                -- if not TaskStartScenarioInPlace(ped, "WORLD_HUMAN_GARDENER_PLANT", 0, true) then
                --     TaskStartScenarioInPlace(ped, "WORLD_HUMAN_GARDENER_PLANT", 0, true)
                -- end
            elseif cokeprocess2 then
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
    -- LoadAnim('amb@prop_human_bbq@male@idle_a')
    -- TaskPlayAnim(ped, 'amb@prop_human_bbq@male@idle_a', 'idle_b', 6.0, -6.0, -1, 47, 0, 0, 0, 0)
    TaskStartScenarioInPlace(ped, "WORLD_HUMAN_GARDENER_PLANT", 0, true)
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
    cokepicking = true
    Citizen.CreateThread(function()
        while true do
            local ped = PlayerPedId()

            if cokepicking then
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

function knockDealerDoor()
    local hours = GetClockHours()
    local min = 9
    local max = 21

    if hours >= min and hours <= max then
        knockDoorAnim(true)
    else
        knockDoorAnim(false)
    end
end

function knockDoorAnim(home)
    local knockAnimLib = "timetable@jimmy@doorknock@"
    local knockAnim = "knockdoor_idle"
    local PlayerPed = PlayerPedId()
    local myData = QBCore.Functions.GetPlayerData()

    if home then
        TriggerServerEvent("InteractSound_SV:PlayOnSource", "knock_door", 0.2)
        Citizen.Wait(100)
        while (not HasAnimDictLoaded(knockAnimLib)) do
            RequestAnimDict(knockAnimLib)
            Citizen.Wait(100)
        end
        knockingDoor = true
        TaskPlayAnim(PlayerPed, knockAnimLib, knockAnim, 3.0, 3.0, -1, 1, 0, false, false, false )
        Citizen.Wait(3500)
        TaskPlayAnim(PlayerPed, knockAnimLib, "exit", 3.0, 3.0, -1, 1, 0, false, false, false)
        knockingDoor = false
        Citizen.Wait(1000)
        dealerIsHome = true
        -- TriggerEvent("chatMessage", "Dealer Johnny", "normal", 'Yo '..myData.charinfo.firstname..', damn you got ')
        TriggerServerEvent("ilfr-heroine:server:cokesell")

        -- knockTimeout()
    else
        TriggerServerEvent("InteractSound_SV:PlayOnSource", "knock_door", 0.2)
        Citizen.Wait(100)
        while (not HasAnimDictLoaded(knockAnimLib)) do
            RequestAnimDict(knockAnimLib)
            Citizen.Wait(100)
        end
        knockingDoor = true
        TaskPlayAnim(PlayerPed, knockAnimLib, knockAnim, 3.0, 3.0, -1, 1, 0, false, false, false )
        Citizen.Wait(3500)
        TaskPlayAnim(PlayerPed, knockAnimLib, "exit", 3.0, 3.0, -1, 1, 0, false, false, false)
        knockingDoor = false
        Citizen.Wait(1000)
        QBCore.Functions.Notify('Il semble y avoir personne', 'error', 3500)
    end
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