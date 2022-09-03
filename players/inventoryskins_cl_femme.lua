--#ILFRSKINS, BY ZIEGELROT--

--ILFRCORE LOCAL----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
local QBCore = exports['ilfr-mainserver']:GetCoreObject()
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--ITEM INVENTAIRE---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--MEDECIN------------------------------------------------------------------------------------------------------
RegisterNetEvent('skins:client:tenuemedecinfemme', function() --Stagiaire
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenuemedecinfemme = {
            outfitData = {
				["vest"] = { item = 19, texture = 4}, 		--VEST/GILET	 
            }
        }
        TriggerEvent('qb-clothing:client:loadOutfit', tenuemedecinfemme)
		TriggerServerEvent("QBCore:Server:RemoveItem", "tenuemedecinfemme", 1)
    end)
end)
RegisterNetEvent('skins:client:tenuemedecinfemme2', function() --Médecin
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenuemedecinfemme2 = {
            outfitData = {
                ["arms"]   = { item = 98, texture = 0},   ----BRAS
				["torso2"]   = { item = 148, texture = 5}, --JACKET
				["t-shirt"]   = { item = 38, texture = 0},  --T-SHIRT 
                ["pants"]   = { item = 34, texture = 0},  --PANTALON
				["shoes"]   = { item = 10, texture = 0}, --CHAUSSURE
				["bag"] =  { item = -1, texture = 0}, --SAC
				["accessory"]   = { item = 19, texture = 0},	--NECK ACCESSORY
				["hat"] = { item = 121, texture = 0},	--CHAPEAU
				["vest"] = { item = -1, texture = 0}, 		--VEST/GILET	  
            }
        }
        TriggerEvent('qb-clothing:client:loadOutfit', tenuemedecinfemme2)
		TriggerServerEvent("QBCore:Server:RemoveItem", "tenuemedecinfemme2", 1)
    end)
end)
RegisterNetEvent('skins:client:tenuemedecinfemme3', function() --Docteur
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenuemedecinfemme3 = {
            outfitData = {
                ["arms"]   = { item = 98, texture = 0},   ----BRAS
				["torso2"]   = { item = 22, texture = 2}, --JACKET
				["t-shirt"]   = { item = -1, texture = 0},  --T-SHIRT 
                ["pants"]   = { item = 47, texture = 2},  --PANTALON
				["shoes"]   = { item = 10, texture = 0}, --CHAUSSURE
				["bag"] =  { item = -1, texture = 0}, --SAC
				["accessory"]   = { item = 14, texture = 0},	--NECK ACCESSORY
				["hat"] = { item = -1, texture = 0},	--CHAPEAU
				["vest"] = { item = -1, texture = 0}, 		--VEST/GILET	 
            }
        }
        TriggerEvent('qb-clothing:client:loadOutfit', tenuemedecinfemme3)
		TriggerServerEvent("QBCore:Server:RemoveItem", "tenuemedecinfemme3", 1)
    end)
end)
--POLICE-------------------------------------------------------------------------------------------------------
RegisterNetEvent('skins:client:tenuepolicefemme', function() --Stagiaire
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenuepolicefemme = {
            outfitData = {
                ["arms"]   = { item = 14, texture = 0},  
				["torso2"]   = { item = 192, texture = 0},
				["t-shirt"]   = { item = 51, texture = 0},  
                ["pants"]   = { item = 54, texture = 1},  
				["shoes"]   = { item = 10, texture = 0}, 
				["accessory"]   = { item = -1, texture = 0}, 
				["bag"]   = { item = -1, texture = 0}, 
				["hat"] = { item = -1, texture = 0},
				["vest"] = { item = 19, texture = 0},
            }
        }
        TriggerEvent('qb-clothing:client:loadOutfit', tenuepolicefemme)
		TriggerServerEvent("QBCore:Server:RemoveItem", "tenuepolicefemme", 1)
    end)
end)
RegisterNetEvent('skins:client:tenuepolicefemme2', function() --Cadet
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenuepolicefemme2 = {
            outfitData = {
                ["arms"]   = { item = 14, texture = 0},  
				["torso2"]   = { item = 192, texture = 0},
				["t-shirt"]   = { item = 51, texture = 0},  
                ["pants"]   = { item = 54, texture = 1},  
				["shoes"]   = { item = 10, texture = 0}, 
				["accessory"]   = { item = -1, texture = 0}, 
				["bag"]   = { item = -1, texture = 0}, 
				["hat"] = { item = -1, texture = 0},
				["vest"] = { item = -1, texture = 0},
            }
        }
        TriggerEvent('qb-clothing:client:loadOutfit', tenuepolicefemme2)
		TriggerServerEvent("QBCore:Server:RemoveItem", "tenuepolicefemme2", 1)
    end)
