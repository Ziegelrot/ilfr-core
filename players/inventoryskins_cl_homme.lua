--#ILFRSKINS, BY ZIEGELROT--

--ILFRCORE LOCAL----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
local QBCore = exports['ilfr-mainserver']:GetCoreObject()
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--ITEM INVENTAIRE---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
---EXEMPLE--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent('skins:client:IDDELATENUE', function() --
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local IDDELATENUE = {
            outfitData = {
                ["arms"]   = { item = -1, texture = 0},   ----BRAS
				["torso2"]   = { item = -1, texture = 0}, --JACKET
				["t-shirt"]   = { item = -1, texture = 0},  --T-SHIRT 
                ["pants"]   = { item = -1, texture = 0},  --PANTALON
				["shoes"]   = { item = -1, texture = 0}, --CHAUSSURE
				["bag"] =  { item = -1, texture = 0}, --SAC
				["accessory"]   = { item = -1, texture = 0},	--NECK ACCESSORY
				["hat"] = { item = -1, texture = 0},	--CHAPEAU
				["vest"] = { item = -1, texture = 0}, 		--VEST/GILET		
            }
        }
        TriggerEvent('qb-clothing:client:loadOutfit', IDDELATENUE)
		TriggerServerEvent("QBCore:Server:RemoveItem", "IDDELATENUE", 1)
    end)
end)
RegisterNetEvent('skins:client:tenueeboueur', function() --
	local PlayerData = QBCore.Functions.GetPlayerData()
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		if PlayerData.charinfo.gender == 0 then
            local eboueurh = {
            outfitData = {
                ["arms"]   = { item = 1, texture = 0},   ----BRAS
				["torso2"]   = { item = 71, texture = 0}, --JACKET
				["t-shirt"]   = { item = 49, texture = 0},  --T-SHIRT 
                ["pants"]   = { item = 36, texture = 0},  --PANTALON
				["shoes"]   = { item = 25, texture = 0}, --CHAUSSURE
				["bag"] =  { item = -1, texture = 0}, --SAC
				["accessory"]   = { item = -1, texture = 0},	--NECK ACCESSORY
				["hat"] = { item = -1, texture = 0},	--CHAPEAU
				["vest"] = { item = -1, texture = 0}, 		--VEST/GILET					
            }
        }
        TriggerEvent('qb-clothing:client:loadOutfit', eboueurh)
            elseif PlayerData.charinfo.gender == 1 then
                local eboueurf = {
            outfitData = {
                ["arms"]   = { item = 3, texture = 0},   ----BRAS
				["torso2"]   = { item = 67, texture = 0}, --JACKET
				["t-shirt"]   = { item = 32, texture = 0},  --T-SHIRT 
                ["pants"]   = { item = 35, texture = 0},  --PANTALON
				["shoes"]   = { item = 24, texture = 0}, --CHAUSSURE
				["bag"] =  { item = -1, texture = 0}, --SAC
				["accessory"]   = { item = -1, texture = 0},	--NECK ACCESSORY
				["hat"] = { item = -1, texture = 0},	--CHAPEAU
				["vest"] = { item = -1, texture = 0}, 		--VEST/GILET					
            }
        }
        TriggerEvent('qb-clothing:client:loadOutfit', eboueurf)
		end
	end)
end)
-------JOURNALISTE---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent('skins:client:tenuejournaliste', function() --Tenue journaliste
	local PlayerData = QBCore.Functions.GetPlayerData()
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
            if PlayerData.charinfo.gender == 0 then
            local journalisth = {
            outfitData = {
                ["arms"]   = { item = 4, texture = 0},   ----BRAS
				["torso2"]   = { item = 12, texture = 0}, --JACKET
				["t-shirt"]   = { item = 15, texture = 0},  --T-SHIRT 
                ["pants"]   = { item = 24, texture = 0},  --PANTALON
				["shoes"]   = { item = 26, texture = 1}, --CHAUSSURE
				["bag"] =  { item = -1, texture = 0}, --SAC
				["accessory"]   = { item = 19, texture = 0},	--NECK ACCESSORY
				["hat"] = { item = -1, texture = 0},	--CHAPEAU
				["vest"] = { item = -1, texture = 0}, 		--VEST/GILET					
            }
        }
        TriggerEvent('qb-clothing:client:loadOutfit', journalisth)
		TriggerServerEvent("QBCore:Server:RemoveItem", "tenuejournaliste", 1)
            elseif PlayerData.charinfo.gender == 1 then
                local journalistf = {
            outfitData = {
                ["arms"]   = { item = 0, texture = 0},   ----BRAS
				["torso2"]   = { item = 41, texture = 0}, --JACKET
				["t-shirt"]   = { item = 15, texture = 0},  --T-SHIRT 
                ["pants"]   = { item = 9, texture = 3},  --PANTALON
				["shoes"]   = { item = 24, texture = 0}, --CHAUSSURE
				["bag"] =  { item = -1, texture = 0}, --SAC
				["accessory"]   = { item = -1, texture = 0},	--NECK ACCESSORY
				["hat"] = { item = -1, texture = 0},	--CHAPEAU
				["vest"] = { item = -1, texture = 0}, 		--VEST/GILET					
            }
        }
        TriggerEvent('qb-clothing:client:loadOutfit', journalistf)
		TriggerServerEvent("QBCore:Server:RemoveItem", "tenuejournaliste", 1)
		end
    end)

end)
--JUNKOST------------------------------------------------------------------------------------------------------
RegisterNetEvent('skins:client:tenuejunko1', function() --Tenu chill Junkost
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenuejunko1 = {
            outfitData = {
                ["arms"]   = { item = 0, texture = 0},   ----BRAS
				["torso2"]   = { item = 181, texture = 0}, --JACKET
				["t-shirt"]   = { item = 9, texture = 9},  --T-SHIRT 
                ["pants"]   = { item = 7, texture = 8},  --PANTALON
				["shoes"]   = { item = 14, texture = 15}, --CHAUSSURE
				["bag"] =  { item = -1, texture = 0}, --SAC
				["accessory"]   = { item = -1, texture = 0},	--NECK ACCESSORY
				["hat"] = { item = -1, texture = 0},	--CHAPEAU
				["vest"] = { item = -1, texture = 0}, 		--VEST/GILET					
            }
        }
        TriggerEvent('qb-clothing:client:loadOutfit', tenuejunko1)
		TriggerServerEvent("QBCore:Server:RemoveItem", "tenuejunko1", 1)
    end)
end)
RegisterNetEvent('skins:client:tenuejunko2', function() --Tenu chill Junkost
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenuejunko2 = {
            outfitData = {
                ["arms"]   = { item = 11, texture = 0},   ----BRAS
				["torso2"]   = { item = 95, texture = 2}, --JACKET
				["t-shirt"]   = { item = 15, texture = 0},  --T-SHIRT 
                ["pants"]   = { item = 22, texture = 3},  --PANTALON
				["shoes"]   = { item = 25, texture = 0}, --CHAUSSURE
				["bag"] =  { item = -1, texture = 0}, --SAC
				["accessory"]   = { item = -1, texture = 0},	--NECK ACCESSORY
				["hat"] = { item = -1, texture = 0},	--CHAPEAU
				["vest"] = { item = -1, texture = 0}, 		--VEST/GILET					
            }
        }
        TriggerEvent('qb-clothing:client:loadOutfit', tenuejunko2)
		TriggerServerEvent("QBCore:Server:RemoveItem", "tenuejunko2", 1)
    end)
end)
RegisterNetEvent('skins:client:tenuejunko3', function() --Tenu chill Junkost
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenuejunko3 = {
            outfitData = {
                ["arms"]   = { item = 0, texture = 0},   ----BRAS
				["torso2"]   = { item = 41, texture = 0}, --JACKET
				["t-shirt"]   = { item = 15, texture = 0},  --T-SHIRT 
                ["pants"]   = { item = 9, texture = 3},  --PANTALON
				["shoes"]   = { item = 24, texture = 0}, --CHAUSSURE
				["bag"] =  { item = -1, texture = 0}, --SAC
				["accessory"]   = { item = -1, texture = 0},	--NECK ACCESSORY
				["hat"] = { item = -1, texture = 0},	--CHAPEAU
				["vest"] = { item = -1, texture = 0}, 		--VEST/GILET					
            }
        }
        TriggerEvent('qb-clothing:client:loadOutfit', tenuejunko3)
		TriggerServerEvent("QBCore:Server:RemoveItem", "tenuejunko3", 1)
    end)
end)


--MEDECIN------------------------------------------------------------------------------------------------------
RegisterNetEvent('skins:client:tenuemedecin', function() --Gilet Stagiaire
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenuemedecin = {
            outfitData = {
                ["vest"] = { item = 3, texture = 2}, 		--VEST/GILET	 
            }
        }
        TriggerEvent('qb-clothing:client:loadOutfit', tenuemedecin)
		TriggerServerEvent("QBCore:Server:RemoveItem", "tenuemedecin", 1)
    end)
end)
RegisterNetEvent('skins:client:tenuemedecin2', function() --Médecin
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenuemedecin2 = {
            outfitData = {
                ["arms"]   = { item = 86, texture = 0},   ----BRAS
				["torso2"]   = { item = 151, texture = 5}, --JACKET
				["t-shirt"]   = { item = 10, texture = 0},  --T-SHIRT 
                ["pants"]   = { item = 35, texture = 0},  --PANTALON
				["shoes"]   = { item = 2, texture = 0}, --CHAUSSURE
				["bag"] =  { item = -1, texture = 0}, --SAC
				["accessory"]   = { item = 15, texture = 0},	--NECK ACCESSORY
				["hat"] = { item = 122, texture = 0},	--CHAPEAU
				["vest"] = { item = -1, texture = 0}, 		--VEST/GILET	   
            }
        }
        TriggerEvent('qb-clothing:client:loadOutfit', tenuemedecin2)
		TriggerServerEvent("QBCore:Server:RemoveItem", "tenuemedecin2", 1)
    end)
end)
RegisterNetEvent('skins:client:tenuemedecin3', function() --Docteur
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenuemedecin3 = {
            outfitData = {
                ["arms"]   = { item = 85, texture = 0},   ----BRAS
				["torso2"]   = { item = 86, texture = 2}, --JACKET
				["t-shirt"]   = { item = -1, texture = -1},  --T-SHIRT 
                ["pants"]   = { item = 129, texture = 7},  --PANTALON
				["shoes"]   = { item = 2, texture = 0}, --CHAUSSURE
				["bag"] =  { item = -1, texture = 0}, --SAC
				["accessory"]   = { item = 30, texture = 0},	--NECK ACCESSORY
				["hat"] = { item = -1, texture = 0},	--CHAPEAU
				["vest"] = { item = -1, texture = 0}, 		--VEST/GILET	
            }
        }
        TriggerEvent('qb-clothing:client:loadOutfit', tenuemedecin3)
		TriggerServerEvent("QBCore:Server:RemoveItem", "tenuemedecin3", 1)
    end)
end)
--POLICE-------------------------------------------------------------------------------------------------------
RegisterNetEvent('skins:client:tenuepolice', function() --stagiaire
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenuepolice = {
            outfitData = {
                ["arms"]   = { item = 0, texture = 0},  
				["torso2"]   = { item = 190, texture = 0},
				["t-shirt"]   = { item = 53, texture = 0},  
                ["pants"]   = { item = 49, texture = 1},  
				["shoes"]   = { item = 2, texture = 0}, 
				["bag"] =  { item = -1, texture = 0}, 
				["accessory"]   = { item = -1, texture = 0},	
				["hat"] = { item = -1, texture = 0},	
				["vest"] = { item = 3, texture = 0}, 				
            }
        }
        TriggerEvent('qb-clothing:client:loadOutfit', tenuepolice)
		TriggerServerEvent("QBCore:Server:RemoveItem", "tenuepolice", 1)
    end)
end)
RegisterNetEvent('skins:client:tenuepolice2', function() --Cadet
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenuepolice2 = {
            outfitData = {
                ["arms"]   = { item = 0, texture = 0},  
				["torso2"]   = { item = 190, texture = 0},
				["t-shirt"]   = { item = 53, texture = 0},  
                ["pants"]   = { item = 49, texture = 1},  
				["shoes"]   = { item = 2, texture = 0}, 
				["bag"] =  { item = -1, texture = 0}, 
				["accessory"]   = { item = -1, texture = 0},	
				["hat"] = { item = -1, texture = 0},
				["vest"] = { item = -1, texture = 0},				
            }
        }
        TriggerEvent('qb-clothing:client:loadOutfit', tenuepolice2)
		TriggerServerEvent("QBCore:Server:RemoveItem", "tenuepolice2", 1)
    end)
end)
RegisterNetEvent('skins:client:tenuepolice3', function() --Officier de police
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenuepolice3 = {
            outfitData = {
                ["arms"]   = { item = 1, texture = 0},  
				["torso2"]   = { item = 193, texture = 0},
				["t-shirt"]   = { item = 153, texture = 0},  
                ["pants"]   = { item = 49, texture = 1},  
				["shoes"]   = { item = 2, texture = 0}, 
				["bag"] =  { item = -1, texture = 0}, 
				["accessory"]   = { item = 58, texture = 0}, 
				["hat"] = { item = 1, texture = 0},	
				["vest"] = { item = -1, texture = 0},				
            }
        }
        TriggerEvent('qb-clothing:client:loadOutfit', tenuepolice3)
		TriggerServerEvent("QBCore:Server:RemoveItem", "tenuepolice3", 1)
    end)
end)
RegisterNetEvent('skins:client:tenuepolice4', function() --Détective
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenuepolice4 = {
            outfitData = {
                ["arms"]   = { item = 1, texture = 0},  
				["torso2"]   = { item = 187, texture = 0},
				["t-shirt"]   = { item = 27, texture = 0},  
                ["pants"]   = { item = 10, texture = 3},  
				["shoes"]   = { item = 2, texture = 0}, 
				["accessory"]   = { item = 58, texture = 0}, 
				["bag"]   = { item = 59, texture = 5}, 
				["hat"] = { item = -1, texture = 0},
				["vest"] = { item = -1, texture = 0},
            }
        }
        TriggerEvent('qb-clothing:client:loadOutfit', tenuepolice4)
		TriggerServerEvent("QBCore:Server:RemoveItem", "tenuepolice4", 1)
    end)
end)
RegisterNetEvent('skins:client:tenuepolice5', function() --Sergent
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenuepolice5 = {
            outfitData = {
                ["arms"]   = { item = 1, texture = 0},  
				["torso2"]   = { item = 200, texture = 0},
				["t-shirt"]   = { item = 129, texture = 0},  
                ["pants"]   = { item = 49, texture = 1},  
				["shoes"]   = { item = 2, texture = 0}, 
				["accessory"]   = { item = 1, texture = 0}, 
				["bag"]   = { item = 74, texture = 1}, 
				["hat"] = { item = -1, texture = 0},	
				["vest"] = { item = -1, texture = 0},				
            }
        }
        TriggerEvent('qb-clothing:client:loadOutfit', tenuepolice5)
		TriggerServerEvent("QBCore:Server:RemoveItem", "tenuepolice5", 1)
    end)
