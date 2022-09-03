--#ILFRCORE, BY ZIEGELROT--

--ILFRCORE----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
local QBCore = exports['ilfr-mainserver']:GetCoreObject()
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

--JOB---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
local isLoggedIn = true
local PlayerJob = {}


RegisterNetEvent('QBCore:Client:OnJobUpdate')
AddEventHandler('QBCore:Client:OnJobUpdate', function(JobInfo)
    local OldlayerJob = PlayerJob.name
    PlayerJob = JobInfo
end)
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- PAIELOOP---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Citizen.CreateThread(function()
   --police------------------------------------------------
   while true do
   if PlayerJob.name == "police" then
   TriggerServerEvent("ilfr-core:assurance:paietier")
   TriggerServerEvent("ilfr-core:assurance:paietoutrisque")
   TriggerServerEvent("ilfr-core:server:pallier4")
   exports['ilfr-core']:SendAdvanced({
						message = 'Vous avez reçu les aides de l\'état de : ~g~225$~w~ sur votre compte.',
						title = 'Notification',
						subject = 'Aides de l\'état',
						icon = 'CHAR_ETAT',
							})       
   --gardienprison------------------------------------------------
   elseif PlayerJob.name == "gardienprison" then
   TriggerServerEvent("ilfr-core:assurance:paietier")
   TriggerServerEvent("ilfr-core:assurance:paietoutrisque")
   TriggerServerEvent("ilfr-core:server:pallier5")
   exports['ilfr-core']:SendAdvanced({
						message = 'Vous avez reçu les aides de l\'état de : ~g~350$~w~ sur votre compte.',
						title = 'Notification',
						subject = 'Aides de l\'état',
						icon = 'CHAR_ETAT',
							})
   --boitedenuit------------------------------------------------
   elseif PlayerJob.name == "boitedenuit" then
   TriggerServerEvent("ilfr-core:assurance:paietier")
   TriggerServerEvent("ilfr-core:assurance:paietoutrisque")
   TriggerServerEvent("ilfr-core:server:pallier1")
   exports['ilfr-core']:SendAdvanced({
						message = 'Vous avez reçu les aides de l\'état de : ~g~75$~w~ sur votre compte.',
						title = 'Notification',
						subject = 'Aides de l\'état',
						icon = 'CHAR_ETAT',
							})
   --chômeur------------------------------------------------
   elseif PlayerJob.name == "chomeur" then
   TriggerServerEvent("ilfr-core:assurance:paietier")
   TriggerServerEvent("ilfr-core:assurance:paietoutrisque")
   TriggerServerEvent("ilfr-core:server:pallier0")
   exports['ilfr-core']:SendAdvanced({
						message = 'Vous avez reçu les aides de l\'état de : ~g~15$~w~ sur votre compte.',
						title = 'Notification',
						subject = 'Aides de l\'état',
						icon = 'CHAR_ETAT',
							})
   --medecinclinique------------------------------------------------
   elseif PlayerJob.name == "ambulance" then
   TriggerServerEvent("ilfr-core:assurance:paietier")
   TriggerServerEvent("ilfr-core:assurance:paietoutrisque")
   TriggerServerEvent("ilfr-core:server:pallier5")
   exports['ilfr-core']:SendAdvanced({
						message = 'Vous avez reçu les aides de l\'état de : ~g~350$~w~ sur votre compte.',
						title = 'Notification',
						subject = 'Aides de l\'état',
						icon = 'CHAR_ETAT',
							})	
   --dynasty8------------------------------------------------
   elseif PlayerJob.name == "realestate" then
   TriggerServerEvent("ilfr-core:assurance:paietier")
   TriggerServerEvent("ilfr-core:assurance:paietoutrisque")
   TriggerServerEvent("ilfr-core:server:pallier3")
   exports['ilfr-core']:SendAdvanced({
						message = 'Vous avez reçu les aides de l\'état de : ~g~175$~w~ sur votre compte.',
						title = 'Notification',
						subject = 'Aides de l\'état',
						icon = 'CHAR_ETAT',
							})
   --fbi------------------------------------------------
   elseif PlayerJob.name == "fbi" then
   TriggerServerEvent("ilfr-core:assurance:paietier")
   TriggerServerEvent("ilfr-core:assurance:paietoutrisque")
   TriggerServerEvent("ilfr-core:server:pallier4")
   exports['ilfr-core']:SendAdvanced({
						message = 'Vous avez reçu les aides de l\'état de : ~g~225$~w~ sur votre compte.',
						title = 'Notification',
						subject = 'Aides de l\'état',
						icon = 'CHAR_ETAT',
							})
   --Taxi------------------------------------------------
   elseif PlayerJob.name == "taxi" then
   TriggerServerEvent("ilfr-core:assurance:paietier")
   TriggerServerEvent("ilfr-core:assurance:paietoutrisque")
   TriggerServerEvent("ilfr-core:server:pallier3")
   exports['ilfr-core']:SendAdvanced({
						message = 'Vous avez reçu les aides de l\'état de : ~g~175$~w~ sur votre compte.',
						title = 'Notification',
						subject = 'Aides de l\'état',
						icon = 'CHAR_ETAT',
							})
   --Vendeurvoitureoccas------------------------------------------------
   elseif PlayerJob.name == "cardealerbudget" then
   TriggerServerEvent("ilfr-core:assurance:paietier")
   TriggerServerEvent("ilfr-core:assurance:paietoutrisque")
   TriggerServerEvent("ilfr-core:server:pallier2")
   exports['ilfr-core']:SendAdvanced({
						message = 'Vous avez reçu les aides de l\'état de : ~g~125$~w~ sur votre compte.',
						title = 'Notification',
						subject = 'Aides de l\'état',
						icon = 'CHAR_ETAT',
							})
   --vendeurdemoto------------------------------------------------
   elseif PlayerJob.name == "cardealerbike" then
   TriggerServerEvent("ilfr-core:assurance:paietier")
   TriggerServerEvent("ilfr-core:assurance:paietoutrisque")
   TriggerServerEvent("ilfr-core:server:pallier2")
   exports['ilfr-core']:SendAdvanced({
						message = 'Vous avez reçu les aides de l\'état de : ~g~125$~w~ sur votre compte.',
						title = 'Notification',
						subject = 'Aides de l\'état',
						icon = 'CHAR_ETAT',
							})
   --vendeurgrotti------------------------------------------------
   elseif PlayerJob.name == "cardealer" then
   TriggerServerEvent("ilfr-core:assurance:paietier")
   TriggerServerEvent("ilfr-core:assurance:paietoutrisque")
   TriggerServerEvent("ilfr-core:server:pallier2")
   exports['ilfr-core']:SendAdvanced({
						message = 'Vous avez reçu les aides de l\'état de : ~g~125$~w~ sur votre compte.',
						title = 'Notification',
						subject = 'Aides de l\'état',
						icon = 'CHAR_ETAT',
							})
    --JunkostAuto------------------------------------------------
   elseif PlayerJob.name == "mechanic" then
   TriggerServerEvent("ilfr-core:assurance:paietier")
   TriggerServerEvent("ilfr-core:assurance:paietoutrisque")
   TriggerServerEvent("ilfr-core:server:pallier2")
   exports['ilfr-core']:SendAdvanced({
						message = 'Vous avez reçu les aides de l\'état de : ~g~125$~w~ sur votre compte.',
						title = 'Notification',
						subject = 'Aides de l\'état',
						icon = 'CHAR_ETAT',
							})
    --Juge------------------------------------------------
   elseif PlayerJob.name == "judge" then
   TriggerServerEvent("ilfr-core:assurance:paietier")
   TriggerServerEvent("ilfr-core:assurance:paietoutrisque")
   TriggerServerEvent("ilfr-core:server:pallier5")
   exports['ilfr-core']:SendAdvanced({
						message = 'Vous avez reçu les aides de l\'état de : ~g~350$~w~ sur votre compte.',
						title = 'Notification',
						subject = 'Aides de l\'état',
						icon = 'CHAR_ETAT',
							})
    --Avocat------------------------------------------------
   elseif PlayerJob.name == "lawyer" then
   TriggerServerEvent("ilfr-core:assurance:paietier")
   TriggerServerEvent("ilfr-core:assurance:paietoutrisque")
   TriggerServerEvent("ilfr-core:server:pallier4")
   exports['ilfr-core']:SendAdvanced({
						message = 'Vous avez reçu les aides de l\'état de : ~g~225$~w~ sur votre compte.',
						title = 'Notification',
						subject = 'Aides de l\'état',
						icon = 'CHAR_ETAT',
							})
   --Journaliste------------------------------------------------
   elseif PlayerJob.name == "reporter" then
   TriggerServerEvent("ilfr-core:assurance:paietier")
   TriggerServerEvent("ilfr-core:assurance:paietoutrisque")
   TriggerServerEvent("ilfr-core:server:pallier3")
   exports['ilfr-core']:SendAdvanced({
						message = 'Vous avez reçu les aides de l\'état de : ~g~175$~w~ sur votre compte.',
						title = 'Notification',
						subject = 'Aides de l\'état',
						icon = 'CHAR_ETAT',
							})
   --Chauffeurs-livreurs------------------------------------------------
   elseif PlayerJob.name == "trucker" then
   TriggerServerEvent("ilfr-core:assurance:paietier")
   TriggerServerEvent("ilfr-core:assurance:paietoutrisque")
   TriggerServerEvent("ilfr-core:server:pallier3")
   exports['ilfr-core']:SendAdvanced({
						message = 'Vous avez reçu les aides de l\'état de : ~g~175$~w~ sur votre compte.',
						title = 'Notification',
						subject = 'Aides de l\'état',
						icon = 'CHAR_ETAT',
							})
   --Dépanneur------------------------------------------------
   elseif PlayerJob.name == "tow" then
   TriggerServerEvent("ilfr-core:assurance:paietier")
   TriggerServerEvent("ilfr-core:assurance:paietoutrisque")
   TriggerServerEvent("ilfr-core:server:pallier3")
   exports['ilfr-core']:SendAdvanced({
						message = 'Vous avez reçu les aides de l\'état de : ~g~175$~w~ sur votre compte.',
						title = 'Notification',
						subject = 'Aides de l\'état',
						icon = 'CHAR_ETAT',
							})
   --Mafia------------------------------------------------
   elseif PlayerJob.name == "mafia" then
   TriggerServerEvent("ilfr-core:assurance:paietier")
   TriggerServerEvent("ilfr-core:assurance:paietoutrisque")
   exports['ilfr-core']:SendAdvanced({
						message = 'Vous avez reçu les aides de l\'état de : ~g~BETA~w~ sur votre compte.',
						title = 'Notification',
						subject = 'Aides de l\'état',
						icon = 'CHAR_ETAT',
							})
   --Sans-papiers------------------------------------------------
   elseif PlayerJob.name == "unemployed" then
   TriggerServerEvent("ilfr-core:assurance:paietier")
   TriggerServerEvent("ilfr-core:assurance:paietoutrisque")
   exports['ilfr-core']:SendAdvanced({
						message = 'Vous n\'avez ~r~pas reçu~w~ les aides de l\'état car vous n\'êtes pas encore répertorié(e) à la mairie. Vous devez faire votre recensement citoyen pour obtenir des aides.',
						title = 'Notification',
						subject = 'Aides de l\'état',
						icon = 'CHAR_ETAT',
							})
	end 
	Wait((1000 * 60) * 60) --ATTENTE 1 HEURE POUR AIDES DE L'ÉTAT.
	
	end
end)
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--MENU DU JOUEUR (ILFR-MENU REQUIS)---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('menupersonnel', function()
   --Dépanneur------------------------------------------------
	if PlayerJob.name == "tow" then
   TriggerServerEvent("ilfr-menu:server:openMenudepanneur")
   --Taxi------------------------------------------------
   elseif PlayerJob.name == "taxi" then
   TriggerServerEvent("ilfr-menu:server:openMenutaxiprincipal")
   --Ambulance------------------------------------------------
   elseif PlayerJob.name == "realestate" then
   TriggerServerEvent("ilfr-menu:server:openMenurealestate")
   else
   TriggerServerEvent("ilfr-menu:server:openMenu")	
   end			   
end)