end)
RegisterNetEvent('skins:client:tenuepolicefemme3', function() --Officier de police
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenuepolicefemme3 = {
            outfitData = {
                ["arms"]   = { item = 6, texture = 0},  
				["torso2"]   = { item = 195, texture = 0},
				["t-shirt"]   = { item = 189, texture = 0},  
                ["pants"]   = { item = 54, texture = 1},  
				["shoes"]   = { item = 10, texture = 0}, 
				["accessory"]   = { item = 1, texture = 0}, 
				["bag"]   = { item = -1, texture = 0}, 
				["hat"] = { item = 1, texture = 0},
				["vest"] = { item = -1, texture = 0}, 
            }
        }
        TriggerEvent('qb-clothing:client:loadOutfit', tenuepolicefemme3)
		TriggerServerEvent("QBCore:Server:RemoveItem", "tenuepolicefemme3", 1)
    end)
end)
RegisterNetEvent('skins:client:tenuepolicefemme4', function() --Détective
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenuepolicefemme4 = {
            outfitData = {
                ["arms"]   = { item = 3, texture = 0},  
				["torso2"]   = { item = 189, texture = 0},
				["t-shirt"]   = { item = 216, texture = 3},  
                ["pants"]   = { item = 3, texture = 3},  
				["shoes"]   = { item = 10, texture = 0}, 
				["accessory"]   = { item = 1, texture = 0}, 
				["bag"]   = { item = 59, texture = 0}, 
				["hat"] = { item = -1, texture = 0},
				["vest"] = { item = -1, texture = 0},   
            }
        }
        TriggerEvent('qb-clothing:client:loadOutfit', tenuepolicefemme4)
		TriggerServerEvent("QBCore:Server:RemoveItem", "tenuepolicefemme4", 1)
    end)
end)
RegisterNetEvent('skins:client:tenuepolicefemme5', function() --Sergent
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenuepolicefemme5 = {
            outfitData = {
                ["arms"]   = { item = 3, texture = 0},  
				["torso2"]   = { item = 202, texture = 0},
				["t-shirt"]   = { item = 159, texture = 0},  
                ["pants"]   = { item = 54, texture = 1},  
				["shoes"]   = { item = 10, texture = 0}, 
				["accessory"]   = { item = 1, texture = 0}, 
				["bag"]   = { item = 74, texture = 1}, 
				["hat"] = { item = -1, texture = 0},
				["vest"] = { item = -1, texture = 0}, 
            }
        }
        TriggerEvent('qb-clothing:client:loadOutfit', tenuepolicefemme5)
		TriggerServerEvent("QBCore:Server:RemoveItem", "tenuepolicefemme5", 1)
    end)
end)
RegisterNetEvent('skins:client:tenuepolicefemme6', function() --Lieutenant
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenuepolicefemme6 = {
            outfitData = {
                ["arms"]   = { item = 3, texture = 0},  
				["torso2"]   = { item = 147, texture = 6},
				["t-shirt"]   = { item = 9, texture = 0},  
                ["pants"]   = { item = 54, texture = 1},  
				["shoes"]   = { item = 10, texture = 0}, 
				["accessory"]   = { item = -1, texture = 0}, 
				["bag"]   = { item = 58, texture = 0}, 
				["hat"] = { item = -1, texture = 0},
				["vest"] = { item = -1, texture = 0},  
            }
        }
        TriggerEvent('qb-clothing:client:loadOutfit', tenuepolicefemme6)
		TriggerServerEvent("QBCore:Server:RemoveItem", "tenuepolicefemme6", 1)
    end)