end)
RegisterNetEvent('skins:client:tenuepolice6', function() --Lieutenant
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenuepolice6 = {
            outfitData = {
                ["arms"]   = { item = 1, texture = 0},  
				["torso2"]   = { item = 80, texture = 1},
				["t-shirt"]   = { item = 16, texture = 0},  
                ["pants"]   = { item = 49, texture = 1},  
				["shoes"]   = { item = 2, texture = 0}, 
				["accessory"]   = { item = -1, texture = 0}, 
				["bag"]   = { item = 58, texture = 0},
				["hat"] = { item = -1, texture = 0},
				["vest"] = { item = -1, texture = 0},
            }
        }
        TriggerEvent('qb-clothing:client:loadOutfit', tenuepolice6)
		TriggerServerEvent("QBCore:Server:RemoveItem", "tenuepolice6", 1)
    end)
end)
RegisterNetEvent('skins:client:tenuepolice7', function() --Capitaine
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenuepolice7 = {
            outfitData = {
                ["arms"]   = { item = 1, texture = 0},  
				["torso2"]   = { item = 196, texture = 14},
				["t-shirt"]   = { item = 154, texture = 0},  
                ["pants"]   = { item = 49, texture = 1},  
				["shoes"]   = { item = 2, texture = 0}, 
				["accessory"]   = { item = 1, texture = 0}, 
				["bag"]   = { item = 52, texture = 3},
				["hat"] = { item = -1, texture = 0},
				["vest"] = { item = -1, texture = 0},
            }
        }
        TriggerEvent('qb-clothing:client:loadOutfit', tenuepolice7)
		TriggerServerEvent("QBCore:Server:RemoveItem", "tenuepolice7", 1)
    end)
end)
RegisterNetEvent('skins:client:tenuepolice8', function() --Chef adjoint
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenuepolice8 = {
            outfitData = {
                ["arms"]   = { item = 1, texture = 0},  
				["torso2"]   = { item = 196, texture = 15},
				["t-shirt"]   = { item = 154, texture = 0},  
                ["pants"]   = { item = 49, texture = 1},  
				["shoes"]   = { item = 2, texture = 0}, 
				["accessory"]   = { item = 15, texture = 0}, 
				["bag"]   = { item = 52, texture = 7},
				["hat"] = { item = -1, texture = 0},
				["vest"] = { item = -1, texture = 0},
            }
        }
        TriggerEvent('qb-clothing:client:loadOutfit', tenuepolice8)
		TriggerServerEvent("QBCore:Server:RemoveItem", "tenuepolice8", 1)
    end)
end)
RegisterNetEvent('skins:client:tenuepolice9', function() --Chef 
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenuepolice9 = {
            outfitData = {
                ["arms"]   = { item = 1, texture = 0},  
				["torso2"]   = { item = 196, texture = 15},
				["t-shirt"]   = { item = 88, texture = 0},  
                ["pants"]   = { item = 49, texture = 1},  
				["shoes"]   = { item = 2, texture = 0}, 
				["accessory"]   = { item = -1, texture = 0}, 
				["bag"]   = { item = 52, texture = 8},
				["hat"] = { item = 113, texture = 1},
				["vest"] = { item = -1, texture = 0},
            }
        }
        TriggerEvent('qb-clothing:client:loadOutfit', tenuepolice9)
		TriggerServerEvent("QBCore:Server:RemoveItem", "tenuepolice9", 1)
    end)