RegisterCommand('menushopprive', function()
    --police------------------------------------------------
   if PlayerJob.name == "police" then
   TriggerServerEvent("ilfr-menu:server:openShopPrivePolice")
   --Mafia------------------------------------------------
   elseif PlayerJob.name == "mafia" then
   TriggerServerEvent("ilfr-menu:server:openShopPriveMafia")
   --Ambulance------------------------------------------------
   elseif PlayerJob.name == "ambulance" then
   TriggerServerEvent("ilfr-menu:server:openShopPriveAmbulance")
   else
   exports['ilfr-core']:SendAdvanced({
						message = "Vous n'avez pas les autorisations nécessaires.",
						title = 'Notification',
						subject = 'Action impossible',
						icon = 'CHAR_NON',
							})
   end			
end)
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--FERMER INVENTAIRE VIA COMMANDE-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('inventoryclose', function()
TriggerServerEvent('inventory:Server:ftgmenu')	--Oui, oui, oui, ferme ta @!XW?é le menu.
end)
RegisterCommand('affichelecash', function()
ExecuteCommand('cash')--Afficher le cash pendant 10secondes. NE FONCTIONNE PAS SI CASH UTILISÉ EN ITEM
end)
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--TOUCHE MAPPING----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
RegisterKeyMapping('menupersonnel', 'Menu de votre personnage', 'keyboard', 'TAB') --Ouvre le menu tab
RegisterKeyMapping('affichelecash', 'Afficher votre liquide', 'keyboard', 'Z') --Affiche le liquide en poche
RegisterKeyMapping('phone', 'Ouvrir le téléphone', 'keyboard', 'M') --Ouvre le téléphone si le joueur en possède un
RegisterKeyMapping('animationmenu', 'Ouvrir rapidement le menu d\'animations', 'keyboard', 'HOME')  --Ouvre le menu d'animations rapidement
RegisterKeyMapping('inventory', 'Ouvrir l\'inventaire', 'keyboard', 'I') --Permet d'ouvrir l'inventaire
RegisterKeyMapping('hu', 'Mettre les mains en l\'air', 'KEYBOARD', 'X') --Mettre les mains en l'air rapidement
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--Minimap uniquement en véhicule------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Citizen.CreateThread(function() 
	while true do 
		Citizen.Wait(0) 
			local playerPed = GetPlayerPed(-1) 
			local playerVeh = GetVehiclePedIsIn(playerPed, false) 
		if DoesEntityExist(playerVeh) then 
		DisplayRadar(true) 
			else 
				DisplayRadar(false) 
		end 
	end 
end)
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--MiniMap Cayo DLC--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

