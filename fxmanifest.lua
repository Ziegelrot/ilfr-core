--ILFR-CORE BY ZIEGELROT------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--/!\ DISTRIBUTION INTERDITE /!\----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--/!\ DISCORD : https://discord.gg/W6F8rqZ7KK /!\-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Petit rappel ! ILFR-CORE est basé sur Qb-core, disponible ici : https://github.com/qbcore-framework/qb-core
-- Il s'agit uniquement d'une version personnelle et améliorée/traduit. AUCUN support n'est disponible si vous utilisez une version leak QBUS ou ILFR-CORE.

fx_version 'adamant'

game 'gta5'
description 'ILFR-CORE FT. QBCORE | 2022 VERSION 1.1.0 BETA'
version '1.1.0'

client_scripts {
	'@menuv/menuv.lua', --MenuV
	'@PolyZone/client.lua', --Polyzone
    '@PolyZone/BoxZone.lua', --Polyzone
    '@PolyZone/EntityZone.lua', --Polyzone
    '@PolyZone/CircleZone.lua', --Polyzone
    '@PolyZone/ComboZone.lua', --Polyzone
	'config.lua', --Configuration ilfr-core
	'client.lua', --Ilfr-core
	'missions/missions_cl.lua', --Missions du serveur
    'system/notification/notifications_cl.lua', --Système de notifications
	'system/notification/notifications_list.lua', --Liste des notifications
	'players/useitems_cl.lua', --Meta utilisation items
	'jobs/recycle/main_cl.lua', --Job
	'jobs/bdnjob/main_cl.lua', --Job
	'jobs/ubereat/main_cl.lua', --Job
	'jobs/bdnjob/gui.lua', --Job
	'vehicles/keys/main_cl.lua', --Système de clef des véhicules
	'vehicles/failure/main_cl.lua', --Système de degats des véhicules
	'jobs/tow/main_cl.lua', --Job
	'jobs/trucker/main_cl.lua', --Job
	'jobs/garbage/main_cl.lua', --Job
	'jobs/realestate/main_cl.lua', --Job
	'jobs/realestate/menu_cl.lua', --Job
	'system/zones/main.lua', --Système de zone sur la carte
	'system/audio/main_cl.lua', --Système audio Dj booth
	'scripts/main_illegal_cl.lua', --Système récolte/vente ressouces illégale
	'scripts/main_legal_cl.lua', --Système récolte/vente ressouces légale
	'players/client.lua', --Système d'armes dans le dos
    'players/weaponb_config.lua', --Configuration d'armes dans le dos
	'scripts/main_rec_illegal_cl.lua', --Système récolte/vente ressouces illégale
	'scripts/main_rec_legal_cl.lua', --Système récolte/vente ressouces légale
	'system/anticheat/main_cl.lua', --Anticheat
	'system/pnj/client.lua', --Système de PNJ
	'system/pnj/client_legal.lua', --Spawn de PNJ
	'system/pnj/disable_pnj.lua', --Désactive les PNJ du jeu
	'system/blips/main.lua', --Système de marqueurs sur la carte
	'players/inventorybags.lua', --Sac à dos
	'players/inventoryskins_cl_homme.lua', --Meta inventaire homme
	'players/inventoryskins_cl_femme.lua' --Meta inventaire femme
}

shared_scripts {
    '@ilfr-mainserver/shared/locale.lua', --Désactivé
    'vehicles/failure/locales/en.lua', --Désactivé
    'config.lua' --Fichier configuration ilfr-core
}

server_scripts {
	'server.lua', --Ilfr-core
	'missions/missions_sv.lua', --Système de mission du serveur
	'players/useitems_sv.lua', --Utilisation des items
	'players/ilfrcore_deathmeta_sv.lua', --Système d'assurance santé
	'jobs/bdnjob/main_sv.lua', --Job
	'jobs/tow/main_sv.lua',  --Job
	'vehicles/keys/main_sv.lua', --Système de clefs des véhicules
	'vehicles/failure/main_sv.lua', --Système de dégats des véhicules
	'jobs/trucker/main_sv.lua', --Job
	'jobs/ubereat/main_sv.lua', --Job
	'jobs/garbage/main_sv.lua', --Job
	'jobs/realestate/main_sv.lua', --Job
	'jobs/realestate/menu_sv.lua', --Job
	'scripts/main_illegal_sv.lua',  --Système récolte/vente ressouces illégale
	'scripts/main_legal_sv.lua', --Système récolte/vente ressouces légale
	'scripts/main_rec_illegal_sv.lua', --Système récolte/vente ressouces illégale
	'scripts/main_rec_legal_sv.lua', --Système récolte/vente ressouces légale
	'system/anticheat/main_sv.lua', --Anticheat
	'system/audio/main_sv.lua', --Système audio Dj booth
	'jobs/recycle/main_sv.lua', --Job
	'players/inventoryskins_sv.lua', --Appels des tenues
    '@oxmysql/lib/MySQL.lua' --Appels MySQL/MariaDB
}

ui_page 'html/ui.html' --Déclaration page html

files {
    'html/ui.html', --Déclaration html
    'html/images/*.jpg',  --Déclaration jpg
    'html/images/*.png',  --Déclaration png
    'html/audio/*.ogg',  --Déclaration ogg
    'html/audio/*.mp3',  --Déclaration mp3
    'html/audio/*.wav',  --Déclaration wav
    'html/fonts/*.ttf',  --Déclaration ttf
    'html/css/*.css',  --Déclaration css
    'html/js/*.js'  --Déclaration js
}

exports {
    'Send', --Export notification
    'SendAdvanced', --Export notification
    'SendSuccess', --Export notification
    'SendInfo', --Export notification
    'SendWarning', --Export notification
    'SendError', --Export notification
    'SendPinned', --Export notification
    'Unpin', --Export notification
    'UpdatePinned' --Export notification
}

lua54 'yes'
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
dependency 'xsound' --Dépendance
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------