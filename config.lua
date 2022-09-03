Config = {}

--Notifications----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Config.Timeout          = 10000          -- Durée de la notification (prend le dessus si déclaré dans l'export)
Config.Position         = "bottomleft"  -- Position de la notification (prend le dessus si déclaré dans l'export)
Config.Progress         = true         -- // Non fonctionnel pour le moment
Config.Theme            = "default"
Config.Queue            = 5             -- Nombre de notifications en file d'attente possible
Config.Stacking         = true
Config.ShowStackedCount = true
Config.AnimationOut     = "fadeOut";    -- Animation de fin - 'fadeOut', 'fadeOutLeft', 'flipOutX', 'flipOutY', 'bounceOutLeft', 'backOutLeft', 'slideOutLeft', 'zoomOut', 'zoomOutLeft'
Config.AnimationTime    = 500
Config.FlashCount       = 5
Config.FlashType       = "flash" 
Config.SoundFile        = false --'ilfr-notification.ogg' si vous souhaitez activer la notification
Config.SoundVolume      = 0.1

Config.Pictures = { -- Vous pouvez ajouter votre image personnalisée ici
	JOB_INFO					     = "job_info.jpg",
	CAR_LOCK					     = "Car_lock.jpg",
	CAR_LOCK2					     = "Car_lock2.jpg",
	CAR_LOCK3					     = "Car_lock3.jpg",
	CHAR_HOTEL					     = "Char_hotel.jpg",
	CHAR_NON						 = "char_non.jpg",
	CHAR_VOL					     = "char_vol.jpg",
	CHAR_MOBILE					     = "char_mobile.jpg",
	CHAR_TAXI_MOD				     = "char_taxi_mod.jpg",
	CHAR_RECOLTE				     = "char_recolte.jpg",
	CHAR_TRAITEMENT				     = "char_traitement.jpg",
	CHAR_VENTE			     		 = "char_vente.jpg",
	CHAR_CYBER_CAFE		     		 = "char_cybercafe.jpg",
	CHAR_PARKING		     		 = "char_parking.jpg",
	CHAR_FOUR		     		 	 = "Char_four.jpg",
	CHAR_INFOX		     		 	 = "Char_info.jpg",
	CHAR_MISSION		     		 = "Char_notifinfo.jpg",
	CHAR_NEWPL		     		 	 = "Char_creation.jpg",
	CHAR_STORE     		 	 		 = "Car_commerce.jpg",
	CHAR_HEALTH   		 	 		 = "Car_health.jpg",
	CHAR_POLICE   		 	 		 = "Car_police.jpg",
	CHAR_ADMIN  		 	 		 = "Car_admin.jpg",
	CHAR_PL 		 	 		     = "Car_pl.jpg",
	CHAR_DEPAN 		 	 		     = "Char_depan.jpg",
	CHAR_ETAT 		 	 		     = "Car_aide.jpg",
	CHAR_DYNA 		 	 		     = "char_dyna.jpg",
	CHAR_LENNY		 	 		     = "lenny.jpg",
	CHAR_BANK_FLEECA				 = "Char_bank_fleeca.jpg",
	CHAR_EBOU				 		 = "eboueur.jpg",
	CHAR_MISSION_OK			 		 = "Char_mission_ok.jpg",
	CHAR_MISSION_GANG		 		 = "Char_mission_gang.jpg",
	CHAR_NOPE		 		 	     = "Char_blocked.jpg",
	CHAR_AUTO_ECOLE		 		 	 = "autoecole.jpg",
	CHAR_LIVREUR_PIZZA	 		 	 = "pizza.jpg",
	CHAR_VELO					 	 = "velo.jpg",
	CHAR_ALT					 	 = "alt.jpg",
	CHAR_OK					 	     = "ok.jpg",
	CHAR_PAYNSPRAY				 	 = "paynspray.jpg",
	CHAR_ASSURANCE			 	     = "assurance.jpg"
}
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
----BLIPS----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
local StringCharset = {}
local NumberCharset = {}

for i = 48,  57 do table.insert(NumberCharset, string.char(i)) end
for i = 65,  90 do table.insert(StringCharset, string.char(i)) end
for i = 97, 122 do table.insert(StringCharset, string.char(i)) end


Config.LocationsBlips = {
   ["culte"] = {
       [1] = {label = "Lieu de culte", coords = vector4(-227.97, 557.66, 15.55, 89.59)}, --
   },
   ["banque"] = {
       [1] = {label = "Banque", coords = vector4(182.87, 297.41, 15.5, 89.59)}, --
	   [2] = {label = "Banque", coords = vector4(966.22, 1410.58, 21.77, 89.59)}, --
   },
   ["velo"] = {
       [1] = {label = "Location de vélo", coords = vector4(87.46, 796.66, 14.81, 133.59)}, --
	   [2] = {label = "Location de vélo", coords = vector4(-0.09, 1650.49, 14.68, 339.45)}, --
	   [3] = {label = "Location de vélo", coords = vector4(2374.04, 1316.25, 6.09, 225.27)}, --
	   [4] = {label = "Location de vélo", coords = vector4(-473.86, 913.94, 4.66, 66.44)}, --
   },
   -- ["missionlenny"] = {
       -- [1] = {label = "Missions de : Lenny", coords = vector4(-340.57, 2205.92, 17.28, 270.73)}, --
   -- },
   ["policehelicoptere"] = {
       [1] = {label = "Héliport LCPD", coords = vector4(130.78, 2094.27, 32.64, 324.12)}, --
   },
   ["assurance"] = {
       [1] = {label = "Assurance santé", coords = vector4(328.51, 322.69, 9.08, 89.56)}, --
   },
   ["paynspray"] = {
       [1] = {label = "Pay 'n' Spray", coords = vector4(1126.45, 542.28, 21.36, 180.7)}, --
	   [2] = {label = "Pay 'n' Spray", coords = vector4(-239.83, 2378.39, 20.39, 180.0)}, --
	   [3] = {label = "Pay 'n' Spray", coords = vector4(-445.44, 1205.49, 6.73, 178.99)}, --
	   [4] = {label = "Pay 'n' Spray", coords = vector4(-1232.37, 1123.72, 10.92, 359.16)}, --
   },
   -- ["missionsonny"] = {
       -- [1] = {label = "Missions de : Sonny", coords = vector4(1368.4, 232.42, 13.89, 90.99)}, --
   -- },
   ["cybercafe"] = {
       [1] = {label = "Cybercafé", coords = vector4(-266.58, 2236.48, 12.91, 178.41)}, --
	   [2] = {label = "Cybercafé", coords = vector4(-1507.75, 1305.53, 25.44, 153.15)}, --
	   [3] = {label = "Cybercafé", coords = vector4(1039.98, 664.81, 24.19, 16.77)}, --
   },
   ["activiteillegale"] = {
	   [1] = {label = "Inconnu", coords = vector4(-899.42, 2747.56, 22.4, 180.5)}, --Récolte Héroine --
	   [2] = {label = "Inconnu", coords = vector4(5320.01, -5251.16, 42.11, 314.16)}, --Récolte Cocaine --
	   [3] = {label = "Inconnu", coords = vector4(1293.21, 913.1, 37.75, 270.99)}, --Revente Cocaine --
	   [4] = {label = "Inconnu", coords = vector4(-1492.17, 953.93, 3.13, 186.56)}, --Revente Héroine --
	   [5] = {label = "Inconnu", coords = vector4(429.08, 546.03, 4.51, 178.7)}, --Traitement Cocaine --
	   [6] = {label = "Inconnu", coords = vector4(1291.32, 1507.45, 38.98, 239.6)}, --Traitement Héroine --
   },
   -- ["achatressource"] = {
	   -- [1] = {label = "Grossiste", coords = vector4(1012.87, 936.18, 11.74, 0.0)}, --Pierre
   -- },
   -- ["traitement"] = {
	   -- [1] = {label = "Raffinerie", coords = vector4(-1583.65, -171.02, 2.88, 0.0)}, --Pierre
   -- },
   -- ["recuplegal"] = {
	   -- [1] = {label = "Gisements de pierres", coords = vector4(1007.37, 2851.49, 4.58, 209.39)},  --Pierre (Récupère Cuivre, Or, Diamant, Bronze).
	   -- [2] = {label = "Gisements de pierres", coords = vector4(-807.46, 2738.16, 5.49, 118.03)},  --Pierre (Récupère Cuivre, Or, Diamant, Bronze).
	   -- [3] = {label = "Gisements de pierres", coords = vector4(-1942.71, 1151.84, 9.17, 268.18)},  --Pierre (Récupère Cuivre, Or, Diamant, Bronze).
	   -- [4] = {label = "Gisements de pierres", coords = vector4(2056.14, 1804.97, 4.53, 211.49)},  --Pierre (Récupère Cuivre, Or, Diamant, Bronze).
	   -- [5] = {label = "Gisements de pierres", coords = vector4(912.74, 26.19, 7.33, 284.72)},  --Pierre (Récupère Cuivre, Or, Diamant, Bronze).
   -- },
   ["avocat"] = {
	   [1] = {label = "Cabinet d'avocat", coords = vector4(147.18, 140.07, 5.63, 0.05)}, --
   },
   ["dechet"] = {
	   [1] = {label = "Déchèterie", coords = vector4(425.09, 465.56, 6.26, 179.87)}, --
   },
   ["atm"] = {   
	   [1] = {label = "Guichet automatique bancaire", coords = vector4(80.37, 224.33, 14.95, 0.0)},   --
	   [2] = {label = "Guichet automatique bancaire", coords = vector4(69.73869, 735.1065, 14.48897, 0.0)}, --
	   [3] = {label = "Guichet automatique bancaire", coords = vector4(-103.7071, 1037.995, 14.5545, 0.0)},	--
	   [4] = {label = "Guichet automatique bancaire", coords = vector4(-334.4142, 1395.143, 14.24021, 0.0)}, --
	   [5] = {label = "Guichet automatique bancaire", coords = vector4(-181.5674, 2207.244, 24.17909, 0.0)}, --
	   [6] = {label = "Guichet automatique bancaire", coords = vector4(54.91725, 2077.07, 20.27417, 0.0)}, --
	   [7] = {label = "Guichet automatique bancaire", coords = vector4(139.68, 1357.37, 15.76, 0.0)}, --
	   [8] = {label = "Guichet automatique bancaire", coords = vector4(964.4087, 531.1575, 17.19818, 0.0)}, --
	   [9] = {label = "Guichet automatique bancaire", coords = vector4(1209.825, 468.7791, 19.04679, 0.0)}, --
	   [10] = {label = "Guichet automatique bancaire", coords = vector4(1891.672, 1291.051, 27.50455, 0.0)}, --
	   [11] = {label = "Guichet automatique bancaire", coords = vector4(2365.888, 1292.916, 5.378706, 0.0)}, --
	   [12] = {label = "Guichet automatique bancaire", coords = vector4(1532.594, 2567.673, 16.1613, 0.0)},  --
	   [13] = {label = "Guichet automatique bancaire", coords = vector4(641.5331, 2239.623, 10.33456, 0.0)}, --
	   [14] = {label = "Guichet automatique bancaire", coords = vector4(1321.981, 1013.874, 32.15009, 0.0)}, --
	   [15] = {label = "Guichet automatique bancaire", coords = vector4(-1407.569, 1904.535, 22.52552, 0.0)}, --
	   [16] = {label = "Guichet automatique bancaire", coords = vector4(-1338.471, 877.9206, 6.705422, 0.0)}, --
	   [17] = {label = "Guichet automatique bancaire", coords = vector4(-1408.967, 1496.129, 19.94862, 0.0)}, --
   },
   ["tribunal"] = {   
	   [1] = {label = "Tribunal", coords = vector4(-262.31, 231.22, 6.54, 127.58)}, --
   },
   ["dyn8"] = {   
	   [1] = {label = "Dynasty8", coords = vector4(231.74, 644.57, 14.73, 25.16)}, --
   },
   ["truckerjob"] = {   
	   [1] = {label = "Entreprise de chauffeurs-livreurs", coords = vector4(-1092.43, 1292.47, 3.98, 266.61)}, --
   },
   ["newsjob"] = {   
	   [1] = {label = "LC Press", coords = vector4(246.57, 1219.91, 15.19, 270.17)}, --
   },
   ["chirur"] = {   
	   [1] = {label = "Chirurgie plastique", coords = vector4(314.15, 334.58, 9.08, 0.78)}, --
   },
}
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
----ZONES----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
config = {
	
	zones = {
		
		
		
		{
			coords = {x = -1411.95, y = 1951.43, z = 22.94}, --
			zone = {radius = 25.0, color = 0}, 
			blip = {draw = false, id =0, color = 1, text = ""}
		},
		{
			coords = {x = -1272.42, y = 1503.48, z = 17.23},   --
			zone = {radius = 25.0, color = 0}, 
			blip = {draw = false, id =0, color = 1, text = ""}
		},
		{
			coords = {x = -1029.16, y = 2302.94, z = 24.56},  -- 
			zone = {radius = 25.0, color = 0}, 
			blip = {draw = false, id =0, color = 1, text = ""}
		},
		{
			coords = {x = -536.39, y = 946.03, z = 4.28}, --
			zone = {radius = 25.0, color = 0}, 
			blip = {draw = false, id =0, color = 1, text = ""}
		},
		{
			coords = {x = 148.22, y = 1627.53, z = 20.15}, --
			zone = {radius = 25.0, color = 0}, 
			blip = {draw = false, id =0, color = 1, text = ""}
		},
		{
			coords = {x = -109.62, y = 499.48, z = 17.87 },  --
			zone = {radius = 25.0, color = 0}, 
			blip = {draw = false, id =0, color = 1, text = ""}
		},
		{
			coords = {x = 1322.16, y = 568.84, z = 25.98},  --
			zone = {radius = 25.0, color = 0}, 
			blip = {draw = false, id =0, color = 1, text = ""}
		},
		
		{
			coords = {x = -1164.96, y = 1130.28, z = 4.46}, --
			zone = {radius = 25.0, color = 0}, 
			blip = {draw = false, id =0, color = 1, text = ""}
		},
		{
			coords = {x = -877.09, y = 1156.83, z = 4.5}, --   
			zone = {radius = 25.0, color = 0}, 
			blip = {draw = false, id =0, color = 1, text = ""}
		},
		{
			coords = {x = 87.46, y = 796.65, z = 14.82}, --
			zone = {radius = 25.0, color = 0}, 
			blip = {draw = false, id =0, color = 1, text = ""}
		},
		{
			coords = {x = -1261.83, y = 2096.97, z = 23.32}, --
			zone = {radius = 25.0, color = 0}, 
			blip = {draw = false, id =0, color = 1, text = ""}
		},
		{
			coords = {x = -105.62, y = 274.63, z = 4.96}, -- 
			zone = {radius = 25.0, color = 0}, 
			blip = {draw = false, id =0, color = 1, text = ""}
		},
		{
			coords = {x = 4879.28, y = -5133.09, z = 5.45},  
			zone = {radius = 1200.0, color = 1}, 
			blip = {draw = false, id =0, color = 1, text = ""}
		},
		
	}
	
}
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--Job_Recycle----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Config['delivery'] = {
	outsideLocation = vector4(-1106.14, 1269.14, 3.98, 57.74),
	pickupLocations = {
		[1] = vector4(-1107.54, 1245.78, 3.98, 358.48),
		[2] = vector4(-1111.87, 1245.74, 3.98, 86.39),
		[3] = vector4(-1113.06, 1249.47, 3.98, 357.08),
		[4] = vector4(-1108.86, 1249.58, 3.98, 267.52),
		[5] = vector4(-1104.56, 1249.69, 3.98, 87.31)
	},
	dropLocation = vector4(-1082.96, 1263.96, 4.64, 267.89),
	warehouseObjects = {
		"prop_boxpile_05a",
		"prop_boxpile_04a",
		"prop_boxpile_06b",
		"prop_boxpile_02c",
		"prop_boxpile_02b",
		"prop_boxpile_01a",
		"prop_boxpile_08a",
	},
}
--Boite_de_nuit---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Config.LocationsBDN = {
    ["stash"] = vector3(-249.21, 1140.51, 14.81),
    ["duty"] = vector4(-250.88, 1129.67, 14.78, 358.77)
}
--Job_Trucker----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Config.BailPrice = 50
Config.Locations = {
    ["main"] = {
        label = "Votre salaire",
        coords = vector4(724.51, 1571.27, 2.71, 268.47),
    },
    ["vehicle"] = {
        label = "Votre mission d'intérim",
        coords = vector4(-1118.29, 1314.72, 3.52, 359.58),
    },
    ["stores"] ={
        [1] = {
            name = "ltdgasoline",
            coords = vector4(-1869.22, 945.26, 7.57, 7.02), 
        },
        [2] = {
            name = "247supermarket",
            coords = vector4(-1101.85, 604.71, 3.05, 271.87),
        },
        [3] = {
            name = "robsliquor",
            coords = vector4(-1682.86, 339.51, 3.21, 268.95),  
        },
        [4] = {
            name = "ltdgasoline2",
            coords = vector4(-1323.41, 949.29, 8.66, 90.17),  
        },
        [5] = {
            name = "robsliquor2",
            coords = vector4(-539.2, 1197.27, 4.81, 181.12),  
        },
        [6] = {
            name = "ltdgasoline3",
            coords = vector4(210.76, -29.38, 4.72, 209.33),  
        },
        [7] = {
            name = "robsliquor3",
            coords = vector4(-339.03, 2633.8, 8.75, 2.48), 
        },
        [8] = {
            name = "247supermarket2",
            coords = vector4(684.48, 1624.76, 2.7, 0.32),  
        },
        [9] = {
            name = "247supermarket3",
            coords = vector4(2325.15, 977.0, 5.81, 180.46),  
        },
        [10] = {
            name = "247supermarket4",
            coords = vector4(2047.91, 1307.22, 18.31, 90.43),  
        },
        [11] = {
            name = "247supermarket5",
            coords = vector4(768.21, 834.82, 7.01, 193.16), 
        },
        [12] = {
            name = "247supermarket6",
            coords = vector4(856.94, 722.71, 6.91, 337.59),  
        },
        [13] = {
            name = "robsliquor4",
            coords = vector4(573.18, 1025.19, 8.78, 357.64), 
        },
    },
}
Config.Vehicles = {
    ["brickadeb"] = "Poids-lourd de l'entreprise",
}
--Job_Tow----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Config.BailPriceTow = 50

Config.VehiclesTow = {
    ["flatbed"] = "Véhicule de dépannage",
}
Config.LocationsTow = {
    ["main"] = {
        label = "Salaire à récupérer",
        coords = vector4(-415.19, 2584.95, 9.6, 199.37),
    },
    ["vehicle"] = {
        label = "Véhicule de dépannage",
        coords = vector4(-408.74, 2582.38, 8.73, 120.76),
    },
    ["towspots"] = {
        [1] =  {model = "r50", coords = vector3(-168.83, 1032.42, 12.37)},
		[2] =  {model = "punto", coords = vector3(176.8, 142.03, 14.07)},
		[3] =  {model = "subaruwagon2002", coords = vector3(581.26, -17.86, 4.0)},
		[4] =  {model = "focus2003", coords = vector3(2058.4, 586.14, 16.76)},
		[5] =  {model = "a45amg", coords = vector3(2002.21, 1326.37, 15.81)},
		[6] =  {model = "dilettante", coords = vector3(732.01, 2120.09, 19.5)},
		[7] =  {model = "impala59c", coords = vector3(-1560.11, 57.7, 50.45)},
		[8] =  {model = "chsub01", coords = vector3(-1196.72, 1301.98, 18.94)},
		[9] =  {model = "stanier", coords = vector3(355.15, 1207.19, 14.02)},
		[10] =  {model = "habanero", coords = vector3(-48.25, -103.56, 4.16)},
		[11] =  {model = "blista2", coords = vector3(176.04, 1336.69, 14.1)},
		[12] =  {model = "ds4", coords = vector3(1545.76, 1506.17, 13.05)},
		[13] =  {model = "suzuswift", coords = vector3(2470.88, 752.18, 5.26)},
		[14] =  {model = "q820", coords = vector3(1184.61, 927.84, 14.49)},
		[15] =  {model = "xesv2", coords = vector3(308.84, -360.65, 4.34)},
		[16] =  {model = "bmwm3e30", coords = vector3(-1003.62, 146.57, 2.2)},
		[17] =  {model = "m3e46", coords = vector3(137.52, 1750.64, 19.73)},
		[18] =  {model = "aqv", coords = vector3(-230.92, 1100.49, 4.34)},
		[19] =  {model = "twingo", coords = vector3(-828.16, 1224.0, 3.18)},
		[20] =  {model = "boxster", coords = vector3(-1088.38, 1788.34, 21.78)},
    }
}
--Job_Realestate----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Config.LocationsReal = {
    ["blip"] = vector3(-454.49, 158.95, 78.82),
    ["duty"] = vector3(387.76, 671.04, 14.78), 
    ["vehicle"] = vector4(377.87, 664.41, 14.78, 89.89),
}
Config.VehiclesReal = {
    ["gle21"] = "Mercedes GLE",
	["q820"] = "Audi Q8",
	["xj"] = "Jaguar XJ ",
}
Config.MaxTierReal = 6
--Job_Uber----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Config.ZonesUber = {

	Vehicle = {
		Pos   = {x = -1432.71, y = 1470.83, z = 19.26} 
	},

	Spawn = {
        Pos   = {x = -1421.96, y = 1475.4, z = 19.57, h = 239.47}, 
        Heading = 239.47
	},

}
--Job_Garbage----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Config.BailPriceGarbage = 35
Config.LocationsGarbage = {
    ["vehicle"] = {
        label = "Véhicule de société",
        coords = vector4(426.21, 456.08, 4.50, 179.96), --
    },
    ["paycheck"] = {
        label = "Fiche de paie",
        coords = vector4(416.42, 454.01, 4.67, 271.42), --
    },
    ["trashcan"] ={
        [1] = {
            name = "Ramassage des poubelles",
            coords = vector4(-273.26, 2155.67, 17.04, 357.74), --
        },
        [2] = {
            name = "Ramassage des poubelles",
            coords = vector4(-109.97, 2169.92, 20.4, 180.31), --
        },
        [3] = {
            name = "Ramassage des poubelles",
            coords = vector4(-100.15, 2266.35, 20.43, 88.7), --
        },
        [4] = {
            name = "Ramassage des poubelles",
            coords = vector4(-185.93, 2275.6, 20.41, 354.58), --
        },
        [5] = {
            name = "Ramassage des poubelles",
            coords = vector4(-238.28, 2441.41, 20.28, 299.23), --
        },
        [6] = {
            name = "Ramassage des poubelles",
            coords = vector4(-316.52, 2373.38, 19.71, 355.85), --
        },
        [7] = {
            name = "Ramassage des poubelles",
            coords = vector4(-318.33, 2020.99, 14.75, 89.98), --
        },
        [8] = {
            name = "Ramassage des poubelles",
            coords = vector4(-393.54, 1974.09, 12.37, 175.68), --
        },
        [9] = {
            name = "Ramassage des poubelles",
            coords = vector4(-393.27, 1751.82, 9.96, 179.42), --
        },
        [10] = {
            name = "Ramassage des poubelles",
            coords = vector4(-407.4, 1702.84, 9.95, 90.19), --
        },
        [11] = {
            name = "Ramassage des poubelles",
            coords = vector4(-443.9, 1706.68, 9.95, 88.25), --
        },
        [12] = {
            name = "Ramassage des poubelles",
            coords = vector4(-473.07, 1712.65, 9.94, 5.59), --
        },
        [13] = {
            name = "Ramassage des poubelles",
            coords = vector4(-502.98, 986.63, 4.81, 178.49), --
        },
        [14] = {
            name = "Ramassage des poubelles",
            coords = vector4(-70.59, 271.61, 14.77, 91.44), --
        },
        [15] = {
            name = "Ramassage des poubelles",
            coords = vector4(-70.4, 192.09, 14.75, 268.94), --
        },
        [16] = {
            name = "Ramassage des poubelles",
            coords = vector4(-80.97, 82.67, 6.04, 143.82), --
        },
		[17] = {
            name = "Ramassage des poubelles",
            coords = vector4(69.3, 38.24, 5.19, 284.3), --
        },
		[18] = {
            name = "Ramassage des poubelles",
            coords = vector4(141.95, 76.2, 4.96, 301.63), --
        },
		[19] = {
            name = "Ramassage des poubelles",
            coords = vector4(216.45, 512.16, 14.75, 358.43), --
        },
		[20] = {
            name = "Ramassage des poubelles",
            coords = vector4(216.97, 578.02, 14.75, 2.2), --
        },
		[21] = {
            name = "Ramassage des poubelles",
            coords = vector4(207.6, 739.88, 14.77, 14.0), --
        },
		[22] = {
            name = "Ramassage des poubelles",
            coords = vector4(200.32, 870.55, 14.74, 357.84), --
        },
		[23] = {
            name = "Ramassage des poubelles",
            coords = vector4(199.18, 1013.5, 14.81, 89.16), --
        },
		[24] = {
            name = "Ramassage des poubelles",
            coords = vector4(199.36, 1460.35, 14.71, 88.49), --
        },
		[25] = {
            name = "Ramassage des poubelles",
            coords = vector4(66.54, 2020.55, 14.77, 88.35), --
        },
		[26] = {
            name = "Ramassage des poubelles",
            coords = vector4(3.81, 1905.15, 14.64, 270.45), --
        },
		[27] = {
            name = "Ramassage des poubelles",
            coords = vector4(2.92, 1680.79, 14.61, 269.34), --
        },
		[28] = {
            name = "Ramassage des poubelles",
            coords = vector4(4.86, 1182.96, 14.77, 178.39), --
        },
		[29] = {
            name = "Ramassage des poubelles",
            coords = vector4(-74.14, 1115.05, 14.82, 88.29), --
        },
		[30] = {
            name = "Ramassage des poubelles",
            coords = vector4(-241.74, 1156.18, 14.82, 90.52), --
        },
    },
}
Config.VehiclesGarbage = {
    ["lctrash"] = "Véhicule de la société",
}
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
----ANTI-CHEAT-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Config.FlagsForBan = 5
Config.SuperJumpLength = 20.0
Config.MaxSpeed = 13 
Config.Antiresourcestop = true
Config.Group = "user"
Config.BlacklistedPlates = {
    "BRUTAN",
}
Config.BlacklistedEvents = {
    '211ef2f8-f09c-4582-91d8-087ca2130157',
    '265df2d8-421b-4727-b01d-b92fd6503f5e',
    '6a7af019-2b92-4ec2-9435-8fb9bd031c26',
    '8321hiue89js',
    '99kr-burglary:addMDFWMoney',
    'AdminMDFWMenu:giveCash',
    'AdminMeDFWMnu:giveBank',
    'adminmenu:allowall',
    'adminmenu:cashoutall',
    'AdminMenu:giveBank',
    'AdminMenu:giveCash',
    'AdminMenu:giveDirtyMDFWMoney',
    'AdminMenu:giveDirtyMoney',
    'adminmenu:setsalary',
    'advancedFuel:setEssence',
    'antilynx8:anticheat',
    'antilynx8r4a:anticheat',
    'antilynxr4:detect',
    'AntiLynxR4:kick',
    'AntiLynxR4:log',
    'antilynxr6:detection',
    'arisonarp:wiezienie',
    'Banca:dDFWMeposit',
    'Banca:deposit',
    'Banca:withdraw',
    'bank:depDFWMosit',
    'bank:tranDFWMsfer',
    'bank:withdDFWMraw',
    'BsCuff:Cuff696999',
    'BsCuff:Cuff696DFWM999',
    'c65a46c5-5485-4404-bacf-06a106900258',
    'CheckHandcDFWMuff',
    'CheckHandcuff',
    'cuffGDFWMranted',
    'cuffGranted',
    'cuffSeDFWMrver',
    'cuffServer',
    'DFWM:adminmenuenable',
    'DFWM:askAwake',
    'DFWM:checkup',
    'DFWM:cleanareaentity',
    'DFWM:cleanareapeds',
    'DFWM:cleanareaveh',
    'DFWM:enable',
    'DFWM:invalid',
    'DFWM:log',
    'DFWM:openmenu',
    'DFWM:spectate',
    'DFWM:ViolationDetected',
    'DiscordBot:plaDFWMyerDied',
    'DiscordBot:playerDied',
    'dmv:succeDFWMss',
    'dmv:success',
    'dqd36JWLRC72k8FDttZ5adUKwvwq9n9m',
    'eden_garage:payhealth',
    'ems:revive',
    'Esx-MenuPessoal:Boss_recruterplayer',
    'esx-qalle-hunting:DFWMreward',
    'esx-qalle-hunting:reward',
    'esx-qalle-hunting:seDFWMll',
    'esx-qalle-hunting:sell',
    'esx-qalle-jail:jailPDFWMlayer',
    'esx-qalle-jail:jailPlayer',
    'esx-qalle-jail:jailPlayerNew',
    'esx:clientLog',
    'esx:createMissingPickups',
    'esx:enterpolicecar',
    'esx:getSharedObject',
    'esx:getShDFWMaredObjDFWMect',
    'esx:giDFWMveInventoryItem',
    'esx:giveInventoryItem',
    'esx:onPickup',
    'esx:playerLoaded',
    'esx:removeInventoryItem',
    'esx:triggerServerCallback',
    'esx:updateLastPosition',
    'esx:updateLoadout',
    'esx:useItem',
    'esx_ambulancejob:reDFWMvive',
    'esx_ambulancejob:revive',
    'esx_ambulancejob:setDeathStatus',
    'esx_baDFWMnksecurity:pay',
    'esx_banksecurity:pay',
    'esx_biDFWMlling:sBill',
    'esx_billing:sBill',
    'esx_blackmoney:washMoney',
    'esx_blanchisDFWMseur:startWhitening',
    'esx_blanchisseur:startWhitening',
    'esx_blanchisseur:washMoney',
    'esx_carthDFWMief:pay',
    'esx_carthief:alertcoDFWMps',
    'esx_carthief:alertcops',
    'esx_carthief:pay',
    'esx_dmvschool:addLiceDFWMnse',
    'esx_dmvschool:addLicense',
    'esx_dmvschool:pay',
    'esx_dmvschool:pDFWMay',
    'esx_drugs:cancelProcessing',
    'esx_drugs:GetUserInventory',
    'esx_drugs:pickedUpCannabis',
    'esx_drugs:pickedUpCDFWMannabis',
    'esx_drugs:processCannabis',
    'esx_drugs:processCDFWMannabis',
    'esx_drugs:sellDrug',
    'esx_drugs:starDFWMtTransformOpium',
    'esx_drugs:startHarDFWMvestMeth',
    'esx_drugs:startHarvestCoke',
    'esx_drugs:startHarvestDFWMCoke',
    'esx_drugs:startHarvestMeth',
    'esx_drugs:startHarvestOpium',
    'esx_drugs:startHarvestWDFWMeed',
    'esx_drugs:startHarvestWeed',
    'esx_drugs:startHDFWMarvestOpium',
    'esx_drugs:startSellCDFWMoke',
    'esx_drugs:startSellCoke',
    'esx_drugs:startSellDFWMOpium',
    'esx_drugs:startSellMDFWMeth',
    'esx_drugs:startSellMeth',
    'esx_drugs:startSellOpium',
    'esx_drugs:startSellWeDFWMed',
    'esx_drugs:startSellWeed',
    'esx_drugs:startTDFWMransformMeth',
    'esx_drugs:startTransDFWMformCoke',
    'esx_drugs:startTransfoDFWMrmWeed',
    'esx_drugs:startTransformCoke',
    'esx_drugs:startTransformMeth',
    'esx_drugs:startTransformOpium',
    'esx_drugs:startTransformWeed',
    'esx_drugs:stopHarDFWMvestWeed',
    'esx_drugs:stopHarvDFWMestCoke',
    'esx_drugs:stopHarvesDFWMtMeth',
    'esx_drugs:stopHarvestCoke',
    'esx_drugs:stopHarvestDFWMOpium',
    'esx_drugs:stopHarvestMeth',
    'esx_drugs:stopHarvestOpium',
    'esx_drugs:stopHarvestWeed',
    'esx_drugs:stopSellCoke',
    'esx_drugs:stopSellDFWMCoke',
    'esx_drugs:stopSellMDFWMeth',
    'esx_drugs:stopSellMeth',
    'esx_drugs:stopSellOpiuDFWMm',
    'esx_drugs:stopSellOpium',
    'esx_drugs:stopSellWDFWMeed',
    'esx_drugs:stopSellWeed',
    'esx_drugs:stopTDFWMransformWeed',
    'esx_drugs:stopTranDFWMsformCoke',
    'esx_drugs:stopTranDFWMsformMeth',
    'esx_drugs:stopTransDFWMformOpium',
    'esx_drugs:stopTransformCoke',
    'esx_drugs:stopTransformMeth',
    'esx_drugs:stopTransformOpium',
    'esx_drugs:stopTransformWeed',
    'esx_fueldDFWMelivery:pay',
    'esx_fueldelivery:pay',
    'esx_garbageDFWMjob:pay',
    'esx_garbagejob:pay',
    'esx_goDFWMpostaljob:pay',
    'esx_godiDFWMrtyjob:pay',
    'esx_godirtyjob:pay',
    'esx_gopostaljob:pay',
    'esx_handcuffs:cufDFWMfing',
    'esx_handcuffs:cuffing',
    'esx_inventoryhud:openPlayerInventory',
    'esx_jaDFWMil:sToJail',
    'esx_jail:sToJail',
    'esx_jail:unjailQuest',
    'esx_jailer:sToJail',
    'esx_jailer:sToJailCatfrajerze',
    'esx_jailer:unjailTiDFWMme',
    'esx_jailer:unjailTime',
    'esx_jailler:sToJail',
    'esx_jDFWMailer:sToJail',
    'esx_jobs:caDFWMution',
    'esx_jobs:caution',
    'esx_jobs:startWork',
    'esx_jobs:stopWork',
    'esx_mafiajob:confiscateDFWMPlayerItem',
    'esx_mecanojob:onNPCJobCDFWMompleted',
    'esx_mecanojob:onNPCJobCompleted',
    'esx_mechanicjob:starDFWMtCraft',
    'esx_mechanicjob:startCraft',
    'esx_mechanicjob:startHarvest',
    'esx_moneywash:depoDFWMsit',
    'esx_moneywash:deposit',
    'esx_moneywash:witDFWMhdraw',
    'esx_moneywash:withdraw',
    'esx_pizza:pay',
    'esx_pizza:pDFWMay',
    'esx_policejob:haDFWMndcuff',
    'esx_policejob:handcuff',
    'esx_ranger:pay',
    'esx_ranger:pDFWMay',
    'esx_skin:openRestrictedMenu',
    'esx_skin:responseSaDFWMveSkin',
    'esx_skin:responseSaveSkin',
    'esx_sloDFWMtmachine:sv:2',
    'esx_slotmachine:sv:2',
    'esx_society:getOnlDFWMinePlayers',
    'esx_society:getOnlinePlayers',
    'esx_society:openBosDFWMsMenu',
    'esx_society:putVehicleDFWMInGarage',
    'esx_society:setJob',
    'esx_status:set',
    'esx_tankerjob:DFWMpay',
    'esx_truckDFWMerjob:pay',
    'esx_truckerjob:pay',
    'esx_vehicleshop:setVehicleOwned',
    'esx_vehicleshop:setVehicleOwnedDFWM',
    'esx_vehicleshop:setVehicleOwnedPlayerId',
    'esx_vehicletrunk:givDFWMeDirty',
    'esx_vehicletrunk:giveDirty',
    'f0ba1292-b68d-4d95-8823-6230cdf282b6',
    'gambling:sp',
    'gambling:speDFWMnd',
    'gcPhone:sMessage',
    'gcPhone:tchat_channel',
    'gcPhone:tchat_channelDFWM',
    'gcPhone:_internalAddMessage',
    'gcPhone:_internalAddMessageDFWM',
    'give_back',
    'h:xd',
    'HCheat:TempDisableDetDFWMection',
    'hentailover:xdlol',
    'JailUpdate',
    'js:jaDFWMiluser',
    'js:jailuser',
    'js:removejailtime',
    'laundry:washcash',
    'LegacyFuel:PayFuDFWMel',
    'LegacyFuel:PayFuel',
    'ljail:jailplayer',
    'lscustoms:payGarage',
    'lscustoms:pDFWMayGarage',
    'lscustoms:UpdateVeh',
    'lynx8:anticheat',
    'mellotrainer:adminKick',
    'mellotrainer:adminKickDFWM',
    'mellotrainer:adminTeDFWMmpBan',
    'mellotrainer:adminTempBan',
    'mellotrainer:s_adminKill',
    'MF_MobileMeth:RewardPlayers',
    'mission:completDFWMed',
    'mission:completed',
    'NB:destituerplayer',
    'NB:recDFWMruterplayer',
    'NB:recruterplayer',
    'OG_cuffs:cuffCheckNearest',
    'OG_cuffs:cuffCheckNeDFWMarest',
    'paramedic:revive',
    'paycheck:bonDFWMus',
    'paycheck:salary',
    'paycheck:salDFWMary',
    'police:cuffGDFWMranted',
    'police:cuffGranted',
    'program-keycard:hacking',
    'projektsantos:mandathajs',
    'Tem2LPs5Para5dCyjuHm87y2catFkMpV',
    'tost:zgarnijsiano',
    'tostzdrapka:wygranko',
    'truckerJob:succeDFWMss',
    'truckerJob:success',
    'uncuffGranted',
    'unCuffServer',
    'veh_SR:CheckMonDFWMeyForVeh',
    'vrp_slotmachDFWMine:server:2',
    'vrp_slotmachine:server:2',
    'whoapd:revive',
    'wojtek_ubereats:hajs',
    'wojtek_ubereats:napiwek',
    'wyspa_jail:jail',
    'wyspa_jail:jailPlayer',
    'xk3ly-barbasz:getfukingmony',
    'xk3ly-farmer:paycheck',
    'ynx8:anticheat',
}
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
----AUDIO SYSTEM---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Config.DefaultVolume = 0.5 
Config.LocationsAudio = {
    ['vanilla'] = {
        ['job'] = 'boitedenuit', 
        ['radius'] = 70, 
        ['coords'] = vector3(-260.82, 1141.09, 12.08), 
        ['playing'] = true
    },
	['maisonet'] = {
        ['job'] = 'mechanic', 
        ['radius'] = 70,
        ['coords'] = vector3(-536.02, 951.0, 8.29), 
        ['playing'] = true
    }
}
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
----SCRIPTS------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Config.DealerLocationCokaine = vector3(1294.51, 910.17, 38.75)
Config.DealerLocationCokaine2 = vector3(-1492.07, 953.35, 4.09)
Config.GalliumLocation = vector3(1011.22, 937.35, 11.74)
Config.CanTake = false
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
----VEHICLES------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--Keys------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Config.Rob = true 
Config.HotwireChance = 0.5 
Config.RemoveLockpickNormal = 0.5 
Config.RemoveLockpickAdvanced = 0.2 
Config.RobberyChance = 0.5
Config.AlertCooldown = 10000 
Config.PoliceAlertChance = 0.5
Config.PoliceNightAlertChance = 0.25
Config.NoRobWeapons = {
    "WEAPON_UNARMED",
    "WEAPON_Knife",
    "WEAPON_Nightstick",
    "WEAPON_HAMMER",
    "WEAPON_Bat",
    "WEAPON_Crowbar",
    "WEAPON_Golfclub",
    "WEAPON_Bottle",
    "WEAPON_Dagger",
    "WEAPON_Hatchet",
    "WEAPON_KnuckleDuster",
    "WEAPON_Machete",
    "WEAPON_Flashlight",
    "WEAPON_SwitchBlade",
    "WEAPON_Poolcue",
    "WEAPON_Wrench",
    "WEAPON_Battleaxe",
    "WEAPON_Grenade",
    "WEAPON_StickyBomb",
    "WEAPON_ProximityMine",
    "WEAPON_BZGas",
    "WEAPON_Molotov",
    "WEAPON_FireExtinguisher",
    "WEAPON_PetrolCan",
    "WEAPON_Flare",
    "WEAPON_Ball",
    "WEAPON_Snowball",
    "WEAPON_SmokeGrenade",
}
--Failure
BackEngineVehicles = {
    [`ninef`] = true,
    [`adder`] = true,
    [`vagner`] = true,
    [`t20`] = true,
    [`infernus`] = true,
    [`zentorno`] = true,
    [`reaper`] = true,
    [`comet2`] = true,
    [`jester`] = true,
    [`jester2`] = true,
    [`cheetah`] = true,
    [`cheetah2`] = true,
    [`prototipo`] = true,
    [`turismor`] = true,
    [`pfister811`] = true,
    [`ardent`] = true,
    [`nero`] = true,
    [`nero2`] = true,
    [`tempesta`] = true,
    [`vacca`] = true,
    [`bullet`] = true,
    [`osiris`] = true,
    [`entityxf`] = true,
    [`turismo2`] = true,
    [`fmj`] = true,
    [`re7b`] = true,
    [`tyrus`] = true,
    [`italigtb`] = true,
    [`penetrator`] = true,
    [`monroe`] = true,
    [`ninef2`] = true,
    [`stingergt`] = true,
    [`surfer`] = true,
    [`surfer2`] = true,
    [`comet3`] = true,
}
	Config.Paid = true
	Config.Price = 750
--Config
cfg = {
	deformationMultiplier = 1.7,					
	deformationExponent = 1.0,					
	collisionDamageExponent = 0.5,				

	damageFactorEngine = 30.0,					
	damageFactorBody = 9.0,					
	damageFactorPetrolTank = 5.0,				
	engineDamageExponent = 0.1,					
	weaponsDamageMultiplier = 1.2,				
	degradingHealthSpeedFactor = 1,			
	cascadingFailureSpeedFactor = 0.1,		

	degradingFailureThreshold = 100.0,			
	cascadingFailureThreshold = 45.0,			
	engineSafeGuard = 50.0,						

	torqueMultiplierEnabled = true,				

	limpMode = false,							
	limpModeMultiplier = 0.15,					

	preventVehicleFlip = true,					

	sundayDriver = true,				
	sundayDriverAcceleratorCurve = 7.5,		
	sundayDriverBrakeCurve = 5.0,				

	displayBlips = false,					

	compatibilityMode = true,					
		
	randomTireBurstInterval = 0,				

	classDamageMultiplier = {
		[0] = 	0.3,		--	0: Compacts
				0.3,		--	1: Sedans
				0.3,		--	2: SUVs
				0.3,		--	3: Coupes
				0.3,		--	4: Muscle
				0.3,		--	5: Sports Classics
				0.3,		--	6: Sports
				0.3,		--	7: Super
				0.0,		--	8: Motorcycles
				0.3,		--	9: Off-road
				0.3,		--	10: Industrial
				0.3,		--	11: Utility
				0.3,		--	12: Vans
				0.3,		--	13: Cycles
				0.3,		--	14: Boats
				0.3,		--	15: Helicopters
				0.3,		--	16: Planes
				0.3,		--	17: Service
				0.3,		--	18: Emergency
				0.3,		--	19: Military
				0.3,		--	20: Commercial
				0.3			--	21: Trains
	}
}
--Repair (non utilisé)
repairCfg = {
	mechanics = {
		{name="Garage", id=446, r=25.0, x=-337.0,  y=-135.0,  z=39.0}	-- LSC Burton
	},

    fixMessageCount = 7,
	noFixMessageCount = 6
}

RepairEveryoneWhitelisted = false
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
