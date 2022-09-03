
Citizen.CreateThread(function()
    for k, station in pairs(Config.LocationsBlips["culte"]) do
        local blip = AddBlipForCoord(station.coords.x, station.coords.y, station.coords.z)
        SetBlipSprite(blip, 305)
        SetBlipAsShortRange(blip, true)
        SetBlipScale(blip, 0.5)
        SetBlipColour(blip, 10)
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentString(station.label)
        EndTextCommandSetBlipName(blip)
    end

	-- for k, station in pairs(Config.LocationsBlips["missionlenny"]) do
        -- local blip = AddBlipForCoord(station.coords.x, station.coords.y, station.coords.z)
        -- SetBlipSprite(blip, 77)
        -- SetBlipAsShortRange(blip, true)
        -- SetBlipScale(blip, 0.5)
		-- SetBlipColour(blip, 14)
        -- BeginTextCommandSetBlipName("STRING")
        -- AddTextComponentString(station.label)
        -- EndTextCommandSetBlipName(blip)
    -- end
	
	for k, station in pairs(Config.LocationsBlips["policehelicoptere"]) do
        local blip = AddBlipForCoord(station.coords.x, station.coords.y, station.coords.z)
        SetBlipSprite(blip, 64)
        SetBlipAsShortRange(blip, true)
        SetBlipScale(blip, 0.5)
		SetBlipColour(blip, 29)
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentString(station.label)
        EndTextCommandSetBlipName(blip)
    end
	
	for k, station in pairs(Config.LocationsBlips["assurance"]) do
        local blip = AddBlipForCoord(station.coords.x, station.coords.y, station.coords.z)
        SetBlipSprite(blip, 489)
        SetBlipAsShortRange(blip, true)
        SetBlipScale(blip, 0.6)
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentString(station.label)
        EndTextCommandSetBlipName(blip)
    end
	
	for k, station in pairs(Config.LocationsBlips["paynspray"]) do
        local blip = AddBlipForCoord(station.coords.x, station.coords.y, station.coords.z)
        SetBlipSprite(blip, 72)
        SetBlipAsShortRange(blip, true)
        SetBlipScale(blip, 0.5)
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentString(station.label)
        EndTextCommandSetBlipName(blip)
    end
	
	for k, station in pairs(Config.LocationsBlips["banque"]) do
        local blip = AddBlipForCoord(station.coords.x, station.coords.y, station.coords.z)
        SetBlipSprite(blip, 108)
        SetBlipAsShortRange(blip, true)
        SetBlipScale(blip, 0.5)
		SetBlipColour(blip, 2)
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentString(station.label)
        EndTextCommandSetBlipName(blip)
    end
	
	for k, station in pairs(Config.LocationsBlips["velo"]) do
        local blip = AddBlipForCoord(station.coords.x, station.coords.y, station.coords.z)
        SetBlipSprite(blip, 280)
        SetBlipAsShortRange(blip, true)
        SetBlipScale(blip, 0.5)
		SetBlipColour(blip, 14)
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentString(station.label)
        EndTextCommandSetBlipName(blip)
    end
	
	for k, station in pairs(Config.LocationsBlips["newsjob"]) do
        local blip = AddBlipForCoord(station.coords.x, station.coords.y, station.coords.z)
        SetBlipSprite(blip, 525)
        SetBlipAsShortRange(blip, true)
        SetBlipScale(blip, 0.5)
		SetBlipColour(blip, 0)
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentString(station.label)
        EndTextCommandSetBlipName(blip)
    end
	
	-- for k, station in pairs(Config.LocationsBlips["missionsonny"]) do
        -- local blip = AddBlipForCoord(station.coords.x, station.coords.y, station.coords.z)
        -- SetBlipSprite(blip, 293)
        -- SetBlipAsShortRange(blip, true)
        -- SetBlipScale(blip, 0.5)
		-- SetBlipColour(blip, 14)
        -- BeginTextCommandSetBlipName("STRING")
        -- AddTextComponentString(station.label)
        -- EndTextCommandSetBlipName(blip)
    -- end
	
	for k, station in pairs(Config.LocationsBlips["chirur"]) do
        local blip = AddBlipForCoord(station.coords.x, station.coords.y, station.coords.z)
        SetBlipSprite(blip, 102)
        SetBlipAsShortRange(blip, true)
        SetBlipScale(blip, 0.5)
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentString(station.label)
        EndTextCommandSetBlipName(blip)
    end
	
	for k, station in pairs(Config.LocationsBlips["cybercafe"]) do
        local blip = AddBlipForCoord(station.coords.x, station.coords.y, station.coords.z)
        SetBlipSprite(blip, 459)
        SetBlipAsShortRange(blip, true)
        SetBlipScale(blip, 0.5)
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentString(station.label)
        EndTextCommandSetBlipName(blip)
    end
	
	for k, station in pairs(Config.LocationsBlips["truckerjob"]) do
        local blip = AddBlipForCoord(station.coords.x, station.coords.y, station.coords.z)
        SetBlipSprite(blip, 477)
        SetBlipAsShortRange(blip, true)
        SetBlipScale(blip, 0.5)
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentString(station.label)
        EndTextCommandSetBlipName(blip)
    end
	
	for k, station in pairs(Config.LocationsBlips["activiteillegale"]) do
        local blip = AddBlipForCoord(station.coords.x, station.coords.y, station.coords.z)
        SetBlipSprite(blip, 66)
        SetBlipAsShortRange(blip, true)
        SetBlipScale(blip, 0.5)
		SetBlipColour(blip, 1)
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentString(station.label)
        EndTextCommandSetBlipName(blip)
    end
	
	-- for k, station in pairs(Config.LocationsBlips["achatressource"]) do
        -- local blip = AddBlipForCoord(station.coords.x, station.coords.y, station.coords.z)
        -- SetBlipSprite(blip, 515)
        -- SetBlipAsShortRange(blip, true)
        -- SetBlipScale(blip, 0.5)
		-- SetBlipColour(blip, 39)
		
        -- BeginTextCommandSetBlipName("STRING")
        -- AddTextComponentString(station.label)
        -- EndTextCommandSetBlipName(blip)
    -- end
	
	-- for k, station in pairs(Config.LocationsBlips["traitement"]) do
        -- local blip = AddBlipForCoord(station.coords.x, station.coords.y, station.coords.z)
        -- SetBlipSprite(blip, 436)
        -- SetBlipAsShortRange(blip, true)
        -- SetBlipScale(blip, 0.5)
		-- SetBlipColour(blip, 39)
		
        -- BeginTextCommandSetBlipName("STRING")
        -- AddTextComponentString(station.label)
        -- EndTextCommandSetBlipName(blip)
    -- end
	
	-- for k, station in pairs(Config.LocationsBlips["recuplegal"]) do
        -- local blip = AddBlipForCoord(station.coords.x, station.coords.y, station.coords.z)
        -- SetBlipSprite(blip, 653)
        -- SetBlipAsShortRange(blip, true)
        -- SetBlipScale(blip, 0.5)
		-- SetBlipColour(blip, 39)
		
        -- BeginTextCommandSetBlipName("STRING")
        -- AddTextComponentString(station.label)
        -- EndTextCommandSetBlipName(blip)
    -- end
	
	for k, station in pairs(Config.LocationsBlips["avocat"]) do
        local blip = AddBlipForCoord(station.coords.x, station.coords.y, station.coords.z)
        SetBlipSprite(blip, 60)
        SetBlipAsShortRange(blip, true)
        SetBlipScale(blip, 0.5)
		
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentString(station.label)
        EndTextCommandSetBlipName(blip)
    end
	
	for k, station in pairs(Config.LocationsBlips["dechet"]) do
        local blip = AddBlipForCoord(station.coords.x, station.coords.y, station.coords.z)
        SetBlipSprite(blip, 318)
        SetBlipAsShortRange(blip, true)
        SetBlipScale(blip, 0.5)
		SetBlipColour(blip, 46)
		
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentString(station.label)
        EndTextCommandSetBlipName(blip)
    end

	for k, station in pairs(Config.LocationsBlips["atm"]) do
        local blip = AddBlipForCoord(station.coords.x, station.coords.y, station.coords.z)
        SetBlipSprite(blip, 466)
        SetBlipAsShortRange(blip, true)
        SetBlipScale(blip, 0.4)
		SetBlipColour(blip, 2)
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentString(station.label)
        EndTextCommandSetBlipName(blip)
    end
	
	for k, station in pairs(Config.LocationsBlips["tribunal"]) do
        local blip = AddBlipForCoord(station.coords.x, station.coords.y, station.coords.z)
        SetBlipSprite(blip, 58)
        SetBlipAsShortRange(blip, true)
        SetBlipScale(blip, 0.5)
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentString(station.label)
        EndTextCommandSetBlipName(blip)
    end
	
	for k, station in pairs(Config.LocationsBlips["dyn8"]) do
        local blip = AddBlipForCoord(station.coords.x, station.coords.y, station.coords.z)
        SetBlipSprite(blip, 375)
        SetBlipAsShortRange(blip, true)
        SetBlipScale(blip, 0.5)
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentString(station.label)
        EndTextCommandSetBlipName(blip)
    end
	
end)