end)
RegisterNetEvent('skins:client:tenuepolicefemme7', function() --Capitaine
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenuepolicefemme7 = {
            outfitData = {
                ["arms"]   = { item = 3, texture = 0},  
				["torso2"]   = { item = 198, texture = 13},
				["t-shirt"]   = { item = 190, texture = 0},  
                ["pants"]   = { item = 54, texture = 1},  
				["shoes"]   = { item = 10, texture = 0}, 
				["accessory"]   = { item = 1, texture = 0}, 
				["bag"]   = { item = 52, texture = 3}, 
				["hat"] = { item = -1, texture = 0},
				["vest"] = { item = -1, texture = 0},  
            }
        }
        TriggerEvent('qb-clothing:client:loadOutfit', tenuepolicefemme7)
		TriggerServerEvent("QBCore:Server:RemoveItem", "tenuepolicefemme7", 1)
    end)
end)
RegisterNetEvent('skins:client:tenuepolicefemme8', function() --Chef adjoint
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenuepolicefemme8 = {
            outfitData = {
                ["arms"]   = { item = 3, texture = 0},  
				["torso2"]   = { item = 198, texture = 14},
				["t-shirt"]   = { item = 190, texture = 0},  
                ["pants"]   = { item = 54, texture = 1},  
				["shoes"]   = { item = 10, texture = 0}, 
				["accessory"]   = { item = -1, texture = 0}, 
				["bag"]   = { item = 52, texture = 7}, 
				["hat"] = { item = -1, texture = 0},
				["vest"] = { item = -1, texture = 0},   
            }
        }
        TriggerEvent('qb-clothing:client:loadOutfit', tenuepolicefemme8)
		TriggerServerEvent("QBCore:Server:RemoveItem", "tenuepolicefemme8", 1)
    end)
end)
RegisterNetEvent('skins:client:tenuepolicefemme9', function() --Chef
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenuepolicefemme9 = {
            outfitData = {
                ["arms"]   = { item = 3, texture = 0},  
				["torso2"]   = { item = 198, texture = 14},
				["t-shirt"]   = { item = 7, texture = 0},  
                ["pants"]   = { item = 54, texture = 1},  
				["shoes"]   = { item = 10, texture = 0}, 
				["accessory"]   = { item = -1, texture = 0}, 
				["bag"]   = { item = 52, texture = 8}, 
				["hat"] = { item = 112, texture = 1},
				["vest"] = { item = -1, texture = 0},    
            }
        }
        TriggerEvent('qb-clothing:client:loadOutfit', tenuepolicefemme9)
		TriggerServerEvent("QBCore:Server:RemoveItem", "tenuepolicefemme9", 1)
    end)