end)
--HOMME-------------------------------------------------------------------------------------------------------
RegisterNetEvent('skins:client:tenue0', function() --Jean foncé
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue0 = {
            outfitData = {
                ["pants"]   = { item = 0, texture = 1},  
            }
        }
        TriggerEvent('qb-clothing:client:loadOutfit', tenue0)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue0"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue0", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue1', function() --Jogging blanc à rayure noire
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue1 = {
            outfitData = {
                ["pants"]   = { item = 3, texture = 0},  
            }
        }
        TriggerEvent('qb-clothing:client:loadOutfit', tenue1)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue1"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue1", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue2', function() --Jean noir
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue2 = {
            outfitData = {
                ["pants"]   = { item = 4, texture = 1},  
            }
        }
        TriggerEvent('qb-clothing:client:loadOutfit', tenue2)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue2"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue2", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue3', function() --Jean bleu-ciel
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue3 = {
            outfitData = {
                ["pants"]   = { item = 4, texture = 1},  
            }
        }
        TriggerEvent('qb-clothing:client:loadOutfit', tenue3)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue3"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue3", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue4', function() --Short gris
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue4 = {
            outfitData = {
                ["pants"]   = { item = 6, texture = 2},  
            }
        }
        TriggerEvent('qb-clothing:client:loadOutfit', tenue4)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue4"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue4", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue5', function() --Pantalon marron
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue5 = {
            outfitData = {
                ["pants"]   = { item = 0, texture = 3},  
            }
        }
        TriggerEvent('qb-clothing:client:loadOutfit', tenue5)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue5"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue5", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue6', function() --Pantalon jaune
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue6 = {
            outfitData = {
                ["pants"]   = { item = 27, texture = 0},  
            }
        }
        TriggerEvent('qb-clothing:client:loadOutfit', tenue6)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue6"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue6", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue7', function() --Pantalon bleu
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue7 = {
            outfitData = {
                ["pants"]   = { item = 27, texture = 1},  
            }
        }
        TriggerEvent('qb-clothing:client:loadOutfit', tenue7)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue7"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue7", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue8', function() --Baggy court
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue8 = {
            outfitData = {
                ["pants"]   = { item = 42, texture = 0},  
            }
        }
        TriggerEvent('qb-clothing:client:loadOutfit', tenue8)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue8"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue8", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue9', function() --Pantalon rose
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue9 = {
            outfitData = {
                ["pants"]   = { item = 50, texture = 0},  
            }
        }
        TriggerEvent('qb-clothing:client:loadOutfit', tenue9)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue9"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue9", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue10', function() --Baggy noir à rayure blanche
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue10 = {
            outfitData = {
                ["pants"]   = { item = 55, texture = 0},  
            }
        }
        TriggerEvent('qb-clothing:client:loadOutfit', tenue10)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue10"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue10", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue11', function() --Pantalon à motifs
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue11 = {
            outfitData = {
                ["pants"]   = { item = 60, texture = 0},  
            }
        }
        TriggerEvent('qb-clothing:client:loadOutfit', tenue11)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue11"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue11", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue12', function() --Pantalon à motifs rouge
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue12 = {
            outfitData = {
                ["pants"]   = { item = 60, texture = 1},  
            }
        }
        TriggerEvent('qb-clothing:client:loadOutfit', tenue12)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue12"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue12", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue13', function() --Pantalon à motifs gris
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue13 = {
            outfitData = {
                ["pants"]   = { item = 60, texture = 2},  
            }
        }
        TriggerEvent('qb-clothing:client:loadOutfit', tenue13)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue13"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue13", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue14', function() --Baggy bleu-ciel en jean
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue14 = {
            outfitData = {
                ["pants"]   = { item = 62, texture = 2},  
            }
        }
        TriggerEvent('qb-clothing:client:loadOutfit', tenue14)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue14"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue14", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue15', function() --Pantalon à étoiles noir
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue15 = {
            outfitData = {
                ["pants"]   = { item = 68, texture = 3},  
            }
        }
        TriggerEvent('qb-clothing:client:loadOutfit', tenue15)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue15"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue15", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue16', function() --Pantalon à étoiles bleu
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue16 = {
            outfitData = {
                ["pants"]   = { item = 68, texture = 1},  
            }
        }
        TriggerEvent('qb-clothing:client:loadOutfit', tenue16)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue16"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue16", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue17', function() --Pantalon tête de mort
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue17 = {
            outfitData = {
                ["pants"]   = { item = 69, texture = 0},  
            }
        }
        TriggerEvent('qb-clothing:client:loadOutfit', tenue17)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue17"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue17", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue18', function() --Pantalon camouflage fôret
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue18 = {
            outfitData = {
                ["pants"]   = { item = 69, texture = 1},  
            }
        }
        TriggerEvent('qb-clothing:client:loadOutfit', tenue18)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue18"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue18", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue19', function() --Pantalon camouflage digital
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue19 = {
            outfitData = {
                ["pants"]   = { item = 69, texture = 2},  
            }
        }
        TriggerEvent('qb-clothing:client:loadOutfit', tenue19)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue19"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue19", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue20', function() --Pantalon vert à étoiles
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue20 = {
            outfitData = {
                ["pants"]   = { item = 69, texture = 4},  
            }
        }
        TriggerEvent('qb-clothing:client:loadOutfit', tenue20)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue20"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue20", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue21', function() --Pantalon en cuir noir
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local ped = PlayerPedId()
		local tenue21 = {
            outfitData = {
                ["pants"]   = { item = 71, texture = 0},  
            }
        }
        TriggerEvent('qb-clothing:client:loadOutfit', tenue21)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue21"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue21", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue22', function() --Pantalon en cuir rouge
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local ped = PlayerPedId()
		local tenue22 = {
            outfitData = {
                ["pants"]   = { item = 71, texture = 1},  
            }
        }
        TriggerEvent('qb-clothing:client:loadOutfit', tenue22)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue22"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue22", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue23', function() --Pantalon en cuir à motifs
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local ped = PlayerPedId()
		local tenue23 = {
            outfitData = {
                ["pants"]   = { item = 73, texture = 0},  
            }
        }
        TriggerEvent('qb-clothing:client:loadOutfit', tenue23)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue23"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue23", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue24', function() --Jean vintage
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local ped = PlayerPedId()
		local tenue24 = {
            outfitData = {
                ["pants"]   = { item = 75, texture = 0},  
            }
        }
        TriggerEvent('qb-clothing:client:loadOutfit', tenue24)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue24"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue24", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue25', function() --Jean troué
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local ped = PlayerPedId()
		local tenue25 = {
            outfitData = {
                ["pants"]   = { item = 76, texture = 0},  
            }
        }
        TriggerEvent('qb-clothing:client:loadOutfit', tenue25)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue25"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue25", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue26', function() --Veste noire
	TriggerEvent('animations:client:EmoteCommandStart', {"tryclothes2"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue26 = {
            outfitData = {
                ["arms"]   = { item = 14, texture = 0},  
				["torso2"]   = { item = 6, texture = 0},
				["t-shirt"]   = { item = -1, texture = 0},
            }
        }
        TriggerEvent('qb-clothing:client:loadOutfit', tenue26)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue26"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue26", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue27', function() --Débardeur blanc
	TriggerEvent('animations:client:EmoteCommandStart', {"tryclothes2"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue27 = {
            outfitData = {
                ["arms"]   = { item = 5, texture = 0},  
				["torso2"]   = { item = 5, texture = 0},
				["t-shirt"]   = { item = -1, texture = 0},
            }
        }
        TriggerEvent('qb-clothing:client:loadOutfit', tenue27)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue27"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue27", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue28', function() --Veste blanche à capuche
	TriggerEvent('animations:client:EmoteCommandStart', {"tryclothes2"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue28 = {
            outfitData = {
                ["arms"]   = { item = 14, texture = 0},  
				["torso2"]   = { item = 7, texture = 0}, 
				["t-shirt"]   = { item = -1, texture = 0},
            }
        }
        TriggerEvent('qb-clothing:client:loadOutfit', tenue28)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue28"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue28", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue29', function() --Veste noire à capuche
	TriggerEvent('animations:client:EmoteCommandStart', {"tryclothes2"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue29 = {
            outfitData = {
                ["arms"]   = { item = 14, texture = 0},  
				["torso2"]   = { item = 7, texture = 2}, 
				["t-shirt"]   = { item = -1, texture = 0},
            }
        }
        TriggerEvent('qb-clothing:client:loadOutfit', tenue29)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue29"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue29", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue30', function() --Pull bleu et rouge
	TriggerEvent('animations:client:EmoteCommandStart', {"tryclothes2"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue30 = {
            outfitData = {
                ["arms"]   = { item = 8, texture = 0},  
				["torso2"]   = { item = 8, texture = 0}, 
				["t-shirt"]   = { item = -1, texture = 0},
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue30)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue30"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue30", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue31', function() --Polo blanc et bleu
	TriggerEvent('animations:client:EmoteCommandStart', {"tryclothes2"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue31 = {
            outfitData = {
                ["arms"]   = { item = 0, texture = 0},  
				["torso2"]   = { item = 9, texture = 0}, 
				["t-shirt"]   = { item = -1, texture = 0},
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue31)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue31"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue31", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue32', function() --Polo gris
	TriggerEvent('animations:client:EmoteCommandStart', {"tryclothes2"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue32 = {
            outfitData = {
                ["arms"]   = { item = 0, texture = 0},  
				["torso2"]   = { item = 9, texture = 1}, 
				["t-shirt"]   = { item = -1, texture = 0},
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue32)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue32"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue32", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue33', function() --Polo noir
	TriggerEvent('animations:client:EmoteCommandStart', {"tryclothes2"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue33 = {
            outfitData = {
                ["arms"]   = { item = 0, texture = 0},  
				["torso2"]   = { item = 9, texture = 2},
				["t-shirt"]   = { item = -1, texture = 0},				
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue33)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue33"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue33", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue34', function() --Polo rose
	TriggerEvent('animations:client:EmoteCommandStart', {"tryclothes2"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue34 = {
            outfitData = {
                ["arms"]   = { item = 0, texture = 0},  
				["torso2"]   = { item = 9, texture = 3}, 
				["t-shirt"]   = { item = -1, texture = 0},
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue34)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue34"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue34", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue35', function() --Polo bleu
	TriggerEvent('animations:client:EmoteCommandStart', {"tryclothes2"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue35 = {
            outfitData = {
                ["arms"]   = { item = 0, texture = 0},  
				["torso2"]   = { item = 9, texture = 4}, 
				["t-shirt"]   = { item = -1, texture = 0},
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue35)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue35"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue35", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue36', function() --Polo orange
	TriggerEvent('animations:client:EmoteCommandStart', {"tryclothes2"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue36 = {
            outfitData = {
                ["arms"]   = { item = 0, texture = 0},  
				["torso2"]   = { item = 9, texture = 5}, 
				["t-shirt"]   = { item = -1, texture = 0},
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue36)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue36"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue36", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue37', function() --Polo rouge
	TriggerEvent('animations:client:EmoteCommandStart', {"tryclothes2"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue37 = {
            outfitData = {
                ["arms"]   = { item = 0, texture = 0},  
				["torso2"]   = { item = 9, texture = 14}, 
				["t-shirt"]   = { item = -1, texture = 0},
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue37)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue37"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue37", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue38', function() --Chemise à rayures bleu
	TriggerEvent('animations:client:EmoteCommandStart', {"tryclothes2"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue38 = {
            outfitData = {
                ["arms"]   = { item = 1, texture = 0},  
				["torso2"]   = { item = 14, texture = 0}, 
				["t-shirt"]   = { item = -1, texture = 0},
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue38)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue38"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue38", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue39', function() --Chemise jaune à rayures
	TriggerEvent('animations:client:EmoteCommandStart', {"tryclothes2"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue39 = {
            outfitData = {
                ["arms"]   = { item = 1, texture = 0},  
				["torso2"]   = { item = 14, texture = 1}, 
				["t-shirt"]   = { item = -1, texture = 0},
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue39)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue39"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue39", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue40', function() --Chemise verte à rayures
	TriggerEvent('animations:client:EmoteCommandStart', {"tryclothes2"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue40 = {
            outfitData = {
                ["arms"]   = { item = 1, texture = 0},  
				["torso2"]   = { item = 14, texture = 2}, 
				["t-shirt"]   = { item = -1, texture = 0},
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue40)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue40"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue40", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue41', function() --Chemise verte à rayures jaune
	TriggerEvent('animations:client:EmoteCommandStart', {"tryclothes2"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue41 = {
            outfitData = {
                ["arms"]   = { item = 1, texture = 0},  
				["torso2"]   = { item = 14, texture = 3}, 
				["t-shirt"]   = { item = -1, texture = 0},
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue41)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue41"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue41", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue42', function() --Chemise verte à rayures rouge
	TriggerEvent('animations:client:EmoteCommandStart', {"tryclothes2"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue42 = {
            outfitData = {
                ["arms"]   = { item = 1, texture = 0},  
				["torso2"]   = { item = 14, texture = 4}, 
				["t-shirt"]   = { item = -1, texture = 0},
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue42)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue42"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue42", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue43', function() --Chemise verte à rayures rouge/noire
	TriggerEvent('animations:client:EmoteCommandStart', {"tryclothes2"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue43 = {
            outfitData = {
                ["arms"]   = { item = 1, texture = 0},  
				["torso2"]   = { item = 14, texture = 5}, 
				["t-shirt"]   = { item = -1, texture = 0},
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue43)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue43"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue43", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue44', function() --Chemise verte à rayures verte/noire
	TriggerEvent('animations:client:EmoteCommandStart', {"tryclothes2"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue44 = {
            outfitData = {
                ["arms"]   = { item = 1, texture = 0},  
				["torso2"]   = { item = 14, texture = 6}, 
				["t-shirt"]   = { item = -1, texture = 0},
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue44)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue44"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue44", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue45', function() --Chemise noire à rayures
	TriggerEvent('animations:client:EmoteCommandStart', {"tryclothes2"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue45 = {
            outfitData = {
                ["arms"]   = { item = 1, texture = 0},  
				["torso2"]   = { item = 14, texture = 7}, 
				["t-shirt"]   = { item = -1, texture = 0},
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue45)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue45"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue45", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue46', function() --Chemise style militaire
	TriggerEvent('animations:client:EmoteCommandStart', {"tryclothes2"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue46 = {
            outfitData = {
                ["arms"]   = { item = 2, texture = 0},  
				["torso2"]   = { item = 37, texture = 0}, 
				["t-shirt"]   = { item = -1, texture = 0},
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue46)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue46"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue46", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue47', function() --Chemise noire
	TriggerEvent('animations:client:EmoteCommandStart', {"tryclothes2"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue47 = {
            outfitData = {
                ["arms"]   = { item = 2, texture = 0},  
				["torso2"]   = { item = 37, texture = 1}, 
				["t-shirt"]   = { item = -1, texture = 0},
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue47)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue47"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue47", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue48', function() --Chemise bleu
	TriggerEvent('animations:client:EmoteCommandStart', {"tryclothes2"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue48 = {
            outfitData = {
                ["arms"]   = { item = 2, texture = 0},  
				["torso2"]   = { item = 37, texture = 2}, 
				["t-shirt"]   = { item = -1, texture = 0},
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue48)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue48"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue48", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue49', function() --blouson noir
	TriggerEvent('animations:client:EmoteCommandStart', {"tryclothes2"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue49 = {
            outfitData = {
                ["arms"]   = { item = 14, texture = 0},  
				["torso2"]   = { item = 38, texture = 0}, 
				["t-shirt"]   = { item = -1, texture = 0},
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue49)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue49"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue49", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue50', function() --chaussures noires
	TriggerEvent('animations:client:EmoteCommandStart', {"tryclothes2"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue50 = {
            outfitData = {
				["shoes"]   = { item = 1, texture = 0}, 
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue50)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue50"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue50", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue51', function() --chaussures blanches
	TriggerEvent('animations:client:EmoteCommandStart', {"tryclothes2"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue51 = {
            outfitData = {
				["shoes"]   = { item = 1, texture = 1}, 
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue51)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue51"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue51", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue52', function() --chaussures roses
	TriggerEvent('animations:client:EmoteCommandStart', {"tryclothes2"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue52 = {
            outfitData = {
				["shoes"]   = { item = 1, texture = 3}, 
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue52)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue52"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue52", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue53', function() --basket noire
	TriggerEvent('animations:client:EmoteCommandStart', {"tryclothes2"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue53 = {
            outfitData = {
				["shoes"]   = { item = 2, texture = 0}, 
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue53)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue53"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue53", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue54', function() --converse bleu
	TriggerEvent('animations:client:EmoteCommandStart', {"tryclothes2"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue54 = {
            outfitData = {
				["shoes"]   = { item = 4, texture = 0}, 
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue54)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue54"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue54", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue55', function() --claquette blanche
	TriggerEvent('animations:client:EmoteCommandStart', {"tryclothes2"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue55 = {
            outfitData = {
				["shoes"]   = { item = 5, texture = 0}, 
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue55)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue55"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue55", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue56', function() --claquette grise
	TriggerEvent('animations:client:EmoteCommandStart', {"tryclothes2"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue56 = {
            outfitData = {
				["shoes"]   = { item = 5, texture = 1}, 
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue56)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue56"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue56", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue57', function() --claquette noire
	TriggerEvent('animations:client:EmoteCommandStart', {"tryclothes2"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue57 = {
            outfitData = {
				["shoes"]   = { item = 5, texture = 2}, 
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue57)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue57"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue57", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue58', function() --claquette verte
	TriggerEvent('animations:client:EmoteCommandStart', {"tryclothes2"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue58 = {
            outfitData = {
				["shoes"]   = { item = 5, texture = 3}, 
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue58)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue58"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue58", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue59', function() --chausson noire
	TriggerEvent('animations:client:EmoteCommandStart', {"tryclothes2"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue59 = {
            outfitData = {
				["shoes"]   = { item = 6, texture = 0}, 
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue59)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue59"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue59", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue60', function() --chausson bleu
	TriggerEvent('animations:client:EmoteCommandStart', {"tryclothes2"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue60 = {
            outfitData = {
				["shoes"]   = { item = 6, texture = 1}, 
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue60)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue60"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue60", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue61', function() --chaussure blanche
	TriggerEvent('animations:client:EmoteCommandStart', {"tryclothes2"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue61 = {
            outfitData = {
				["shoes"]   = { item = 7, texture = 0}, 
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue61)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue61"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue61", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue62', function() --chaussure grise
	TriggerEvent('animations:client:EmoteCommandStart', {"tryclothes2"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue62 = {
            outfitData = {
				["shoes"]   = { item = 7, texture = 1}, 
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue62)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue62"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue62", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue63', function() --chaussure noire
	TriggerEvent('animations:client:EmoteCommandStart', {"tryclothes2"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue63 = {
            outfitData = {
				["shoes"]   = { item = 7, texture = 2}, 
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue63)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue63"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue63", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue64', function() --chaussure verte
	TriggerEvent('animations:client:EmoteCommandStart', {"tryclothes2"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue64 = {
            outfitData = {
				["shoes"]   = { item = 7, texture = 3}, 
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue64)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue64"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue64", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue65', function() --chaussure bleu
	TriggerEvent('animations:client:EmoteCommandStart', {"tryclothes2"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue65 = {
            outfitData = {
				["shoes"]   = { item = 7, texture = 4}, 
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue65)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue65"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue65", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue66', function() --chaussure rouge
	TriggerEvent('animations:client:EmoteCommandStart', {"tryclothes2"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue66 = {
            outfitData = {
				["shoes"]   = { item = 7, texture = 5}, 
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue66)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue66"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue66", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue67', function() --chaussure rouge et noire
	TriggerEvent('animations:client:EmoteCommandStart', {"tryclothes2"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue67 = {
            outfitData = {
				["shoes"]   = { item = 7, texture = 6}, 
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue67)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue67"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue67", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue68', function() --chaussure orange
	TriggerEvent('animations:client:EmoteCommandStart', {"tryclothes2"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue68 = {
            outfitData = {
				["shoes"]   = { item = 7, texture = 7}, 
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue68)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue68"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue68", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue69', function() --chaussure verte
	TriggerEvent('animations:client:EmoteCommandStart', {"tryclothes2"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue69 = {
            outfitData = {
				["shoes"]   = { item = 7, texture = 8}, 
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue69)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue69"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue69", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue70', function() --chaussure rouge et blanche
	TriggerEvent('animations:client:EmoteCommandStart', {"tryclothes2"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue70 = {
            outfitData = {
				["shoes"]   = { item = 7, texture = 9}, 
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue70)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue70"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue70", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue71', function() --chaussure orange et noire
	TriggerEvent('animations:client:EmoteCommandStart', {"tryclothes2"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue71 = {
            outfitData = {
				["shoes"]   = { item = 7, texture = 11}, 
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue71)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue71"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue71", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue72', function() --bonnet vert
	TriggerEvent('animations:client:EmoteCommandStart', {"tryclothes2"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue72 = {
            outfitData = {
				["hat"]   = { item = 2, texture = 0}, 
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue72)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue72"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue72", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue73', function() --bonnet noir
	TriggerEvent('animations:client:EmoteCommandStart', {"tryclothes2"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue73 = {
            outfitData = {
				["hat"]   = { item = 2, texture = 1}, 
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue73)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue73"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue73", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue74', function() --bonnet gris
	TriggerEvent('animations:client:EmoteCommandStart', {"tryclothes2"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue74 = {
            outfitData = {
				["hat"]   = { item = 2, texture = 2}, 
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue74)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue74"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue74", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue75', function() --bonnet marron
	TriggerEvent('animations:client:EmoteCommandStart', {"tryclothes2"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue75 = {
            outfitData = {
				["hat"]   = { item = 2, texture = 3}, 
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue75)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue75"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue75", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue76', function() --bonnet vert
	TriggerEvent('animations:client:EmoteCommandStart', {"tryclothes2"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue76 = {
            outfitData = {
				["hat"]   = { item = 2, texture = 4}, 
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue76)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue76"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue76", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue77', function() --casquette à l'envers violette
	TriggerEvent('animations:client:EmoteCommandStart', {"tryclothes2"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue77 = {
            outfitData = { 
				["hat"]   = { item = 9, texture = 7},
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue77)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue77"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue77", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue78', function() --bob vert
	TriggerEvent('animations:client:EmoteCommandStart', {"tryclothes2"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue78 = {
            outfitData = {
				["hat"]   = { item = 20, texture = 0}, 
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue78)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue78"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue78", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue79', function() --bob gris
	TriggerEvent('animations:client:EmoteCommandStart', {"tryclothes2"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue79 = {
            outfitData = {
				["hat"]   = { item = 20, texture = 1}, 
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue79)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue79"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue79", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue80', function() --bob camouflage gris
	TriggerEvent('animations:client:EmoteCommandStart', {"tryclothes2"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue80 = {
            outfitData = {
				["hat"]   = { item = 20, texture = 2}, 
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue80)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue80"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue80", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue81', function() --bob rouge
	TriggerEvent('animations:client:EmoteCommandStart', {"tryclothes2"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue81 = {
            outfitData = {
				["hat"]   = { item = 20, texture = 3}, 
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue81)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue81"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue81", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue82', function() --bob à motifs
	TriggerEvent('animations:client:EmoteCommandStart', {"tryclothes2"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue82 = {
            outfitData = {
				["hat"]   = { item = 20, texture = 4}, 
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue82)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue82"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue82", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue83', function() --bob camouflage armée
	TriggerEvent('animations:client:EmoteCommandStart', {"tryclothes2"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue83 = {
            outfitData = {
				["hat"]   = { item = 20, texture = 5}, 
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue83)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue83"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue83", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue84', function() --bonnet america
	TriggerEvent('animations:client:EmoteCommandStart', {"tryclothes2"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue84 = {
            outfitData = {
				["hat"]   = { item = 34, texture = 0}, 
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue84)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue84"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue84", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue85', function() --casquette Naughty
	TriggerEvent('animations:client:EmoteCommandStart', {"tryclothes2"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue85 = {
            outfitData = {
				["hat"]   = { item = 44, texture = 0}, 
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue85)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue85"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue85", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue86', function() --casquette noire à motif
	TriggerEvent('animations:client:EmoteCommandStart', {"tryclothes2"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue86 = {
            outfitData = {
				["hat"]   = { item = 44, texture = 1}, 
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue86)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue86"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue86", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue87', function() --casquette bleu à motif
	TriggerEvent('animations:client:EmoteCommandStart', {"tryclothes2"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue87 = {
            outfitData = {
				["hat"]   = { item = 44, texture = 2}, 
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue87)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue87"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue87", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue88', function() --casquette rouge nice!
	TriggerEvent('animations:client:EmoteCommandStart', {"tryclothes2"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue88 = {
            outfitData = {
				["hat"]   = { item = 44, texture = 3}, 
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue88)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue88"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue88", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue89', function() --casquette verte à motifs
	TriggerEvent('animations:client:EmoteCommandStart', {"tryclothes2"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue89 = {
            outfitData = {
				["hat"]   = { item = 44, texture = 4}, 
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue89)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue89"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue89", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue90', function() --casquette de noel
	TriggerEvent('animations:client:EmoteCommandStart', {"tryclothes2"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue90 = {
            outfitData = {
				["hat"]   = { item = 44, texture = 5}, 
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue90)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue90"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue90", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue91', function() --casquette marron petit biscuit
	TriggerEvent('animations:client:EmoteCommandStart', {"tryclothes2"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue91 = {
            outfitData = {
				["hat"]   = { item = 44, texture = 6}, 
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue91)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue91"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue91", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue92', function() --casquette bah humbug
	TriggerEvent('animations:client:EmoteCommandStart', {"tryclothes2"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue92 = {
            outfitData = {
				["hat"]   = { item = 44, texture = 7}, 
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue92)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue92"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue92", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue93', function() --casquette verte F
	TriggerEvent('animations:client:EmoteCommandStart', {"tryclothes2"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue93 = {
            outfitData = {
				["hat"]   = { item = 54, texture = 0}, 
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue93)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue93"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue93", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue94', function() --casquette violette F
	TriggerEvent('animations:client:EmoteCommandStart', {"tryclothes2"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue94 = {
            outfitData = {
				["hat"]   = { item = 54, texture = 1}, 
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue94)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue94"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue94", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue95', function() --casquette broker rouge
	TriggerEvent('animations:client:EmoteCommandStart', {"tryclothes2"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue95 = {
            outfitData = {
				["hat"]   = { item = 55, texture = 0}, 
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue95)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue95"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue95", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue96', function() --casquette broker noire
	TriggerEvent('animations:client:EmoteCommandStart', {"tryclothes2"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue96 = {
            outfitData = {
				["hat"]   = { item = 55, texture = 1}, 
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue96)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue96"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue96", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue97', function() --casquette marron trickster
	TriggerEvent('animations:client:EmoteCommandStart', {"tryclothes2"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue97 = {
            outfitData = {
				["hat"]   = { item = 55, texture = 2}, 
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue97)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue97"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue97", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue98', function() --casquette bleu et orange
	TriggerEvent('animations:client:EmoteCommandStart', {"tryclothes2"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue98 = {
            outfitData = {
				["hat"]   = { item = 55, texture = 3}, 
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue98)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue98"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue98", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue99', function() --lunette noire
	TriggerEvent('animations:client:EmoteCommandStart', {"tryclothes2"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue99 = {
            outfitData = {
				["glass"]   = { item = 1, texture = 1}, 
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue99)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue99"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue99", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue100', function() --lunette noire relevée
	TriggerEvent('animations:client:EmoteCommandStart', {"tryclothes2"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue100 = {
            outfitData = {
				["glass"]   = { item = 6, texture = 0}, 
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue100)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue100"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue100", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue101', function() --lunette noire relevée
	TriggerEvent('animations:client:EmoteCommandStart', {"tryclothes2"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue101 = {
            outfitData = {
				["glass"]   = { item = 40, texture = 0}, 
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue101)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue101"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue101", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue102', function() --Chemise blanche
	TriggerEvent('animations:client:EmoteCommandStart', {"tryclothes2"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue102 = {
            outfitData = {
				["arms"]   = { item = 1, texture = 0},  
				["torso2"]   = { item = 3, texture = 0},
				["t-shirt"]   = { item = -1, texture = 0}, --Debug t-shirt blanc en dessous, pas touche :c !
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue102)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue102"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue102", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue103', function() --Chemise grise
	TriggerEvent('animations:client:EmoteCommandStart', {"tryclothes2"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue103 = {
            outfitData = {
				["arms"]   = { item = 1, texture = 0},  
				["torso2"]   = { item = 3, texture = 1},
				["t-shirt"]   = { item = -1, texture = 0}, --Debug t-shirt blanc en dessous, pas touche :c !
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue103)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue103"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue103", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue104', function() --Chemise noire
	TriggerEvent('animations:client:EmoteCommandStart', {"tryclothes2"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue104 = {
            outfitData = {
				["arms"]   = { item = 1, texture = 0},  
				["torso2"]   = { item = 3, texture = 2},
				["t-shirt"]   = { item = -1, texture = 0}, --Debug t-shirt blanc en dessous, pas touche :c !
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue104)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue104"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue104", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue105', function() --Chemise cyan
	TriggerEvent('animations:client:EmoteCommandStart', {"tryclothes2"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue105 = {
            outfitData = {
				["arms"]   = { item = 1, texture = 0},  
				["torso2"]   = { item = 3, texture = 3},
				["t-shirt"]   = { item = -1, texture = 0}, --Debug t-shirt blanc en dessous, pas touche :c !
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue105)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue105"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue105", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue106', function() --Chemise bleu
	TriggerEvent('animations:client:EmoteCommandStart', {"tryclothes2"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue106 = {
            outfitData = {
				["arms"]   = { item = 1, texture = 0},  
				["torso2"]   = { item = 3, texture = 4},
				["t-shirt"]   = { item = -1, texture = 0}, --Debug t-shirt blanc en dessous, pas touche :c !
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue106)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue106"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue106", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue107', function() --Chemise bleu foncée
	TriggerEvent('animations:client:EmoteCommandStart', {"tryclothes2"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue107 = {
            outfitData = {
				["arms"]   = { item = 1, texture = 0},  
				["torso2"]   = { item = 3, texture = 5},
				["t-shirt"]   = { item = -1, texture = 0}, --Debug t-shirt blanc en dessous, pas touche :c !
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue107)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue107"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue107", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue108', function() --Chemise verte
	TriggerEvent('animations:client:EmoteCommandStart', {"tryclothes2"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue108 = {
            outfitData = {
				["arms"]   = { item = 1, texture = 0},  
				["torso2"]   = { item = 3, texture = 11},
				["t-shirt"]   = { item = -1, texture = 0}, --Debug t-shirt blanc en dessous, pas touche :c !
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue108)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue108"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue108", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue109', function() --Veste noire avec chemise blanche
	TriggerEvent('animations:client:EmoteCommandStart', {"tryclothes2"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue109 = {
            outfitData = {
				["arms"]   = { item = 1, texture = 0},  
				["torso2"]   = { item = 4, texture = 0},
				["t-shirt"]   = { item = 10, texture = 0}, 
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue109)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue109"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue109", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue110', function() --Veste noire avec chemise noire
	TriggerEvent('animations:client:EmoteCommandStart', {"tryclothes2"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue110 = {
            outfitData = {
				["arms"]   = { item = 4, texture = 0},  
				["torso2"]   = { item = 4, texture = 0},
				["t-shirt"]   = { item = 10, texture = 2}, 
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue110)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue110"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue110", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue111', function() --Veste noire avec chemise verte
	TriggerEvent('animations:client:EmoteCommandStart', {"tryclothes2"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue111 = {
            outfitData = {
				["arms"]   = { item = 4, texture = 0},  
				["torso2"]   = { item = 4, texture = 0},
				["t-shirt"]   = { item = 10, texture = 11}, 
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue111)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue111"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue111", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue112', function() --Veste bleu foncé avec chemise blanche
	TriggerEvent('animations:client:EmoteCommandStart', {"tryclothes2"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue112 = {
            outfitData = {
				["arms"]   = { item = 4, texture = 0},  
				["torso2"]   = { item = 4, texture = 1},
				["t-shirt"]   = { item = 10, texture = 0}, 
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue112)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue112"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue112", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue113', function() --Veste bleu foncée avec chemise noire
	TriggerEvent('animations:client:EmoteCommandStart', {"tryclothes2"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue113 = {
            outfitData = {
				["arms"]   = { item = 4, texture = 0},  
				["torso2"]   = { item = 4, texture = 1},
				["t-shirt"]   = { item = 10, texture = 2}, 
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue113)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue113"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue113", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue114', function() --Veste bleu foncée avec chemise bleu foncée
	TriggerEvent('animations:client:EmoteCommandStart', {"tryclothes2"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue114 = {
            outfitData = {
				["arms"]   = { item = 4, texture = 0},  
				["torso2"]   = { item = 4, texture = 1},
				["t-shirt"]   = { item = 10, texture = 6}, 
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue114)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue114"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue114", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue115', function() --Veste bleu foncée avec chemise verte
	TriggerEvent('animations:client:EmoteCommandStart', {"tryclothes2"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue115 = {
            outfitData = {
				["arms"]   = { item = 4, texture = 0},  
				["torso2"]   = { item = 4, texture = 1},
				["t-shirt"]   = { item = 10, texture = 11}, 
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue115)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue115"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue115", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue116', function() --Veste marron avec chemise blanche
	TriggerEvent('animations:client:EmoteCommandStart', {"tryclothes2"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue116 = {
            outfitData = {
				["arms"]   = { item = 4, texture = 0},  
				["torso2"]   = { item = 4, texture = 2},
				["t-shirt"]   = { item = 10, texture = 0}, 
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue116)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue116"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue116", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue117', function() --Veste marron avec chemise noire
	TriggerEvent('animations:client:EmoteCommandStart', {"tryclothes2"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue117 = {
            outfitData = {
				["arms"]   = { item = 4, texture = 0},  
				["torso2"]   = { item = 4, texture = 2},
				["t-shirt"]   = { item = 10, texture = 2}, 
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue117)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue117"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue117", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue118', function() --Veste marron avec chemise saumon
	TriggerEvent('animations:client:EmoteCommandStart', {"tryclothes2"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue118 = {
            outfitData = {
				["arms"]   = { item = 4, texture = 0},  
				["torso2"]   = { item = 4, texture = 2},
				["t-shirt"]   = { item = 10, texture = 14}, 
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue118)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue118"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue118", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue119', function() --Veste bleu avec chemise blanche
	TriggerEvent('animations:client:EmoteCommandStart', {"tryclothes2"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue119 = {
            outfitData = {
				["arms"]   = { item = 4, texture = 0},  
				["torso2"]   = { item = 4, texture = 3},
				["t-shirt"]   = { item = 10, texture = 0}, 
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue119)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue119"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue119", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue120', function() --Veste grise avec chemise blanche
	TriggerEvent('animations:client:EmoteCommandStart', {"tryclothes2"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue120 = {
            outfitData = {
				["arms"]   = { item = 4, texture = 0},  
				["torso2"]   = { item = 4, texture = 4},
				["t-shirt"]   = { item = 10, texture = 0}, 
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue120)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue120"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue120", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue121', function() --Veste beige avec chemise blanche
	TriggerEvent('animations:client:EmoteCommandStart', {"tryclothes2"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue121 = {
            outfitData = {
				["arms"]   = { item = 4, texture = 0},  
				["torso2"]   = { item = 4, texture = 5},
				["t-shirt"]   = { item = 10, texture = 0}, 
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue121)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue121"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue121", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue122', function() --Veste noire fermée avec chemise blanche
	TriggerEvent('animations:client:EmoteCommandStart', {"tryclothes2"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue122 = {
            outfitData = {
				["arms"]   = { item = 4, texture = 0},  
				["torso2"]   = { item = 10, texture = 0},
				["t-shirt"]   = { item = 10, texture = 0}, 
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue122)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue122"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue122", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue123', function() --Veste bleu foncée avec chemise blanche
	TriggerEvent('animations:client:EmoteCommandStart', {"tryclothes2"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue123 = {
            outfitData = {
				["arms"]   = { item = 4, texture = 0},  
				["torso2"]   = { item = 10, texture = 1},
				["t-shirt"]   = { item = 10, texture = 0}, 
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue123)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue123"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue123", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue124', function() --Veste marron fermée avec chemise blanche
	TriggerEvent('animations:client:EmoteCommandStart', {"tryclothes2"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue124 = {
            outfitData = {
				["arms"]   = { item = 4, texture = 0},  
				["torso2"]   = { item = 10, texture = 2},
				["t-shirt"]   = { item = 10, texture = 0}, 
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue124)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue124"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue124", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue125', function() --Veste bleu fermée avec chemise blanche
	TriggerEvent('animations:client:EmoteCommandStart', {"tryclothes2"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue125 = {
            outfitData = {
				["arms"]   = { item = 4, texture = 0},  
				["torso2"]   = { item = 10, texture = 3},
				["t-shirt"]   = { item = 10, texture = 0}, 
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue125)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue125"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue125", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue126', function() --Veste grise fermée avec chemise blanche
	TriggerEvent('animations:client:EmoteCommandStart', {"tryclothes2"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue126 = {
            outfitData = {
				["arms"]   = { item = 4, texture = 0},  
				["torso2"]   = { item = 10, texture = 4},
				["t-shirt"]   = { item = 10, texture = 0}, 
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue126)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue126"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue126", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue127', function() --Veste grise fermée avec chemise blanche
	TriggerEvent('animations:client:EmoteCommandStart', {"tryclothes2"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue127 = {
            outfitData = {
				["arms"]   = { item = 4, texture = 0},  
				["torso2"]   = { item = 10, texture = 5},
				["t-shirt"]   = { item = 10, texture = 0}, 
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue127)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue127"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue127", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue128', function() --Gilet gris avec chemise
	TriggerEvent('animations:client:EmoteCommandStart', {"tryclothes2"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue128 = {
            outfitData = {
				["arms"]   = { item = 11, texture = 0},  
				["torso2"]   = { item = 11, texture = 0},
				["t-shirt"]   = { item = 6, texture = 0}, 
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue128)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue128"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue128", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue129', function() --Gilet noir avec chemise
	TriggerEvent('animations:client:EmoteCommandStart', {"tryclothes2"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue129 = {
            outfitData = {
				["arms"]   = { item = 11, texture = 0},  
				["torso2"]   = { item = 11, texture = 1},
				["t-shirt"]   = { item = 6, texture = 0}, 
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue129)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue129"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue129", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue130', function() --Gilet noir rayé avec chemise
	TriggerEvent('animations:client:EmoteCommandStart', {"tryclothes2"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue130 = {
            outfitData = {
				["arms"]   = { item = 11, texture = 0},  
				["torso2"]   = { item = 11, texture = 14},
				["t-shirt"]   = { item = 6, texture = 0}, 
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue130)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue130"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue130", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue131', function() --Veste & chemise
	TriggerEvent('animations:client:EmoteCommandStart', {"tryclothes2"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue131 = {
            outfitData = {
				["arms"]   = { item = 12, texture = 0},  
				["torso2"]   = { item = 23, texture = 2},
				["t-shirt"]   = { item = 10, texture = 0}, 
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue131)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue131"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue131", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue132', function() --Chemise retroussée blanche
	TriggerEvent('animations:client:EmoteCommandStart', {"tryclothes2"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue132 = {
            outfitData = {
				["arms"]   = { item = 11, texture = 0},  
				["torso2"]   = { item = 13, texture = 0},
				["t-shirt"]   = { item = -1, texture = 0}, 
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue132)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue132"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue132", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue133', function() --Chemise retroussée grise
	TriggerEvent('animations:client:EmoteCommandStart', {"tryclothes2"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue133 = {
            outfitData = {
				["arms"]   = { item = 11, texture = 0},  
				["torso2"]   = { item = 13, texture = 1},
				["t-shirt"]   = { item = -1, texture = 0}, 
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue133)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue133"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue133", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue134', function() --Chemise retroussée noire
	TriggerEvent('animations:client:EmoteCommandStart', {"tryclothes2"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue134 = {
            outfitData = {
				["arms"]   = { item = 11, texture = 0},  
				["torso2"]   = { item = 13, texture = 2},
				["t-shirt"]   = { item = -1, texture = 0}, 
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue134)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue134"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue134", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue135', function() --Chemise retroussée bleu
	TriggerEvent('animations:client:EmoteCommandStart', {"tryclothes2"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue135 = {
            outfitData = {
				["arms"]   = { item = 11, texture = 0},  
				["torso2"]   = { item = 13, texture = 3},
				["t-shirt"]   = { item = -1, texture = 0}, 
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue135)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue135"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue135", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue136', function() --Chemise retroussée rouge
	TriggerEvent('animations:client:EmoteCommandStart', {"tryclothes2"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue136 = {
            outfitData = {
				["arms"]   = { item = 11, texture = 0},  
				["torso2"]   = { item = 13, texture = 5},
				["t-shirt"]   = { item = -1, texture = 0}, 
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue136)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue136"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue136", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue137', function() --Veste fermée longue noire
	TriggerEvent('animations:client:EmoteCommandStart', {"tryclothes2"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue137 = {
            outfitData = {
				["arms"]   = { item = 6, texture = 0},  
				["torso2"]   = { item = 27, texture = 0},
				["t-shirt"]   = { item = 4, texture = 0}, 
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue137)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue137"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue137", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue138', function() --Veste fermée longue grise
	TriggerEvent('animations:client:EmoteCommandStart', {"tryclothes2"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue138 = {
            outfitData = {
				["arms"]   = { item = 6, texture = 0},  
				["torso2"]   = { item = 27, texture = 1},
				["t-shirt"]   = { item = 4, texture = 0}, 
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue138)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue138"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue138", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue139', function() --Veste fermée longue bleu
	TriggerEvent('animations:client:EmoteCommandStart', {"tryclothes2"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue139 = {
            outfitData = {
				["arms"]   = { item = 6, texture = 0},  
				["torso2"]   = { item = 27, texture = 2},
				["t-shirt"]   = { item = 4, texture = 0}, 
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue139)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue139"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue139", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue140', function() --Costume noir
	TriggerEvent('animations:client:EmoteCommandStart', {"tryclothes2"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue140 = {
            outfitData = {
				["arms"]   = { item = 4, texture = 0},  
				["torso2"]   = { item = 31, texture = 0},
				["t-shirt"]   = { item = 31, texture = 0}, 
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue140)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue140"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue140", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue141', function() --Costume noir/chemise grise
	TriggerEvent('animations:client:EmoteCommandStart', {"tryclothes2"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue141 = {
            outfitData = {
				["arms"]   = { item = 4, texture = 0},  
				["torso2"]   = { item = 31, texture = 0},
				["t-shirt"]   = { item = 31, texture = 1}, 
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue141)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue141"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue141", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue142', function() --Costume noir/chemise noire
	TriggerEvent('animations:client:EmoteCommandStart', {"tryclothes2"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue142 = {
            outfitData = {
				["arms"]   = { item = 4, texture = 0},  
				["torso2"]   = { item = 31, texture = 0},
				["t-shirt"]   = { item = 31, texture = 2}, 
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue142)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue142"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue142", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue143', function() --Costume noir/chemise bleu
	TriggerEvent('animations:client:EmoteCommandStart', {"tryclothes2"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue143 = {
            outfitData = {
				["arms"]   = { item = 4, texture = 0},  
				["torso2"]   = { item = 31, texture = 0},
				["t-shirt"]   = { item = 31, texture = 3}, 
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue143)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue143"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue143", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue144', function() --Costume noir/chemise mauve
	TriggerEvent('animations:client:EmoteCommandStart', {"tryclothes2"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue144 = {
            outfitData = {
				["arms"]   = { item = 4, texture = 0},  
				["torso2"]   = { item = 31, texture = 0},
				["t-shirt"]   = { item = 31, texture = 4}, 
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue144)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue144"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue144", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue145', function() --Costume noir/chemise rayé orange
	TriggerEvent('animations:client:EmoteCommandStart', {"tryclothes2"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue145 = {
            outfitData = {
				["arms"]   = { item = 4, texture = 0},  
				["torso2"]   = { item = 31, texture = 0},
				["t-shirt"]   = { item = 31, texture = 5}, 
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue145)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue145"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue145", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue146', function() --Costume noir/chemise rayé bleu
	TriggerEvent('animations:client:EmoteCommandStart', {"tryclothes2"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue146 = {
            outfitData = {
				["arms"]   = { item = 4, texture = 0},  
				["torso2"]   = { item = 31, texture = 0},
				["t-shirt"]   = { item = 31, texture = 6}, 
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue146)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue146"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue146", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue147', function() --Costume noir/chemise rayé saumon
	TriggerEvent('animations:client:EmoteCommandStart', {"tryclothes2"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue147 = {
            outfitData = {
				["arms"]   = { item = 4, texture = 0},  
				["torso2"]   = { item = 31, texture = 0},
				["t-shirt"]   = { item = 31, texture = 7}, 
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue147)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue147"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue147", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue148', function() --Costume noir/chemise rayé verte
	TriggerEvent('animations:client:EmoteCommandStart', {"tryclothes2"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue148 = {
            outfitData = {
				["arms"]   = { item = 4, texture = 0},  
				["torso2"]   = { item = 31, texture = 0},
				["t-shirt"]   = { item = 31, texture = 8}, 
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue148)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue148"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue148", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue149', function() --Costume noir/chemise rayé mauve
	TriggerEvent('animations:client:EmoteCommandStart', {"tryclothes2"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue149 = {
            outfitData = {
				["arms"]   = { item = 4, texture = 0},  
				["torso2"]   = { item = 31, texture = 0},
				["t-shirt"]   = { item = 31, texture = 9}, 
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue149)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue149"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue149", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue150', function() --Costume noir/chemise rayé mauve
	TriggerEvent('animations:client:EmoteCommandStart', {"tryclothes2"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue150 = {
            outfitData = {
				["arms"]   = { item = 4, texture = 0},  
				["torso2"]   = { item = 31, texture = 0},
				["t-shirt"]   = { item = 31, texture = 10}, 
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue150)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue150"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue150", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue151', function() --Manteau marron/tshirt gris
	TriggerEvent('animations:client:EmoteCommandStart', {"tryclothes2"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue151 = {
            outfitData = {
				["arms"]   = { item = 4, texture = 0},  
				["torso2"]   = { item = 70, texture = 0},
				["t-shirt"]   = { item = 0, texture = 1}, 
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue151)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue151"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue151", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue152', function() --Manteau marron/tshirt blanc
	TriggerEvent('animations:client:EmoteCommandStart', {"tryclothes2"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue152 = {
            outfitData = {
				["arms"]   = { item = 4, texture = 0},  
				["torso2"]   = { item = 70, texture = 0},
				["t-shirt"]   = { item = 0, texture = 0}, 
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue152)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue152"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue152", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue153', function() --Manteau marron/tshirt noir
	TriggerEvent('animations:client:EmoteCommandStart', {"tryclothes2"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue153 = {
            outfitData = {
				["arms"]   = { item = 4, texture = 0},  
				["torso2"]   = { item = 70, texture = 0},
				["t-shirt"]   = { item = 0, texture = 2}, 
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue153)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue153"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue153", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue154', function() --Manteau marron/tshirt jaune
	TriggerEvent('animations:client:EmoteCommandStart', {"tryclothes2"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue154 = {
            outfitData = {
				["arms"]   = { item = 4, texture = 0},  
				["torso2"]   = { item = 70, texture = 0},
				["t-shirt"]   = { item = 0, texture = 3}, 
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue154)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue154"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue154", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue155', function() --Manteau variante 2/tshirt blanc -----------------------A VERIFIER
	TriggerEvent('animations:client:EmoteCommandStart', {"tryclothes2"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue155 = {
            outfitData = {
				["arms"]   = { item = 4, texture = 0},  
				["torso2"]   = { item = 70, texture = 1},
				["t-shirt"]   = { item = 0, texture = 0}, 
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue155)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue155"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue155", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue156', function() --Manteau variante 2/tshirt gris
	TriggerEvent('animations:client:EmoteCommandStart', {"tryclothes2"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue156 = {
            outfitData = {
				["arms"]   = { item = 4, texture = 0},  
				["torso2"]   = { item = 70, texture = 1},
				["t-shirt"]   = { item = 0, texture = 1}, 
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue156)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue156"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue156", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue157', function() --Manteau variante 2/tshirt noir
	TriggerEvent('animations:client:EmoteCommandStart', {"tryclothes2"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue157 = {
            outfitData = {
				["arms"]   = { item = 4, texture = 0},  
				["torso2"]   = { item = 70, texture = 1},
				["t-shirt"]   = { item = 0, texture = 2}, 
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue157)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue157"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue157", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue158', function() --Manteau variante 2/tshirt jaune
	TriggerEvent('animations:client:EmoteCommandStart', {"tryclothes2"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue158 = {
            outfitData = {
				["arms"]   = { item = 4, texture = 0},  
				["torso2"]   = { item = 70, texture = 1},
				["t-shirt"]   = { item = 0, texture = 3}, 
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue158)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue158"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue158", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue159', function() --Manteau variante 3/tshirt blanc
	TriggerEvent('animations:client:EmoteCommandStart', {"tryclothes2"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue159 = {
            outfitData = {
				["arms"]   = { item = 4, texture = 0},  
				["torso2"]   = { item = 70, texture = 2},
				["t-shirt"]   = { item = 0, texture = 0}, 
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue159)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue159"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue159", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue160', function() --Manteau variante 3/tshirt gris
	TriggerEvent('animations:client:EmoteCommandStart', {"tryclothes2"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue160 = {
            outfitData = {
				["arms"]   = { item = 4, texture = 0},  
				["torso2"]   = { item = 70, texture = 2},
				["t-shirt"]   = { item = 0, texture = 1}, 
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue160)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue160"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue160", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue161', function() --Manteau variante 3/tshirt noir
	TriggerEvent('animations:client:EmoteCommandStart', {"tryclothes2"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue161 = {
            outfitData = {
				["arms"]   = { item = 4, texture = 0},  
				["torso2"]   = { item = 70, texture = 2},
				["t-shirt"]   = { item = 0, texture = 2}, 
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue161)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue161"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue161", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue162', function() --Manteau variante 3/tshirt jaune
	TriggerEvent('animations:client:EmoteCommandStart', {"tryclothes2"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue162 = {
            outfitData = {
				["arms"]   = { item = 4, texture = 0},  
				["torso2"]   = { item = 70, texture = 2},
				["t-shirt"]   = { item = 0, texture = 3}, 
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue162)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue162"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue162", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue163', function() --Manteau très long jaune
	TriggerEvent('animations:client:EmoteCommandStart', {"tryclothes2"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue163 = {
            outfitData = {
				["arms"]   = { item = 5, texture = 0},  
				["torso2"]   = { item = 72, texture = 0},
				["t-shirt"]   = { item = 9, texture = 2}, 
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue163)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue163"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue163", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue164', function() --Manteau très long gris
	TriggerEvent('animations:client:EmoteCommandStart', {"tryclothes2"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue164 = {
            outfitData = {
				["arms"]   = { item = 5, texture = 0},  
				["torso2"]   = { item = 72, texture = 1},
				["t-shirt"]   = { item = 9, texture = 2}, 
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue164)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue164"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue164", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue165', function() --Manteau très long noir
	TriggerEvent('animations:client:EmoteCommandStart', {"tryclothes2"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue165 = {
            outfitData = {
				["arms"]   = { item = 5, texture = 0},  
				["torso2"]   = { item = 72, texture = 2},
				["t-shirt"]   = { item = 9, texture = 2}, 
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue165)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue165"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue165", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue166', function() --Pantalon noir
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue166 = {
            outfitData = {
                ["pants"]   = { item = 10, texture = 0},  
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue166)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue166"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue166", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue167', function() --Pantalon gris
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue167 = {
            outfitData = {
                ["pants"]   = { item = 10, texture = 1},  
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue167)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue167"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue167", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue168', function() --Pantalon bleu
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue168 = {
            outfitData = {
                ["pants"]   = { item = 10, texture = 2},  
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue168)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue168"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue168", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue169', function() --Pantalon bleu foncé
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue169 = {
            outfitData = {
                ["pants"]   = { item = 10, texture = 3},  
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue169)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue169"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue169", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue170', function() --Pantalon gris variante 2
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue170 = {
            outfitData = {
                ["pants"]   = { item = 10, texture = 4},  
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue170)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue170"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue170", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue171', function() --Pantalon beige
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue171 = {
            outfitData = {
                ["pants"]   = { item = 10, texture = 5},  
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue171)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue171"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue171", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue172', function() --Pantalon jaune
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue172 = {
            outfitData = {
                ["pants"]   = { item = 10, texture = 6},  
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue172)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue172"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue172", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue173', function() --Pantalon blanc
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue173 = {
            outfitData = {
                ["pants"]   = { item = 10, texture = 7},  
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue173)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue173"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue173", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue174', function() --Pantalon marron
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue174 = {
            outfitData = {
                ["pants"]   = { item = 10, texture = 8},  
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue174)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue174"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue174", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue175', function() --Pantalon vert
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue175 = {
            outfitData = {
                ["pants"]   = { item = 10, texture = 9},  
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue175)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue175"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue175", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue176', function() --Pantalon gris/blanc
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue176 = {
            outfitData = {
                ["pants"]   = { item = 10, texture = 10},  
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue176)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue176"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue176", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue177', function() --Pantalon variante 2 noir
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue177 = {
            outfitData = {
                ["pants"]   = { item = 13, texture = 0},  
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue177)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue177"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue177", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue178', function() --Pantalon variante 2 gris
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue178 = {
            outfitData = {
                ["pants"]   = { item = 13, texture = 1},  
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue178)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue178"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue178", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue179', function() --Pantalon variante 2 bleu
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue179 = {
            outfitData = {
                ["pants"]   = { item = 13, texture = 2},  
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue179)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue179"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue179", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue180', function() --Pantalon variante 2 marron
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue180 = {
            outfitData = {
                ["pants"]   = { item = 13, texture = 4},  
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue180)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue180"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue180", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue181', function() --Pantalon variante 2 bleu ciel
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue181 = {
            outfitData = {
                ["pants"]   = { item = 13, texture = 5},  
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue181)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue181"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue181", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue182', function() --Pantalon variante 2 bleu foncé
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue182 = {
            outfitData = {
                ["pants"]   = { item = 13, texture = 6},  
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue182)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue182"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue182", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue183', function() --Pantalon variante 2 gris clair
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue183 = {
            outfitData = {
                ["pants"]   = { item = 13, texture = 7},  
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue183)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue183"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue183", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue184', function() --Pantalon variante 2 bleu clair
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue184 = {
            outfitData = {
                ["pants"]   = { item = 13, texture = 8},  
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue184)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue184"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue184", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue185', function() --Short marron
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue185 = {
            outfitData = {
                ["pants"]   = { item = 17, texture = 0},  
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue185)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue185"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue185", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue186', function() --Short jaune
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue186 = {
            outfitData = {
                ["pants"]   = { item = 17, texture = 2},  
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue186)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue186"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue186", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue187', function() --Short bleu
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue187 = {
            outfitData = {
                ["pants"]   = { item = 17, texture = 4},  
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue187)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue187"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue187", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue188', function() --Short bleu ciel
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue188 = {
            outfitData = {
                ["pants"]   = { item = 17, texture = 6},  
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue188)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue188"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue188", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue189', function() --Short rouge
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue189 = {
            outfitData = {
                ["pants"]   = { item = 17, texture = 9},  
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue189)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue189"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue189", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue190', function() --Short vert
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue190 = {
            outfitData = {
                ["pants"]   = { item = 17, texture = 10},  
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue190)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue190"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue190", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue191', function() --chaussure noire/grise
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue191 = {
            outfitData = {
                ["shoes"]   = { item = 3, texture = 0},  
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue191)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue191"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue191", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue192', function() --chaussure noire/grise 2
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue192 = {
            outfitData = {
                ["shoes"]   = { item = 3, texture = 1},  
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue192)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue192"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue192", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue193', function() --chaussure verte/marron
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue193 = {
            outfitData = {
                ["shoes"]   = { item = 3, texture = 2},  
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue193)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue193"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue193", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue194', function() --chaussure marron
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue194 = {
            outfitData = {
                ["shoes"]   = { item = 3, texture = 3},  
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue194)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue194"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue194", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue195', function() --chaussure noire
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue195 = {
            outfitData = {
                ["shoes"]   = { item = 3, texture = 4},  
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue195)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue195"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue195", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue196', function() --chaussure grise
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue196 = {
            outfitData = {
                ["shoes"]   = { item = 3, texture = 5},  
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue196)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue196"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue196", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue197', function() --chaussure marron/bleu (chelou lol)
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue197 = {
            outfitData = {
                ["shoes"]   = { item = 3, texture = 6},  
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue197)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue197"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue197", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue198', function() --chaussure verte/rouge (chelou x2 lol)
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue198 = {
            outfitData = {
                ["shoes"]   = { item = 3, texture = 7},  
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue198)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue198"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue198", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue199', function() --chaussure bleu/jaune
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue199 = {
            outfitData = {
                ["shoes"]   = { item = 3, texture = 8},  
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue199)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue199"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue199", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue200', function() --chaussure jaune/marron
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue200 = {
            outfitData = {
                ["shoes"]   = { item = 3, texture = 9},  
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue200)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue200"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue200", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue201', function() --chaussure violette/mauve
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue201 = {
            outfitData = {
                ["shoes"]   = { item = 3, texture = 10},  
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue201)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue201"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue201", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue202', function() --chaussure marron
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue202 = {
            outfitData = {
                ["shoes"]   = { item = 3, texture = 15},  
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue202)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue202"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue202", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue203', function() --chaussure de ville noire
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue203 = {
            outfitData = {
                ["shoes"]   = { item = 10, texture = 0},  
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue203)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue203"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue203", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue204', function() --chaussure de ville blanche/crême
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue204 = {
            outfitData = {
                ["shoes"]   = { item = 10, texture = 7},  
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue204)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue204"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue204", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue205', function() --chaussure de ville marron
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue205 = {
            outfitData = {
                ["shoes"]   = { item = 10, texture = 12},  
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue205)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue205"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue205", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue206', function() --chaussure de ville jaune
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue206 = {
            outfitData = {
                ["shoes"]   = { item = 10, texture = 14},  
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue206)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue206"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue206", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue207', function() --chaussure en peau de serpent noir
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue207 = {
            outfitData = {
                ["shoes"]   = { item = 11, texture = 12},  
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue207)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue207"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue207", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue208', function() --chaussure en peau de serpent marron
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue208 = {
            outfitData = {
                ["shoes"]   = { item = 11, texture = 14},  
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue208)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue208"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue208", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue209', function() --chaussure en peau de serpent gris
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue209 = {
            outfitData = {
                ["shoes"]   = { item = 11, texture = 15},  
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue209)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue209"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue209", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue210', function() --chaussure de ville variante 2 noire
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue210 = {
            outfitData = {
                ["shoes"]   = { item = 15, texture = 0},  
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue210)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue210"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue210", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue211', function() --chaussure de ville variante 2 marron
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue211 = {
            outfitData = {
                ["shoes"]   = { item = 15, texture = 1},  
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue211)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue211"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue211", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue212', function() --chaussure de ville variante 2 mauve
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue212 = {
            outfitData = {
                ["shoes"]   = { item = 15, texture = 2},  
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue212)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue212"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue212", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue213', function() --chaussure de ville variante 2 verte
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue213 = {
            outfitData = {
                ["shoes"]   = { item = 15, texture = 3},  
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue213)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue213"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue213", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue214', function() --chaussure de ville variante 2 bleu
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue214 = {
            outfitData = {
                ["shoes"]   = { item = 15, texture = 4},  
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue214)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue214"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue214", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue215', function() --chaussure de ville variante 2 jaune
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue215 = {
            outfitData = {
                ["shoes"]   = { item = 15, texture = 5},  
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue215)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue215"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue215", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue216', function() --chaussure de ville variante 2 jaune/marron
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue216 = {
            outfitData = {
                ["shoes"]   = { item = 15, texture = 6},  
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue216)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue216"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue216", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue217', function() --chaussure de ville variante 2 grise
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue217 = {
            outfitData = {
                ["shoes"]   = { item = 15, texture = 7},  
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue217)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue217"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue217", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue218', function() --chaussure de ville variante 2 blanche
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue218 = {
            outfitData = {
                ["shoes"]   = { item = 15, texture = 8},  
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue218)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue218"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue218", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue219', function() --chaussure de ville variante 2 mauve 2
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue219 = {
            outfitData = {
                ["shoes"]   = { item = 15, texture = 9},  
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue219)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue219"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue219", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue220', function() --chaussure de ville variante noire/liseret blanc
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue220 = {
            outfitData = {
                ["shoes"]   = { item = 15, texture = 10},  
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue220)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue220"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue220", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue221', function() --chaussure de ville double couleur noire/blanche
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue221 = {
            outfitData = {
                ["shoes"]   = { item = 18, texture = 0},  
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue221)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue221"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue221", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue222', function() --Beret blanc
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue222 = {
            outfitData = {
                ["hat"]   = { item = 7, texture = 0},  
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue222)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue222"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue222", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue223', function() --Beret gris
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue223 = {
            outfitData = {
                ["hat"]   = { item = 7, texture = 1},  
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue223)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue223"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue223", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue224', function() --Beret noir
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue224 = {
            outfitData = {
                ["hat"]   = { item = 7, texture = 2},  
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue224)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue224"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue224", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue225', function() --Beret bleu
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue225 = {
            outfitData = {
                ["hat"]   = { item = 7, texture = 3},  
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue225)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue225"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue225", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue226', function() --Beret rouge
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue226 = {
            outfitData = {
                ["hat"]   = { item = 7, texture = 4},  
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue226)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue226"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue226", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue227', function() --Beret marron
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue227 = {
            outfitData = {
                ["hat"]   = { item = 7, texture = 5},  
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue227)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue227"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue227", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue228', function() --Beret vert
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue228 = {
            outfitData = {
                ["hat"]   = { item = 7, texture = 6},  
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue228)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue228"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue228", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue229', function() --Beret jaune
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue229 = {
            outfitData = {
                ["hat"]   = { item = 7, texture = 7},  
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue229)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue229"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue229", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue230', function() --chapeau noir/gris
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue230 = {
            outfitData = {
                ["hat"]   = { item = 12, texture = 0},  
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue230)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue230"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue230", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue231', function() --chapeau blanc/noir
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue231 = {
            outfitData = {
                ["hat"]   = { item = 12, texture = 1},  
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue231)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue231"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue231", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue232', function() --chapeau gris
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue232 = {
            outfitData = {
                ["hat"]   = { item = 12, texture = 2},  
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue232)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue232"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue232", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue233', function() --chapeau marron
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue233 = {
            outfitData = {
                ["hat"]   = { item = 12, texture = 4},  
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue233)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue233"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue233", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue234', function() --chapeau vert
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue234 = {
            outfitData = {
                ["hat"]   = { item = 12, texture = 6},  
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue234)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue234"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue234", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue235', function() --chapeau bleu
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue235 = {
            outfitData = {
                ["hat"]   = { item = 12, texture = 7},  
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue235)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue235"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue235", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue236', function() --chapeau variante 2, noir
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue236 = {
            outfitData = {
                ["hat"]   = { item = 26, texture = 0},  
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue236)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue236"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue236", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue237', function() --chapeau variante 2, gris
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue237 = {
            outfitData = {
                ["hat"]   = { item = 26, texture = 1},  
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue237)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue237"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue237", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue238', function() --chapeau variante 2, bleu
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue238 = {
            outfitData = {
                ["hat"]   = { item = 26, texture = 2},  
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue238)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue238"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue238", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue239', function() --chapeau variante 2, gris
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue239 = {
            outfitData = {
                ["hat"]   = { item = 26, texture = 3},  
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue239)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue239"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue239", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue240', function() --chapeau variante 2, vert
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue240 = {
            outfitData = {
                ["hat"]   = { item = 26, texture = 4},  
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue240)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue240"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue240", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue241', function() --chapeau variante 2, violet
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue241 = {
            outfitData = {
                ["hat"]   = { item = 26, texture = 5},  
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue241)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue241"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue241", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue242', function() --chapeau variante 2, rouge
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue242 = {
            outfitData = {
                ["hat"]   = { item = 26, texture = 6},  
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue242)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue242"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue242", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue243', function() --chapeau variante 2, marron
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue243 = {
            outfitData = {
                ["hat"]   = { item = 26, texture = 7},  
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue243)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue243"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue243", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue244', function() --chapeau variante 2, marron clair/liseret
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue244 = {
            outfitData = {
                ["hat"]   = { item = 26, texture = 8},  
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue244)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue244"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue244", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue245', function() --chapeau variante 2, beige
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue245 = {
            outfitData = {
                ["hat"]   = { item = 26, texture = 9},  
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue245)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue245"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue245", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue246', function() --chapeau variante 2, gris/blanc
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue246 = {
            outfitData = {
                ["hat"]   = { item = 26, texture = 10},  
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue246)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue246"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue246", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue247', function() --chapeau variante 2, bleu
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue247 = {
            outfitData = {
                ["hat"]   = { item = 26, texture = 11},  
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue247)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue247"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue247", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue248', function() --petit chapeau gris
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue248 = {
            outfitData = {
                ["hat"]   = { item = 29, texture = 0},  
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue248)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue248"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue248", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue249', function() --petit chapeau noir
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue249 = {
            outfitData = {
                ["hat"]   = { item = 29, texture = 1},  
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue249)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue249"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue249", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue250', function() --petit chapeau blanc
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue250 = {
            outfitData = {
                ["hat"]   = { item = 29, texture = 2},  
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue250)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue250"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue250", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue251', function() --petit chapeau marron
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue251 = {
            outfitData = {
                ["hat"]   = { item = 29, texture = 3},  
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue251)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue251"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue251", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue252', function() --petit chapeau rouge
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue252 = {
            outfitData = {
                ["hat"]   = { item = 29, texture = 4},  
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue252)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue252"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue252", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue253', function() --petit chapeau rouge/noir
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue253 = {
            outfitData = {
                ["hat"]   = { item = 29, texture = 5},  
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue253)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue253"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue253", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue254', function() --petit chapeau marron/blanc
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue254 = {
            outfitData = {
                ["hat"]   = { item = 29, texture = 6},  
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue254)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue254"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue254", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue255', function() --petit chapeau bleu/noir
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue255 = {
            outfitData = {
                ["hat"]   = { item = 29, texture = 7},  
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue255)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue255"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue255", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue256', function() --lunette aviateur or
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue256 = {
            outfitData = {
                ["glass"]   = { item = 5, texture = 0},  
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue256)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue256"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue256", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue257', function() --lunette aviateur argent
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue257 = {
            outfitData = {
                ["glass"]   = { item = 5, texture = 1},  
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue257)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue257"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue257", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue258', function() --lunette aviateur argent
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue258 = {
            outfitData = {
                ["glass"]   = { item = 5, texture = 2},  
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue258)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue258"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue258", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue259', function() --lunette aviateur argent
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue259 = {
            outfitData = {
                ["glass"]   = { item = 5, texture = 3},  
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue259)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue259"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue259", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue260', function() --lunette aviateur argent
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue260 = {
            outfitData = {
                ["glass"]   = { item = 5, texture = 4},  
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue260)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue260"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue260", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue261', function() --lunette aviateur or
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue261 = {
            outfitData = {
                ["glass"]   = { item = 5, texture = 5},  
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue261)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue261"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue261", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue262', function() --lunette noire
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue262 = {
            outfitData = {
                ["glass"]   = { item = 7, texture = 0},  
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue262)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue262"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue262", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue263', function() --lunette violette/jaune
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue263 = {
            outfitData = {
                ["glass"]   = { item = 7, texture = 1},  
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue263)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue263"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue263", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue264', function() --lunette leopard
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue264 = {
            outfitData = {
                ["glass"]   = { item = 7, texture = 2},  
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue264)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue264"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue264", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue265', function() --lunette noire/rouge
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue265 = {
            outfitData = {
                ["glass"]   = { item = 7, texture = 3},  
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue265)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue265"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue265", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue266', function() --lunette blanche/jaune
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue266 = {
            outfitData = {
                ["glass"]   = { item = 7, texture = 4},  
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue266)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue266"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue266", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue267', function() --lunette camouflage militaire
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue267 = {
            outfitData = {
                ["glass"]   = { item = 7, texture = 5},  
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue267)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue267"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue267", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue268', function() --lunette jaune
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue268 = {
            outfitData = {
                ["glass"]   = { item = 7, texture = 6},  
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue268)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue268"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue268", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue269', function() --lunette rouge
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue269 = {
            outfitData = {
                ["glass"]   = { item = 7, texture = 7},  
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue269)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue269"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue269", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue270', function() --lunette feu
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue270 = {
            outfitData = {
                ["glass"]   = { item = 7, texture = 8},  
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue270)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue270"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue270", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue271', function() --lunette grise
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue271 = {
            outfitData = {
                ["glass"]   = { item = 7, texture = 9},  
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue271)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue271"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue271", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue272', function() --lunette blanche
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue272 = {
            outfitData = {
                ["glass"]   = { item = 7, texture = 10},  
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue272)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue272"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue272", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue273', function() --lunette chromée
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue273 = {
            outfitData = {
                ["glass"]   = { item = 8, texture = 0},  
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue273)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue273"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue273", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue274', function() --salopette bleu
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue274 = {
            outfitData = {
                ["arms"]   = { item = 11, texture = 0},  
				["torso2"]   = { item = 42, texture = 0},
				["t-shirt"]   = { item = -1, texture = 0},
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue274)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue274"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue274", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue275', function() --salopette bleu haut ouvert
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue275 = {
            outfitData = {
                ["arms"]   = { item = 11, texture = 0},  
				["torso2"]   = { item = 43, texture = 0},
				["t-shirt"]   = { item = -1, texture = 0},
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue275)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue275"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue275", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue276', function() --Pull gris à capuche
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue276 = {
            outfitData = {
                ["arms"]   = { item = 11, texture = 0},  
				["torso2"]   = { item = 57, texture = 0},
				["t-shirt"]   = { item = -1, texture = 0},
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue276)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue276"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue276", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue277', function() --Blouson noir/Tshirt blanc
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue277 = {
            outfitData = {
                ["arms"]   = { item = 6, texture = 0},  
				["torso2"]   = { item = 62, texture = 0},
				["t-shirt"]   = { item = 1, texture = 0},
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue277)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue277"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue277", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue278', function() --Blouson noir/Tshirt gris
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue278 = {
            outfitData = {
                ["arms"]   = { item = 6, texture = 0},  
				["torso2"]   = { item = 62, texture = 0},
				["t-shirt"]   = { item = 1, texture = 1},
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue278)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue278"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue278", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue279', function() --Blouson noir/Tshirt jaune
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue279 = {
            outfitData = {
                ["arms"]   = { item = 6, texture = 0},  
				["torso2"]   = { item = 62, texture = 0},
				["t-shirt"]   = { item = 1, texture = 3},
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue279)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue279"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue279", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue280', function() --Blouson noir/Tshirt mauve
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue280 = {
            outfitData = {
                ["arms"]   = { item = 6, texture = 0},  
				["torso2"]   = { item = 62, texture = 0},
				["t-shirt"]   = { item = 1, texture = 4},
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue280)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue280"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue280", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue281', function() --Blouson noir/Tshirt bleu
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue281 = {
            outfitData = {
                ["arms"]   = { item = 6, texture = 0},  
				["torso2"]   = { item = 62, texture = 0},
				["t-shirt"]   = { item = 1, texture = 5},
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue281)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue281"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue281", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue282', function() --Blouson noir/Tshirt violet
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue282 = {
            outfitData = {
                ["arms"]   = { item = 6, texture = 0},  
				["torso2"]   = { item = 62, texture = 0},
				["t-shirt"]   = { item = 1, texture = 6},
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue282)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue282"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue282", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue283', function() --Blouson noir/Tshirt vert
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue283 = {
            outfitData = {
                ["arms"]   = { item = 6, texture = 0},  
				["torso2"]   = { item = 62, texture = 0},
				["t-shirt"]   = { item = 1, texture = 7},
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue283)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue283"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue283", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue284', function() --Blouson noir/Tshirt saumon
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue284 = {
            outfitData = {
                ["arms"]   = { item = 6, texture = 0},  
				["torso2"]   = { item = 62, texture = 0},
				["t-shirt"]   = { item = 1, texture = 8},
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue284)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue284"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue284", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue285', function() --Blouson noir/Tshirt orange
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue285 = {
            outfitData = {
                ["arms"]   = { item = 6, texture = 0},  
				["torso2"]   = { item = 62, texture = 0},
				["t-shirt"]   = { item = 1, texture = 11},
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue285)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue285"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue285", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue286', function() --Blouson noir/Tshirt marron
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue286 = {
            outfitData = {
                ["arms"]   = { item = 6, texture = 0},  
				["torso2"]   = { item = 62, texture = 0},
				["t-shirt"]   = { item = 1, texture = 12},
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue286)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue286"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue286", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue287', function() --Blouson noir/Tshirt jaune
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue287 = {
            outfitData = {
                ["arms"]   = { item = 6, texture = 0},  
				["torso2"]   = { item = 62, texture = 0},
				["t-shirt"]   = { item = 1, texture = 14},
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue287)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue287"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue287", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue288', function() --Blouson rouge dégueulasse
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue288 = {
            outfitData = {
                ["arms"]   = { item = 14, texture = 0},  
				["torso2"]   = { item = 65, texture = 0},
				["t-shirt"]   = { item = -1, texture = 0},
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue288)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue288"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue288", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue289', function() --Blouson bleu dégueulasse
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue289 = {
            outfitData = {
                ["arms"]   = { item = 14, texture = 0},  
				["torso2"]   = { item = 65, texture = 1},
				["t-shirt"]   = { item = -1, texture = 0},
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue289)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue289"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue289", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue290', function() --Blouson vert dégueulasse
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue290 = {
            outfitData = {
                ["arms"]   = { item = 14, texture = 0},  
				["torso2"]   = { item = 65, texture = 2},
				["t-shirt"]   = { item = -1, texture = 0},
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue290)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue290"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue290", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue291', function() --Blouson blanc dégueulasse
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue291 = {
            outfitData = {
                ["arms"]   = { item = 14, texture = 0},  
				["torso2"]   = { item = 65, texture = 3},
				["t-shirt"]   = { item = -1, texture = 0},
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue291)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue291"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue291", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue292', function() --Blouson à capuche noir
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue292 = {
            outfitData = {
                ["arms"]   = { item = 12, texture = 0},  
				["torso2"]   = { item = 68, texture = 0},
				["t-shirt"]   = { item = 2, texture = 0},
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue292)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue292"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue292", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue293', function() --Blouson à capuche (t-shirt gris)
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue293 = {
            outfitData = {
                ["arms"]   = { item = 12, texture = 0},  
				["torso2"]   = { item = 68, texture = 0},
				["t-shirt"]   = { item = 2, texture = 1},
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue293)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue293"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue293", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue294', function() --Blouson à capuche (t-shirt noir)
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue294 = {
            outfitData = {
                ["arms"]   = { item = 12, texture = 0},  
				["torso2"]   = { item = 68, texture = 0},
				["t-shirt"]   = { item = 2, texture = 2},
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue294)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue294"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue294", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue295', function() --Blouson sans capuche (t-shirt noir)
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue295 = {
            outfitData = {
                ["arms"]   = { item = 12, texture = 0},  
				["torso2"]   = { item = 69, texture = 0},
				["t-shirt"]   = { item = 2, texture = 2},
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue295)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue295"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue295", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue296', function() --Blouson sans capuche (t-shirt gris)
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue295 = {
            outfitData = {
                ["arms"]   = { item = 12, texture = 0},  
				["torso2"]   = { item = 69, texture = 0},
				["t-shirt"]   = { item = 2, texture = 1},
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue295)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue295"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue295", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue297', function() --Blouson sans capuche (t-shirt blanc)
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue297 = {
            outfitData = {
                ["arms"]   = { item = 12, texture = 0},  
				["torso2"]   = { item = 69, texture = 0},
				["t-shirt"]   = { item = 2, texture = 0},
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue297)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue297"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue297", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue298', function() --T-shirt long noir
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue298 = {
            outfitData = {
                ["arms"]   = { item = 11, texture = 0},  
				["torso2"]   = { item = 81, texture = 0},
				["t-shirt"]   = { item = -1, texture = 0},
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue298)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue298"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue298", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue299', function() --T-shirt long blanc
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue298 = {
            outfitData = {
                ["arms"]   = { item = 11, texture = 0},  
				["torso2"]   = { item = 81, texture = 1},
				["t-shirt"]   = { item = -1, texture = 0},
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue298)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue298"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue298", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue300', function() --T-shirt long gris
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue300 = {
            outfitData = {
                ["arms"]   = { item = 11, texture = 0},  
				["torso2"]   = { item = 81, texture = 2},
				["t-shirt"]   = { item = -1, texture = 0},
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue300)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue300"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue300", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue301', function() --Chemise grise
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue301 = {
            outfitData = {
                ["arms"]   = { item = 11, texture = 0},  
				["torso2"]   = { item = 83, texture = 0},
				["t-shirt"]   = { item = -1, texture = 0},
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue301)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue301"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue301", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue302', function() --Chemise blanche/bleu
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue302 = {
            outfitData = {
                ["arms"]   = { item = 11, texture = 0},  
				["torso2"]   = { item = 83, texture = 1},
				["t-shirt"]   = { item = -1, texture = 0},
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue302)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue302"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue302", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue303', function() --Chemise blanche/verte
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue303 = {
            outfitData = {
                ["arms"]   = { item = 11, texture = 0},  
				["torso2"]   = { item = 83, texture = 2},
				["t-shirt"]   = { item = -1, texture = 0},
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue303)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue303"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue303", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue304', function() --Chemise rayée grise
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue304 = {
            outfitData = {
                ["arms"]   = { item = 11, texture = 0},  
				["torso2"]   = { item = 83, texture = 3},
				["t-shirt"]   = { item = -1, texture = 0},
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue304)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue304"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue304", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue305', function() --Chemise grise/verte
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue305 = {
            outfitData = {
                ["arms"]   = { item = 11, texture = 0},  
				["torso2"]   = { item = 83, texture = 4},
				["t-shirt"]   = { item = -1, texture = 0},
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue305)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue305"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue305", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue306', function() --Veste Corkeers blanche
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue306 = {
            outfitData = {
                ["arms"]   = { item = 11, texture = 0},  
				["torso2"]   = { item = 84, texture = 0},
				["t-shirt"]   = { item = -1, texture = 0},
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue306)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue306"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue306", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue307', function() --Veste LS Bleu
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue307 = {
            outfitData = {
                ["arms"]   = { item = 11, texture = 0},  
				["torso2"]   = { item = 84, texture = 1},
				["t-shirt"]   = { item = -1, texture = 0},
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue307)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue307"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue307", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue308', function() --Veste SA Violette
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue308 = {
            outfitData = {
                ["arms"]   = { item = 11, texture = 0},  
				["torso2"]   = { item = 84, texture = 2},
				["t-shirt"]   = { item = -1, texture = 0},
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue308)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue308"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue308", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue309', function() --Veste Squeezers verte
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue309 = {
            outfitData = {
                ["arms"]   = { item = 11, texture = 0},  
				["torso2"]   = { item = 84, texture = 3},
				["t-shirt"]   = { item = -1, texture = 0},
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue309)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue309"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue309", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue310', function() --Veste The feud
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue310 = {
            outfitData = {
                ["arms"]   = { item = 11, texture = 0},  
				["torso2"]   = { item = 84, texture = 4},
				["t-shirt"]   = { item = -1, texture = 0},
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue310)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue310"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue310", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue311', function() --Veste Boards
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue311 = {
            outfitData = {
                ["arms"]   = { item = 11, texture = 0},  
				["torso2"]   = { item = 84, texture = 5},
				["t-shirt"]   = { item = -1, texture = 0},
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue311)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue311"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue311", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue312', function() --Pull
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue312 = {
            outfitData = {
                ["arms"]   = { item = 11, texture = 0},  
				["torso2"]   = { item = 96, texture = 0},
				["t-shirt"]   = { item = -1, texture = 0},
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue312)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue312"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue312", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue313', function() --Veste orange
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue313 = {
            outfitData = {
                ["arms"]   = { item = 11, texture = 0},  
				["torso2"]   = { item = 113, texture = 0},
				["t-shirt"]   = { item = -1, texture = 0},
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue313)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue313"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue313", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue314', function() --Veste grise
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue314 = {
            outfitData = {
                ["arms"]   = { item = 11, texture = 0},  
				["torso2"]   = { item = 113, texture = 1},
				["t-shirt"]   = { item = -1, texture = 0},
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue314)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue314"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue314", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue315', function() --Veste bleu
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue315 = {
            outfitData = {
                ["arms"]   = { item = 11, texture = 0},  
				["torso2"]   = { item = 113, texture = 2},
				["t-shirt"]   = { item = -1, texture = 0},
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue315)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue315"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue315", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue316', function() --Veste bleu/bleu claire/verte
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue316 = {
            outfitData = {
                ["arms"]   = { item = 11, texture = 0},  
				["torso2"]   = { item = 113, texture = 3},
				["t-shirt"]   = { item = -1, texture = 0},
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue316)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue316"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue316", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue317', function() --Blouson noir/t-shirt blanc
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue317 = {
            outfitData = {
                ["arms"]   = { item = 12, texture = 0},  
				["torso2"]   = { item = 122, texture = 0},
				["t-shirt"]   = { item = 1, texture = 0},
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue317)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue317"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue317", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue318', function() --Blouson marron/t-shirt blanc
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue318 = {
            outfitData = {
                ["arms"]   = { item = 12, texture = 0},  
				["torso2"]   = { item = 122, texture = 1},
				["t-shirt"]   = { item = 1, texture = 0},
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue318)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue318"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue318", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue319', function() --Blouson bleu/t-shirt blanc
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue319 = {
            outfitData = {
                ["arms"]   = { item = 12, texture = 0},  
				["torso2"]   = { item = 122, texture = 2},
				["t-shirt"]   = { item = 1, texture = 0},
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue319)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue319"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue319", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue320', function() --Blouson gris/t-shirt blanc
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue320 = {
            outfitData = {
                ["arms"]   = { item = 12, texture = 0},  
				["torso2"]   = { item = 122, texture = 3},
				["t-shirt"]   = { item = 1, texture = 0},
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue320)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue320"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue320", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue321', function() --Blouson gris/t-shirt blanc variante 2
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue321 = {
            outfitData = {
                ["arms"]   = { item = 12, texture = 0},  
				["torso2"]   = { item = 122, texture = 4},
				["t-shirt"]   = { item = 1, texture = 0},
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue321)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue321"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue321", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue322', function() --Veste marron/rouge
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue322 = {
            outfitData = {
                ["arms"]   = { item = 12, texture = 0},  
				["torso2"]   = { item = 153, texture = 0},
				["t-shirt"]   = { item = -1, texture = 0},
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue322)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue322"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue322", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue323', function() --Manteau marron
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue323 = {
            outfitData = {
                ["arms"]   = { item = 12, texture = 0},  
				["torso2"]   = { item = 156, texture = 0},
				["t-shirt"]   = { item = 0, texture = 2},
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue323)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue323"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue323", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue324', function() --Veste noire
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue324 = {
            outfitData = {
                ["arms"]   = { item = 5, texture = 0},  
				["torso2"]   = { item = 157, texture = 0},
				["t-shirt"]   = { item = 0, texture = 2},
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue324)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue324"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue324", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue325', function() --Veste marron
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue325 = {
            outfitData = {
                ["arms"]   = { item = 5, texture = 0},  
				["torso2"]   = { item = 157, texture = 2},
				["t-shirt"]   = { item = 0, texture = 2},
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue325)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue325"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue325", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue326', function() --Veste noire
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue326 = {
            outfitData = {
                ["arms"]   = { item = 5, texture = 0},  
				["torso2"]   = { item = 160, texture = 0},
				["t-shirt"]   = { item = 0, texture = 2},
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue326)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue326"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue326", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue327', function() --Veste noire
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue327 = {
            outfitData = {
                ["arms"]   = { item = 12, texture = 0},  
				["torso2"]   = { item = 161, texture = 0},
				["t-shirt"]   = { item = 2, texture = 0},
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue327)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue327"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue327", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue328', function() --Veste marron
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue328 = {
            outfitData = {
                ["arms"]   = { item = 12, texture = 0},  
				["torso2"]   = { item = 161, texture = 1},
				["t-shirt"]   = { item = 2, texture = 0},
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue328)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue328"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue328", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue329', function() --Veste noir variante sans manches
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue329 = {
            outfitData = {
                ["arms"]   = { item = 5, texture = 0},  
				["torso2"]   = { item = 162, texture = 0},
				["t-shirt"]   = { item = 2, texture = 0},
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue329)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue329"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue329", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue330', function() --Veste marron variante sans manches
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue330 = {
            outfitData = {
                ["arms"]   = { item = 5, texture = 0},  
				["torso2"]   = { item = 162, texture = 1},
				["t-shirt"]   = { item = 2, texture = 0},
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue330)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue330"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue330", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue331', function() --Veste style pull marron
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue331 = {
            outfitData = {
                ["arms"]   = { item = 12, texture = 0},  
				["torso2"]   = { item = 168, texture = 0},
				["t-shirt"]   = { item = 2, texture = 2},
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue331)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue331"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue331", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue332', function() --Veste style pull noir
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue332 = {
            outfitData = {
                ["arms"]   = { item = 12, texture = 0},  
				["torso2"]   = { item = 168, texture = 1},
				["t-shirt"]   = { item = 2, texture = 2},
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue332)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue332"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue332", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue333', function() --Veste style pull noir clair
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue333 = {
            outfitData = {
                ["arms"]   = { item = 12, texture = 0},  
				["torso2"]   = { item = 168, texture = 2},
				["t-shirt"]   = { item = 2, texture = 2},
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue333)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue333"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue333", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue334', function() --Jogging blanc/rayé noir
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue334 = {
            outfitData = {
                ["pants"]   = { item = 5, texture = 0},  
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue334)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue334"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue334", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue335', function() --Jogging noir
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue335 = {
            outfitData = {
                ["pants"]   = { item = 5, texture = 2},  
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue335)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue335"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue335", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue336', function() --Jogging bleu
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue336 = {
            outfitData = {
                ["pants"]   = { item = 5, texture = 3},  
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue336)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue336"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue336", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue337', function() --Jogging rouge
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue337 = {
            outfitData = {
                ["pants"]   = { item = 5, texture = 5},  
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue337)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue337"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue337", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue338', function() --Pantalon vert
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue338 = {
            outfitData = {
                ["pants"]   = { item = 9, texture = 0},  
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue338)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue338"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue338", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue339', function() --Pantalon beige
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue339 = {
            outfitData = {
                ["pants"]   = { item = 9, texture = 1},  
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue339)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue339"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue339", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue340', function() --Pantalon mauve
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue340 = {
            outfitData = {
                ["pants"]   = { item = 9, texture = 2},  
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue340)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue340"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue340", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue341', function() --Pantalon camouflage
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue341 = {
            outfitData = {
                ["pants"]   = { item = 9, texture = 13},  
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue341)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue341"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue341", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue342', function() --Pantalon camouflage
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue342 = {
            outfitData = {
                ["pants"]   = { item = 9, texture = 15},  
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue342)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue342"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue342", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue343', function() --Pantalon noir
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue343 = {
            outfitData = {
                ["pants"]   = { item = 35, texture = 0},  
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue343)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue343"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue343", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue344', function() --Jean
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue344 = {
            outfitData = {
                ["pants"]   = { item = 43, texture = 0},  
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue344)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue344"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue344", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue345', function() --Jean couleur 2 (A PARTIR DE CETTE LIGNE LES TENUES NE SERONT PLUS COMMENTÉE.)
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue345 = {
            outfitData = {
                ["pants"]   = { item = 43, texture = 1},  
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue345)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue345"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue345", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue346', function() 
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue346 = {
            outfitData = {
                ["pants"]   = { item = 54, texture = 0},  
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue346)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue346"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue346", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue347', function() 
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue347 = {
            outfitData = {
                ["pants"]   = { item = 54, texture = 1},  
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue347)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue347"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue347", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue348', function() 
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue348 = {
            outfitData = {
                ["pants"]   = { item = 54, texture = 6},  
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue348)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue348"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue348", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue349', function() 
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue349 = {
            outfitData = {
                ["pants"]   = { item = 138, texture = 0},  
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue349)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue349"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue349", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue350', function() 
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue350 = {
            outfitData = {
                ["pants"]   = { item = 138, texture = 1},  
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue350)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue350"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue350", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue351', function() 
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue351 = {
            outfitData = {
                ["pants"]   = { item = 138, texture = 2},  
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue351)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue351"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue351", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue352', function() 
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue352 = {
            outfitData = {
                ["pants"]   = { item = 131, texture = 0},  
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue352)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue352"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue352", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue353', function() 
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue353 = {
            outfitData = {
                ["pants"]   = { item = 128, texture = 0},  
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue353)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue353"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue353", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue354', function() 
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue354 = {
            outfitData = {
                ["pants"]   = { item = 128, texture = 1},  
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue354)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue354"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue354", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue355', function() 
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue355 = {
            outfitData = {
                ["pants"]   = { item = 128, texture = 2},  
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue355)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue355"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue355", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue356', function() 
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue356 = {
            outfitData = {
                ["pants"]   = { item = 128, texture = 3},  
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue356)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue356"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue356", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue357', function() 
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue357 = {
            outfitData = {
                ["pants"]   = { item = 126, texture = 0},  
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue357)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue357"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue357", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue358', function() 
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue358 = {
            outfitData = {
                ["shoes"]   = { item = 14, texture = 0},  
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue358)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue358"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue358", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue359', function() 
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue359 = {
            outfitData = {
                ["shoes"]   = { item = 14, texture = 5},  
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue359)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue359"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue359", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue360', function() 
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue360 = {
            outfitData = {
                ["shoes"]   = { item = 14, texture = 8},  
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue360)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue360"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue360", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue361', function() 
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue361 = {
            outfitData = {
                ["shoes"]   = { item = 14, texture = 12},  
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue361)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue361"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue361", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue362', function() 
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue362 = {
            outfitData = {
                ["shoes"]   = { item = 25, texture = 0},  
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue362)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue362"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue362", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue363', function() 
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue363 = {
            outfitData = {
                ["shoes"]   = { item = 27, texture = 0},  
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue363)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue363"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue363", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue364', function() 
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue364 = {
            outfitData = {
                ["shoes"]   = { item = 29, texture = 0},  
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue364)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue364"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue364", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue365', function() 
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue365 = {
            outfitData = {
                ["hat"]   = { item = 3, texture = 0},  
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue365)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue365"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue365", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue366', function() 
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue366 = {
            outfitData = {
                ["hat"]   = { item = 3, texture = 1},  
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue366)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue366"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue366", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue367', function() 
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue367 = {
            outfitData = {
                ["hat"]   = { item = 14, texture = 0},  
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue367)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue367"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue367", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue368', function() 
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue368 = {
            outfitData = {
                ["hat"]   = { item = 14, texture = 1},  
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue368)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue368"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue368", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue369', function() 
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue369 = {
            outfitData = {
                ["hat"]   = { item = 14, texture = 2},  
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue369)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue369"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue369", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue370', function() 
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue370 = {
            outfitData = {
                ["hat"]   = { item = 14, texture = 3},  
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue370)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue370"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue370", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue371', function() 
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue371 = {
            outfitData = {
                ["hat"]   = { item = 14, texture = 4},  
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue371)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue371"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue371", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue372', function() 
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue372 = {
            outfitData = {
                ["hat"]   = { item = 14, texture = 5},  
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue372)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue372"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue372", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue373', function() 
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue373 = {
            outfitData = {
                ["hat"]   = { item = 14, texture = 6},  
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue373)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue373"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue373", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue374', function() 
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue374 = {
            outfitData = {
                ["hat"]   = { item = 14, texture = 7},  
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue374)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue374"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue374", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue375', function() 
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue375 = {
            outfitData = {
                ["hat"]   = { item = 76, texture = 0},  
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue375)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue375"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue375", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue376', function() 
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue376 = {
            outfitData = {
                ["hat"]   = { item = 77, texture = 0},  
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue376)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue376"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue376", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue377', function() 
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue377 = {
            outfitData = {
                ["hat"]   = { item = 109, texture = 0},  
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue377)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue377"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue377", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue378', function() 
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue378 = {
            outfitData = {
                ["hat"]   = { item = 110, texture = 0},  
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue378)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue378"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue378", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue379', function() 
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue379 = {
            outfitData = {
                ["hat"]   = { item = 120, texture = 0},  
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue379)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue379"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue379", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue380', function() 
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue380 = {
            outfitData = {
                ["hat"]   = { item = 120, texture = 1},  
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue380)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue380"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue380", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue381', function() 
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue381 = {
            outfitData = {
                ["hat"]   = { item = 120, texture = 2},  
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue381)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue381"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue381", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue382', function() 
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue382 = {
            outfitData = {
                ["hat"]   = { item = 120, texture = 3},  
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue382)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue382"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue382", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue383', function() 
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue383 = {
            outfitData = {
                ["hat"]   = { item = 120, texture = 4},  
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue383)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue383"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue383", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue384', function() 
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue384 = {
            outfitData = {
                ["hat"]   = { item = 120, texture = 5},  
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue384)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue384"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue384", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue385', function() 
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue385 = {
            outfitData = {
                ["hat"]   = { item = 120, texture = 6},  
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue385)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue385"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue385", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue386', function() 
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue386 = {
            outfitData = {
                ["hat"]   = { item = 120, texture = 7},  
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue386)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue386"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue386", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue387', function() 
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue387 = {
            outfitData = {
                ["hat"]   = { item = 120, texture = 8},  
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue387)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue387"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue387", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue388', function() 
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue388 = {
            outfitData = {
                ["hat"]   = { item = 120, texture = 9},  
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue388)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue388"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue388", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue389', function() 
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue389 = {
            outfitData = {
                ["hat"]   = { item = 120, texture = 10},  
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue389)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue389"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue389", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue390', function() 
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue390 = {
            outfitData = {
                ["hat"]   = { item = 120, texture = 11},  
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue390)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue390"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue390", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue391', function() 
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue391 = {
            outfitData = {
                ["hat"]   = { item = 120, texture = 12},  
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue391)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue391"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue391", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue392', function() 
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue392 = {
            outfitData = {
                ["hat"]   = { item = 120, texture = 13},  
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue392)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue392"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue392", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue393', function() 
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue393 = {
            outfitData = {
                ["hat"]   = { item = 120, texture = 14},  
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue393)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue393"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue393", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue394', function() 
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue394 = {
            outfitData = {
                ["hat"]   = { item = 120, texture = 15},  
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue394)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue394"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue394", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue395', function() 
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue395 = {
            outfitData = {
                ["hat"]   = { item = 120, texture = 16},  
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue395)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue395"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue395", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue396', function() 
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue396 = {
            outfitData = {
                ["hat"]   = { item = 120, texture = 17},  
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue396)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue396"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue396", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue397', function() 
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue397 = {
            outfitData = {
                ["hat"]   = { item = 120, texture = 18},  
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue397)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue397"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue397", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue398', function() 
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue398 = {
            outfitData = {
                ["hat"]   = { item = 120, texture = 19},  
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue398)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue398"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue398", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue399', function() 
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue399 = {
            outfitData = {
                ["hat"]   = { item = 120, texture = 20},  
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue399)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue399"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue399", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue400', function() 
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue400 = {
            outfitData = {
                ["hat"]   = { item = 120, texture = 21},  
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue400)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue400"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue400", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue401', function() 
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue401 = {
            outfitData = {
                ["hat"]   = { item = 120, texture = 22},  
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue401)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue401"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue401", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue402', function() 
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue402 = {
            outfitData = {
                ["hat"]   = { item = 120, texture = 23},  
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue402)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue402"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue402", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue403', function() 
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue403 = {
            outfitData = {
                ["hat"]   = { item = 120, texture = 24},  
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue403)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue403"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue403", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue404', function() 
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue404 = {
            outfitData = {
                ["hat"]   = { item = 120, texture = 25},  
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue404)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue404"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue404", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue405', function() 
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue405 = {
            outfitData = {
                ["hat"]   = { item = 130, texture = 0},  
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue405)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue405"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue405", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue406', function() 
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue406 = {
            outfitData = {
                ["hat"]   = { item = 131, texture = 0},  
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue406)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue406"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue406", 1)
    end)
end)
RegisterNetEvent('skins:client:tenue407', function() 
	TriggerEvent('animations:client:EmoteCommandStart', {"outofbreath"})
    QBCore.Functions.Progressbar("use_armor", "Vous êtes occupé(e), veuillez patienter", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		local tenue407 = {
            outfitData = {
                ["glass"]   = { item = 17, texture = 0},  
            }
        }
		TriggerEvent('qb-clothing:client:loadOutfit', tenue407)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tenue407"], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", "tenue407", 1)
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