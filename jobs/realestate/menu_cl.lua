local QBCore = exports['ilfr-mainserver']:GetCoreObject()

-- GUI Functions

function MenuOwnedHouses()
    exports['ilfr-menumap']:openMenu({
        {
            header = "🏡 Maisons déjà créées",
            isMenuHeader = true
        },
        {
            header = "Liste des maisons",
            txt = "Ici, vous pouvez voir toutes les maisons qui sont déjà définies",
            params = {
                event = "qb-realestate:client:HouseList"
            }
        },
        {
            header = "Supprimer le marqueur récent",
            txt = "",
            params = {
                event = "qb-realestate:client:RemoveBlip"
            }
        },
        {
            header = '❌ Retour en arrière',
            txt = "",
            params = {
                event = "ilfr-menumap:closeMenu"
            }
        },
    })
end

-- Events

RegisterNetEvent('qb-realestate:client:OpenHouseListMenu', function()
    MenuOwnedHouses()
end)

RegisterNetEvent('qb-realestate:client:RemoveBlip', function()
    RemoveBlip(houseblip)
    ClearGpsPlayerWaypoint()
end)

RegisterNetEvent("qb-realestate:client:HouseList", function()
    QBCore.Functions.TriggerCallback("qb-realestate:server:GetHouses", function(result)
        if result == nil then
            exports['ilfr-core']:SendAdvanced({
						message = 'Il n\'y a pas de maisons déjà créées sur l\'île.',
						title = 'Notification',
						subject = 'Dynasty8 Immobilier',
						icon = 'CHAR_DYNA',
							})
        else
            local MenuHouseList = {
                {
                    header = "🏠 Liste des maisons",
                    isMenuHeader = true
                },
            }
            for k, v in pairs(result) do
                label = v.label
                tier = v.tier
                owned = tostring(v.owned)
                price = v.price
                if not tier then
                    tier = "Pas d'intérieur"
                end
                if not price then
                    price = "Pas de prix"
                end
                table.insert(MenuHouseList, {
                    header = label,
                    txt = "Nom de la maison : "..label.." <br>Acheteur : "..owned.." | Intérieur : "..tier.." <br>Prix de vente : "..price.." $",
                    params = {
                        event = "qb-realestate:client:HouseOptions",
                        args = v
                    }
                })
            end
            table.insert(MenuHouseList, {
                header = '❌ Retour en arrière',
                txt = "",
                params = {
                    event = 'qb-realestate:client:OpenHouseListMenu',
                }
            })
            table.insert(MenuHouseList, {
                header = '❌ Fermer la gestion de l\'immobilier',
                txt = "",
                params = {
                    event = "ilfr-menumap:closeMenu",
                }
            })
            exports['ilfr-menumap']:openMenu(MenuHouseList)
            
        end
    end)
end)

RegisterNetEvent("qb-realestate:client:HouseOptions", function(data)
    local MenuHouseOptions = {
        {
            header = "Maison : "..data.label,
            isMenuHeader = true
        },
    }
    table.insert(MenuHouseOptions, {
        header = "🔎 Localisation",
        txt = "Voir la maison sur la carte",
        params = {
            event = "qb-realestate:client:toHouse",
            args = data
        }
    })
    table.insert(MenuHouseOptions, {
        header = "🔧 Changer l'intérieur",
        txt = "Disponible de 1 à 6",
        params = {
            event = "qb-realestate:client:changetier",
            args = data
        }
    })
    table.insert(MenuHouseOptions, {
        header = "💵 Changer le prix de vente",
        txt = "Changer le prix de vente de la maison sélectionnée",
        params = {
            event = "qb-realestate:client:changeprice",
            args = data
        }
    })
    table.insert(MenuHouseOptions, {
        header = '❌ Retour en arrière',
        txt = "",
        params = {
            event = 'qb-realestate:client:HouseList',
        }
    })
    table.insert(MenuHouseOptions, {
        header = '❌ Fermer la gestion de l\'immobilier',
        txt = "",
        params = {
            event = "ilfr-menumap:closeMenu",
        }
    })
    exports['ilfr-menumap']:openMenu(MenuHouseOptions)
end)

RegisterNetEvent('qb-realestate:client:changetier', function(data)
    local dialog = exports['ilfr-input']:ShowInput({
        header = '🔧 Changement de l\'intérieur',
        submitText = "Changer l'intérieur de la maison sélectionnée",
        inputs = {
            {
                type = 'number',
                isRequired = true,
                name = 'tier',
                text = 'Max. ' ..Config.MaxTierReal
            }
        }
    })
    if dialog then
        local tier = tonumber(dialog.tier)
        if tier <= Config.MaxTierReal and tier >= 1 then
            if not dialog.tier then return end
            TriggerServerEvent('qb-realestate:server:changetier', dialog.tier, data.name, data.owned)
            TriggerEvent('qb-realestate:client:HouseOptions', data)
            
        else
            if not dialog.tier then return end
            TriggerEvent('qb-realestate:client:changetier', data)
            QBCore.Functions.Notify('Please enter number smaller then ' ..Config.MaxTierReal, 'error')
        end
    end
end)

RegisterNetEvent('qb-realestate:client:changeprice', function(data)
    local dialog = exports['ilfr-input']:ShowInput({
        header = '💵 Changement du prix',
        submitText = "Change le prix de la maison sélectionnée",
        inputs = {
            {
                type = 'number',
                isRequired = true,
                name = 'price',
                text = 'Prix'
            }
        }
    })
    if dialog then
        if not dialog.price then return end
        TriggerServerEvent('qb-realestate:server:changeprice', dialog.price, data.name, data.owned)
        TriggerEvent('qb-realestate:client:HouseOptions', data)
    end
end)

RegisterNetEvent('qb-realestate:client:toHouse', function(coords)
    position = json.decode(coords.coords)
    x = position.enter.x
    y = position.enter.y
    z= position.enter.z
    SetNewWaypoint(x, y)
    local coords1 = vector3(x,y,z)
    houseblip = AddBlipForCoord(coords1)
    SetBlipSprite (houseblip, 40)
    SetBlipDisplay(houseblip, 4)
    SetBlipScale  (houseblip, 0.8)
    SetBlipAsShortRange(houseblip, true)
    SetBlipColour(houseblip, 3)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentSubstringPlayerName("Maison sélectionnée")
    EndTextCommandSetBlipName(houseblip)
    
end)