end)
--FEMME-------------------------------------------------------------------------------------------------------
RegisterNetEvent('skins:client:tenue408', function()
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue408 = {
            outfitData = {
				["arms"]   = { item = 0, texture = 0},  
				["torso2"]   = { item = 0, texture = 1},
				["t-shirt"]   = { item = -1, texture = 0}, 
            }
        }
        TriggerEvent('qb-clothing:client:loadOutfit', tenue408)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue408"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue408", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue409', function()
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue409 = {
            outfitData = {
				["arms"]   = { item = 0, texture = 0},  
				["torso2"]   = { item = 0, texture = 2},
				["t-shirt"]   = { item = -1, texture = 0}, 
            }
        }
        TriggerEvent('qb-clothing:client:loadOutfit', tenue409)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue409"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue409", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue410', function()
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue410 = {
            outfitData = {
				["arms"]   = { item = 0, texture = 0},  
				["torso2"]   = { item = 0, texture = 10},
				["t-shirt"]   = { item = -1, texture = 0}, 
            }
        }
        TriggerEvent('qb-clothing:client:loadOutfit', tenue410)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue410"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue410", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue411', function()
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue411 = {
            outfitData = {
				["arms"]   = { item = 5, texture = 0},  
				["torso2"]   = { item = 1, texture = 0},
				["t-shirt"]   = { item = -1, texture = 0}, 
            }
        }
        TriggerEvent('qb-clothing:client:loadOutfit', tenue411)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue411"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue411", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue412', function()
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue412 = {
            outfitData = {
				["arms"]   = { item = 5, texture = 0},  
				["torso2"]   = { item = 1, texture = 1},
				["t-shirt"]   = { item = -1, texture = 0}, 
            }
        }
        TriggerEvent('qb-clothing:client:loadOutfit', tenue412)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue412"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue412", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue413', function()
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue413 = {
            outfitData = {
				["arms"]   = { item = 5, texture = 0},  
				["torso2"]   = { item = 1, texture = 2},
				["t-shirt"]   = { item = -1, texture = 0}, 
            }
        }
        TriggerEvent('qb-clothing:client:loadOutfit', tenue413)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue413"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue413", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue414', function()
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue414 = {
            outfitData = {
				["arms"]   = { item = 5, texture = 0},  
				["torso2"]   = { item = 1, texture = 0},
				["t-shirt"]   = { item = 1, texture = 0}, 
            }
        }
        TriggerEvent('qb-clothing:client:loadOutfit', tenue414)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue414"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue414", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue415', function()
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue415 = {
            outfitData = {
				["arms"]   = { item = 5, texture = 0},  
				["torso2"]   = { item = 1, texture = 1},
				["t-shirt"]   = { item = 1, texture = 0}, 
            }
        }
        TriggerEvent('qb-clothing:client:loadOutfit', tenue415)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue415"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue415", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue416', function()
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue416 = {
            outfitData = {
				["arms"]   = { item = 5, texture = 0},  
				["torso2"]   = { item = 1, texture = 2},
				["t-shirt"]   = { item = 1, texture = 0}, 
            }
        }
        TriggerEvent('qb-clothing:client:loadOutfit', tenue416)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue416"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue416", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue417', function()
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue417 = {
            outfitData = {
				["arms"]   = { item = 2, texture = 0},  
				["torso2"]   = { item = 2, texture = 0},
				["t-shirt"]   = { item = -1, texture = 0}, 
            }
        }
        TriggerEvent('qb-clothing:client:loadOutfit', tenue417)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue417"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue417", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue418', function()
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue418 = {
            outfitData = {
				["arms"]   = { item = 2, texture = 0},  
				["torso2"]   = { item = 2, texture = 1},
				["t-shirt"]   = { item = -1, texture = 0}, 
            }
        }
        TriggerEvent('qb-clothing:client:loadOutfit', tenue418)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue418"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue418", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue419', function()
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue419 = {
            outfitData = {
				["arms"]   = { item = 2, texture = 0},  
				["torso2"]   = { item = 2, texture = 2},
				["t-shirt"]   = { item = -1, texture = 0}, 
            }
        }
        TriggerEvent('qb-clothing:client:loadOutfit', tenue419)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue419"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue419", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue420', function()
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue420 = {
            outfitData = {
				["arms"]   = { item = 2, texture = 0},  
				["torso2"]   = { item = 2, texture = 3},
				["t-shirt"]   = { item = -1, texture = 0}, 
            }
        }
        TriggerEvent('qb-clothing:client:loadOutfit', tenue420)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue420"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue420", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue421', function()
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue421 = {
            outfitData = {
				["arms"]   = { item = 2, texture = 0},  
				["torso2"]   = { item = 2, texture = 4},
				["t-shirt"]   = { item = -1, texture = 0}, 
            }
        }
        TriggerEvent('qb-clothing:client:loadOutfit', tenue421)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue421"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue421", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue422', function()
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue422 = {
            outfitData = {
				["arms"]   = { item = 2, texture = 0},  
				["torso2"]   = { item = 2, texture = 5},
				["t-shirt"]   = { item = -1, texture = 0}, 
            }
        }
        TriggerEvent('qb-clothing:client:loadOutfit', tenue422)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue422"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue422", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue423', function()
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue423 = {
            outfitData = {
				["arms"]   = { item = 2, texture = 0},  
				["torso2"]   = { item = 2, texture = 6},
				["t-shirt"]   = { item = -1, texture = 0}, 
            }
        }
        TriggerEvent('qb-clothing:client:loadOutfit', tenue423)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue423"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue423", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue424', function()
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue424 = {
            outfitData = {
				["arms"]   = { item = 2, texture = 0},  
				["torso2"]   = { item = 2, texture = 7},
				["t-shirt"]   = { item = -1, texture = 0}, 
            }
        }
        TriggerEvent('qb-clothing:client:loadOutfit', tenue424)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue424"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue424", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue425', function()
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue425 = {
            outfitData = {
				["arms"]   = { item = 2, texture = 0},  
				["torso2"]   = { item = 2, texture = 8},
				["t-shirt"]   = { item = -1, texture = 0}, 
            }
        }
        TriggerEvent('qb-clothing:client:loadOutfit', tenue425)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue425"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue425", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue426', function()
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue426 = {
            outfitData = {
				["arms"]   = { item = 2, texture = 0},  
				["torso2"]   = { item = 2, texture = 9},
				["t-shirt"]   = { item = -1, texture = 0}, 
            }
        }
        TriggerEvent('qb-clothing:client:loadOutfit', tenue426)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue426"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue426", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue427', function()
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue427 = {
            outfitData = {
				["arms"]   = { item = 2, texture = 0},  
				["torso2"]   = { item = 2, texture = 10},
				["t-shirt"]   = { item = -1, texture = 0}, 
            }
        }
        TriggerEvent('qb-clothing:client:loadOutfit', tenue427)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue427"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue427", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue428', function()
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue428 = {
            outfitData = {
				["arms"]   = { item = 2, texture = 0},  
				["torso2"]   = { item = 2, texture = 11},
				["t-shirt"]   = { item = -1, texture = 0}, 
            }
        }
        TriggerEvent('qb-clothing:client:loadOutfit', tenue428)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue428"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue428", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue429', function()
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue429 = {
            outfitData = {
				["arms"]   = { item = 2, texture = 0},  
				["torso2"]   = { item = 2, texture = 12},
				["t-shirt"]   = { item = -1, texture = 0}, 
            }
        }
        TriggerEvent('qb-clothing:client:loadOutfit', tenue429)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue429"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue429", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue430', function()
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue430 = {
            outfitData = {
				["arms"]   = { item = 2, texture = 0},  
				["torso2"]   = { item = 2, texture = 13},
				["t-shirt"]   = { item = -1, texture = 0}, 
            }
        }
        TriggerEvent('qb-clothing:client:loadOutfit', tenue430)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue430"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue430", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue431', function()
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue431 = {
            outfitData = {
				["arms"]   = { item = 2, texture = 0},  
				["torso2"]   = { item = 2, texture = 14},
				["t-shirt"]   = { item = -1, texture = 0}, 
            }
        }
        TriggerEvent('qb-clothing:client:loadOutfit', tenue431)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue431"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue431", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue432', function()
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue432 = {
            outfitData = {
				["arms"]   = { item = 2, texture = 0},  
				["torso2"]   = { item = 2, texture = 15},
				["t-shirt"]   = { item = -1, texture = 0}, 
            }
        }
        TriggerEvent('qb-clothing:client:loadOutfit', tenue432)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue432"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue432", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue433', function()
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue433 = {
            outfitData = {
				["arms"]   = { item = 4, texture = 0},  
				["torso2"]   = { item = 36, texture = 0},
				["t-shirt"]   = { item = -1, texture = 0}, 
            }
        }
        TriggerEvent('qb-clothing:client:loadOutfit', tenue433)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue433"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue433", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue434', function()
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue434 = {
            outfitData = {
				["arms"]   = { item = 4, texture = 0},  
				["torso2"]   = { item = 36, texture = 1},
				["t-shirt"]   = { item = -1, texture = 0}, 
            }
        }
        TriggerEvent('qb-clothing:client:loadOutfit', tenue434)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue434"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue434", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue435', function()
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue435 = {
            outfitData = {
				["arms"]   = { item = 4, texture = 0},  
				["torso2"]   = { item = 36, texture = 2},
				["t-shirt"]   = { item = -1, texture = 0}, 
            }
        }
        TriggerEvent('qb-clothing:client:loadOutfit', tenue435)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue435"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue435", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue436', function()
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue436 = {
            outfitData = {
				["arms"]   = { item = 4, texture = 0},  
				["torso2"]   = { item = 36, texture = 3},
				["t-shirt"]   = { item = -1, texture = 0}, 
            }
        }
        TriggerEvent('qb-clothing:client:loadOutfit', tenue436)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue436"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue436", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue437', function()
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue437 = {
            outfitData = {
				["arms"]   = { item = 4, texture = 0},  
				["torso2"]   = { item = 36, texture = 4},
				["t-shirt"]   = { item = -1, texture = 0}, 
            }
        }
        TriggerEvent('qb-clothing:client:loadOutfit', tenue437)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue437"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue437", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue438', function()
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue438 = {
            outfitData = {
				["arms"]   = { item = 4, texture = 0},  
				["torso2"]   = { item = 37, texture = 0},
				["t-shirt"]   = { item = -1, texture = 0}, 
            }
        }
        TriggerEvent('qb-clothing:client:loadOutfit', tenue438)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue438"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue438", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue439', function()
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue439 = {
            outfitData = {
				["arms"]   = { item = 4, texture = 0},  
				["torso2"]   = { item = 37, texture = 1},
				["t-shirt"]   = { item = -1, texture = 0}, 
            }
        }
        TriggerEvent('qb-clothing:client:loadOutfit', tenue439)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue439"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue439", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue440', function()
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue440 = {
            outfitData = {
				["arms"]   = { item = 4, texture = 0},  
				["torso2"]   = { item = 37, texture = 2},
				["t-shirt"]   = { item = -1, texture = 0}, 
            }
        }
        TriggerEvent('qb-clothing:client:loadOutfit', tenue440)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue440"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue440", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue441', function()
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue441 = {
            outfitData = {
				["arms"]   = { item = 4, texture = 0},  
				["torso2"]   = { item = 37, texture = 3},
				["t-shirt"]   = { item = -1, texture = 0}, 
            }
        }
        TriggerEvent('qb-clothing:client:loadOutfit', tenue441)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue441"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue441", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue442', function()
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue442 = {
            outfitData = {
				["arms"]   = { item = 4, texture = 0},  
				["torso2"]   = { item = 37, texture = 4},
				["t-shirt"]   = { item = -1, texture = 0}, 
            }
        }
        TriggerEvent('qb-clothing:client:loadOutfit', tenue442)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue442"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue442", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue443', function()
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue443 = {
            outfitData = {
				["arms"]   = { item = 4, texture = 0},  
				["torso2"]   = { item = 37, texture = 5},
				["t-shirt"]   = { item = -1, texture = 0}, 
            }
        }
        TriggerEvent('qb-clothing:client:loadOutfit', tenue443)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue443"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue443", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue444', function()
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue444 = {
            outfitData = {
				["arms"]   = { item = 14, texture = 0},  
				["torso2"]   = { item = 49, texture = 0},
				["t-shirt"]   = { item = -1, texture = 0}, 
            }
        }
        TriggerEvent('qb-clothing:client:loadOutfit', tenue444)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue444"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue444", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue445', function()
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue445 = {
            outfitData = {
				["arms"]   = { item = 14, texture = 0},  
				["torso2"]   = { item = 49, texture = 1},
				["t-shirt"]   = { item = -1, texture = 0}, 
            }
        }
        TriggerEvent('qb-clothing:client:loadOutfit', tenue445)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue445"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue445", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue446', function()
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue446 = {
            outfitData = {
				["arms"]   = { item = 3, texture = 0},  
				["torso2"]   = { item = 50, texture = 0},
				["t-shirt"]   = { item = -1, texture = 0}, 
            }
        }
        TriggerEvent('qb-clothing:client:loadOutfit', tenue446)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue446"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue446", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue447', function()
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue447 = {
            outfitData = {
				["arms"]   = { item = 1, texture = 0},  
				["torso2"]   = { item = 54, texture = 0},
				["t-shirt"]   = { item = -1, texture = 0}, 
            }
        }
        TriggerEvent('qb-clothing:client:loadOutfit', tenue447)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue447"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue447", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue448', function()
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue448 = {
            outfitData = {
				["arms"]   = { item = 1, texture = 0},  
				["torso2"]   = { item = 54, texture = 1},
				["t-shirt"]   = { item = -1, texture = 0}, 
            }
        }
        TriggerEvent('qb-clothing:client:loadOutfit', tenue448)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue448"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue448", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue449', function()
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue449 = {
            outfitData = {
				["arms"]   = { item = 1, texture = 0},  
				["torso2"]   = { item = 54, texture = 2},
				["t-shirt"]   = { item = -1, texture = 0}, 
            }
        }
        TriggerEvent('qb-clothing:client:loadOutfit', tenue449)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue449"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue449", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue450', function()
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue450 = {
            outfitData = {
				["arms"]   = { item = 1, texture = 0},  
				["torso2"]   = { item = 54, texture = 3},
				["t-shirt"]   = { item = -1, texture = 0}, 
            }
        }
        TriggerEvent('qb-clothing:client:loadOutfit', tenue450)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue450"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue450", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue451', function()
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue451 = {
            outfitData = {
				["arms"]   = { item = 1, texture = 0},  
				["torso2"]   = { item = 55, texture = 0},
				["t-shirt"]   = { item = -1, texture = 0}, 
            }
        }
        TriggerEvent('qb-clothing:client:loadOutfit', tenue451)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue451"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue451", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue452', function()
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue452 = {
            outfitData = {
				["arms"]   = { item = 2, texture = 0},  
				["torso2"]   = { item = 56, texture = 0},
				["t-shirt"]   = { item = -1, texture = 0}, 
            }
        }
        TriggerEvent('qb-clothing:client:loadOutfit', tenue452)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue452"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue452", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue453', function()
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue453 = {
            outfitData = {
				["arms"]   = { item = 0, texture = 0},  
				["torso2"]   = { item = 62, texture = 0},
				["t-shirt"]   = { item = -1, texture = 0}, 
            }
        }
        TriggerEvent('qb-clothing:client:loadOutfit', tenue453)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue453"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue453", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue454', function()
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue454 = {
            outfitData = {
				["arms"]   = { item = 0, texture = 0},  
				["torso2"]   = { item = 62, texture = 1},
				["t-shirt"]   = { item = -1, texture = 0}, 
            }
        }
        TriggerEvent('qb-clothing:client:loadOutfit', tenue454)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue454"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue454", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue455', function()
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue455 = {
            outfitData = {
				["arms"]   = { item = 0, texture = 0},  
				["torso2"]   = { item = 62, texture = 2},
				["t-shirt"]   = { item = -1, texture = 0}, 
            }
        }
        TriggerEvent('qb-clothing:client:loadOutfit', tenue455)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue455"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue455", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue456', function()
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue456 = {
            outfitData = {
				["arms"]   = { item = 0, texture = 0},  
				["torso2"]   = { item = 62, texture = 3},
				["t-shirt"]   = { item = -1, texture = 0}, 
            }
        }
        TriggerEvent('qb-clothing:client:loadOutfit', tenue456)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue456"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue456", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue457', function()
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue457 = {
            outfitData = {
				["arms"]   = { item = 0, texture = 0},  
				["torso2"]   = { item = 62, texture = 4},
				["t-shirt"]   = { item = -1, texture = 0}, 
            }
        }
        TriggerEvent('qb-clothing:client:loadOutfit', tenue457)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue457"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue457", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue458', function()
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue458 = {
            outfitData = {
				["arms"]   = { item = 0, texture = 0},  
				["torso2"]   = { item = 62, texture = 5},
				["t-shirt"]   = { item = -1, texture = 0}, 
            }
        }
        TriggerEvent('qb-clothing:client:loadOutfit', tenue458)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue458"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue458", 1)
    end)