CreateThread(function()
	while true do
		SetRadarAsExteriorThisFrame()
		SetRadarAsInteriorThisFrame(`h4_fake_islandx`, vec(4700.0, -5145.0), 0, 0)
		Wait(0)
	end
end)
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--Animations si le joueur appuis sur echap (regarde une carte)------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
local inMenuMode = false
local Animation = false
Citizen.CreateThread(function()
	while true do
		Wait(500)
		if IsPauseMenuActive() then
			AnimMode()
		else
			if Animation then
				Animation = false
				ClearPedTasks(PlayerPedId())
			end
			inMenuMode = false
			DestroyAllProps()
		end
	end
	
end)

function AnimMode()
	if not inMenuMode then
		if not IsPedInAnyVehicle(PlayerPedId()) then
			Animation = true
			inMenuMode = true
			local Player = PlayerPedId()
			local AnimDict = "amb@world_human_tourist_map@male@idle_b"
			local Anim = "idle_d"
			LoadAnim(AnimDict)
			local Prop = 'p_tourist_map_01_s'
			local PropBone = 28422
			AddPropToPlayer(Prop, PropBone, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
			TaskPlayAnim(GetPlayerPed(-1), AnimDict, Anim, 2.0, 8.0, -1, 53, 0, false, false, false)
		end
	else
	
	end
end

function LoadAnim(dict)
  while not HasAnimDictLoaded(dict) do
    RequestAnimDict(dict)
    Wait(10)
  end
end

function LoadPropDict(model)
  while not HasModelLoaded(GetHashKey(model)) do
    RequestModel(GetHashKey(model))
    Wait(10)
  end
end

local PlayerHasProp = false
local PlayerProps = {}
function AddPropToPlayer(prop1, bone, off1, off2, off3, rot1, rot2, rot3)
  local Player = PlayerPedId()
  local x,y,z = table.unpack(GetEntityCoords(Player))

  if not HasModelLoaded(prop1) then
    LoadPropDict(prop1)
  end

  prop = CreateObject(GetHashKey(prop1), x, y, z+0.2,  true,  true, true)
  AttachEntityToEntity(prop, Player, GetPedBoneIndex(Player, bone), off1, off2, off3, rot1, rot2, rot3, true, true, false, true, 1, true)
  table.insert(PlayerProps, prop)
  PlayerHasProp = true
  SetModelAsNoLongerNeeded(prop1)
end

function DestroyAllProps()
  for _,v in pairs(PlayerProps) do
    DeleteEntity(v)
  end
  PlayerHasProp = false
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--Ouvrir n'importe quelles portes d'un véhicule.--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Settings = {
    KeepEngineOn = true, ---Laissez le moteur allumer quand un joueur sort du véhicule ? Oui/Non
    CheckPlayerInCar = true --- Voir si le véhicule a déja un occupant. Oui/Non
}

CreateThread(function()
    local dist, index,ped
    while true do
        if IsControlJustPressed(0, 75) then
            ped = PlayerPedId()
            if IsPedInAnyVehicle(ped) then
                if Settings.KeepEngineOn then
                    local veh = GetVehiclePedIsIn(ped)
                    if GetIsVehicleEngineRunning(veh) then
                        TaskLeaveVehicle(ped, veh, 0)
                        Wait(1000)
                        SetVehicleEngineOn(veh, true, true, true)
                    end
                end
            else
                local veh = GetVehiclePedIsTryingToEnter(ped)
                if veh ~= 0 then
                    if CanSit(veh) then
                        local coords = GetEntityCoords(ped)
                        if #(coords - GetEntityCoords(veh)) <= 3.5 then
                            ClearPedTasks(ped)
                            ClearPedSecondaryTask(ped)
                            for i = 0, GetNumberOfVehicleDoors(veh), 1 do
                                local coord = GetEntryPositionOfDoor(veh, i)
                                if (IsVehicleSeatFree(veh, i - 1) and
                                    GetVehicleDoorLockStatus(veh) ~= 2) then
                                    if dist == nil then
                                        dist = #(coords - coord)
                                        index = i
                                    end
                                    if #(coords - coord) < dist then
                                        dist = #(coords - coord)
                                        index = i
                                    end
                                end
                            end
                            if index then
                                TaskEnterVehicle(ped, veh, 10000, index - 1,1.0, 1, 0)
                            end
                            index, dist = nil, nil
                        end
                    end
                end
            end
        end
        Wait(1)
    end
end)

CanSit = function(veh)
    if not Settings.CheckPlayerInCar then 
        return true 
    end
    for i = -1, 15 do
        if IsEntityAPed(GetPedInVehicleSeat(veh, i)) then return false end
    end
    return true
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--AUTRES.--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent('ilfr-core:newpl:velocl') --SPAWN VELO DES NOUVEAUX JOUEURS
AddEventHandler('ilfr-core:newpl:velocl', function(velocl)
				local veh = cruiser
			   local ped = PlayerPedId()
			   if veh == cruiser then veh = "cruiser" end
				vehiclehash = GetHashKey(veh)
				RequestModel(vehiclehash)
				local vehicule = CreateVehicle(vehiclehash, GetEntityCoords(ped), GetEntityHeading(ped), true, false)
				TaskWarpPedIntoVehicle(ped, vehicule, -1)
				SetModelAsNoLongerNeeded(vehicule)
				TriggerServerEvent("ilfr-core:newpl:velosave")	
				TriggerEvent("vehiclekeys:client:SetOwner", QBCore.Functions.GetPlate(vehicule))
end)

RegisterNetEvent('ilfr-core:depan:depanneuse') --SPAWN DÉPANNEUSE POUR LES MECANO (à déplacer dans le script)
AddEventHandler('ilfr-core:depan:depanneuse', function(depanneuse)
				local veh = flatbed
			   local ped = PlayerPedId()
			   if veh == flatbed then veh = "flatbed" end
				vehiclehash = GetHashKey(veh)
				RequestModel(vehiclehash)
				local vehicule = CreateVehicle(vehiclehash, GetEntityCoords(ped), GetEntityHeading(ped), true, false) --modifier coordonnées plus tard
				TaskWarpPedIntoVehicle(ped, vehicule, -1)
				SetModelAsNoLongerNeeded(vehicule)
				TriggerServerEvent("ilfr-core:depan:caution")
				TriggerEvent("vehiclekeys:client:SetOwner", QBCore.Functions.GetPlate(vehicule))
end)

RegisterNetEvent('ilfr-core:client:amende') --OUVRE LE MENU D'AMMENDES
AddEventHandler('ilfr-core:client:amende', function(amende)
				TriggerServerEvent("Kwak:RequestOpenMenuInvo")
end)

RegisterNetEvent('ilfr-core:client:cuff') --MENOTTES
AddEventHandler('ilfr-core:client:cuff', function(cuff)
				ExecuteCommand('cuff')
end)
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
		