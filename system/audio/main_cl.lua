local QBCore = exports['ilfr-mainserver']:GetCoreObject()
-- Variables

local currentZone = nil
local PlayerData = {}

-- Handlers

AddEventHandler('onResourceStart', function(resourceName)
	if (GetCurrentResourceName() ~= resourceName) then return end
	PlayerData = QBCore.Functions.GetPlayerData()
end)

AddEventHandler('QBCore:Client:OnPlayerLoaded', function()
    PlayerData = QBCore.Functions.GetPlayerData()
end)

RegisterNetEvent('QBCore:Client:OnJobUpdate', function(JobInfo)
    PlayerData.job = JobInfo
end)

RegisterNetEvent('QBCore:Client:OnPlayerUnload', function()
    PlayerData = {}
end)

-- Static Header

local musicHeader = {
    {
        header = '💿 | Lecteur audio / DJ',
        params = {
            event = 'qb-djbooth:client:playMusic'
        }
    }
}

-- Main Menu

function createMusicMenu()
    musicMenu = {
        {
            isHeader = true,
            header = '💿 | Lecteur audio / DJ'
        },
        {
            header = '🎶 | Jouer une musique',
            txt = 'Entrez URL Youtube',
            params = {
                event = 'qb-djbooth:client:musicMenu',
                args = {
                    zoneName = currentZone
                }
            }
        },
        {
            header = '⏸️ | Mettre en pause',
            txt = 'Mettre la musique joué en pause',
            params = {
                isServer = true,
                event = 'qb-djbooth:server:pauseMusic',
                args = {
                    zoneName = currentZone
                }
            }
        },
        {
            header = '▶️ | Resumer musique',
            txt = 'Reprend la musique mis en pause',
            params = {
                isServer = true,
                event = 'qb-djbooth:server:resumeMusic',
                args = {
                    zoneName = currentZone
                }
            }
        },
        {
            header = '🔈 | Changer le volume',
            txt = 'Augmenter/Diminuer le volume',
            params = {
                event = 'qb-djbooth:client:changeVolume',
                args = {
                    zoneName = currentZone
                }
            }
        },
        {
            header = '❌ | Éteindre le jukebox',
            txt = 'Couper la musique en cours de lecture',
            params = {
                isServer = true,
                event = 'qb-djbooth:server:stopMusic',
                args = {
                    zoneName = currentZone
                }
            }
        }
    }
end

-- DJ Booths

local vanilla = BoxZone:Create(Config.LocationsAudio['vanilla'].coords, 1, 1, {
    name="vanilla",
    heading=0
})

local maisonet = BoxZone:Create(Config.LocationsAudio['maisonet'].coords, 1, 1, {
    name="maisonet",
    heading=0
})

maisonet:onPlayerInOut(function(isPointInside)
    if isPointInside and PlayerData.job.name == Config.LocationsAudio['maisonet'].job then
        currentZone = 'maisonet'
        exports['ilfr-menumap']:showHeader(musicHeader)
    else
        currentZone = nil
        exports['ilfr-menumap']:closeMenu()
    end
end)

vanilla:onPlayerInOut(function(isPointInside)
    if isPointInside and PlayerData.job.name == Config.LocationsAudio['vanilla'].job then
        currentZone = 'vanilla'
        exports['ilfr-menumap']:showHeader(musicHeader)
    else
        currentZone = nil
        exports['ilfr-menumap']:closeMenu()
    end
end)

-- Events

RegisterNetEvent('qb-djbooth:client:playMusic', function()
    createMusicMenu()
    exports['ilfr-menumap']:openMenu(musicMenu)
end)

RegisterNetEvent('qb-djbooth:client:musicMenu', function()
    local dialog = exports['ilfr-input']:ShowInput({
        header = 'URL Youtube',
        submitText = "Démarrer",
        inputs = {
            {
                type = 'text',
                isRequired = true,
                name = 'song',
                text = 'YouTube URL'
            }
        }
    })
    if dialog then
        if not dialog.song then return end
        TriggerServerEvent('qb-djbooth:server:playMusic', dialog.song, currentZone)
    end
end)

RegisterNetEvent('qb-djbooth:client:changeVolume', function()
    local dialog = exports['ilfr-input']:ShowInput({
        header = 'Volume de la musique',
        submitText = "Modifier",
        inputs = {
            {
                type = 'text', -- number doesn't accept decimals??
                isRequired = true,
                name = 'volume',
                text = 'Min : 0.01 - Max : 1'
            }
        }
    })
    if dialog then
        if not dialog.volume then return end
        TriggerServerEvent('qb-djbooth:server:changeVolume', dialog.volume, currentZone)
    end
end)