end)
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

--EXEMPLE--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- RegisterNetEvent('skins:client:tenueNOMBREICI', function() --numéro de la tenue
	-- TriggerEvent('animations:client:EmoteCommandStart', {"tryclothes2"})
    -- QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, { --1500 = Temps de changement
        -- disableMovement = true, --Ne pas changer
        -- disableCarMovement = false, --Ne pas changer
		-- disableMouse = false, --Ne pas changer
		-- disableCombat = true, --Ne pas changer
    -- }, {}, {}, {}, function() -- Done --Ne pas changer
		-- local ped = PlayerPedId() --Ne pas changer
		-- local tenueNOMBREICI = {
            -- outfitData = {
                -- ["arms"]   = { item = X, texture = X},  --Modèle 3D + Textures
				-- ["torso2"]   = { item = X, texture = X}, --Modèle 3D + Textures
				-- ["EXEMPLE"]   = { item = X, texture = X}, Exemple à remplacer par variables QBCORE
            -- }
        -- }
		-- TriggerEvent('qb-clothing:client:loadOutfit', tenueNOMBREICI) --numéro de la tenue
        -- TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenueNOMBREICI"], "remove") --numéro de la tenue
        -- TriggerServerEvent("QBCore:Server:RemoveItem", "tenueNOMBREICI", 1) --numéro de la tenue
    -- end)
-- end)
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------