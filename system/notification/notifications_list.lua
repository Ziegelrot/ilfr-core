--#ILFRCORE, BY ZIEGELROT--
--NOTIFICATION------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent('ilfr-core:client:mechanicpeinture')
AddEventHandler('ilfr-core:client:mechanicpeinture', function(mechanicpeinture)
	exports['ilfr-core']:SendAdvanced({
						message = 'La peinture du véhicule a été livrée.',
						title = 'Junkost Auto',
						subject = 'Notification',
						icon = 'CHAR_OK',
							})
end)

RegisterNetEvent('ilfr-core:notification:deleteplayers')
AddEventHandler('ilfr-core:notification:deleteplayers', function(deleteplayers)
	exports['ilfr-core']:SendAdvanced({
						message = "Vous n'avez pas souscris à une assurance santé, votre personnage est définitivement mort, vous allez être déconnecté(e) dans quelques secondes.",
						title = 'Assurance santé',
						subject = 'Notification',
						icon = 'CHAR_ASSURANCE',
							})
end)


RegisterNetEvent('ilfr-core:notification:takehospital')
AddEventHandler('ilfr-core:notification:takehospital', function(takehospital)
	exports['ilfr-core']:SendAdvanced({
						message = "Vos effets personnels ont été confisqués.",
						title = 'Hôpital de Liberty',
						subject = 'Notification',
						icon = 'CHAR_HEALTH',
							})
end)

RegisterNetEvent('ilfr-core:notification:deleteplayers2')
AddEventHandler('ilfr-core:notification:deleteplayers2', function(deleteplayers2)
	exports['ilfr-core']:SendAdvanced({
						message = "Vous avez souscris à une assurance santé, votre personnage est encore en vie, l'assurance vous à facturé(e) les frais frais d'hospitalisation d'un montant de 10000 $ sur votre compte bancaire.",
						title = 'Assurance santé',
						subject = 'Notification',
						icon = 'CHAR_ASSURANCE',
							})
end)

RegisterNetEvent('ilfr-core:notification:deleteplayers3')
AddEventHandler('ilfr-core:notification:deleteplayers3', function(deleteplayers3)
	exports['ilfr-core']:SendAdvanced({
						message = "Vous avez souscris à une assurance santé tous risques, votre personnage est encore en vie, l'assurance à payée les frais frais d'hospitalisation d'un montant de 10000 $.",
						title = 'Assurance santé',
						subject = 'Notification',
						icon = 'CHAR_ASSURANCE',
							})
end)

RegisterNetEvent('ilfr-core:notification:ajouttier')
AddEventHandler('ilfr-core:notification:ajouttier', function(ajouttier)
	exports['ilfr-core']:SendAdvanced({
						message = "Vous avez souscris à une assurance santé au tiers, votre personnage est protégé contre la mort définitive, l'assurance ne paie pas les frais d'hospitalisation lors de votre mort. Votre assurance prélève des frais (20$) toutes les heures.",
						title = 'Assurance santé',
						subject = 'Notification',
						icon = 'CHAR_ASSURANCE',
							})
end)

RegisterNetEvent('ilfr-core:notification:ajouttier2')
AddEventHandler('ilfr-core:notification:ajouttier2', function(ajouttier2)
	exports['ilfr-core']:SendAdvanced({
						message = "Vous avez souscris à une assurance santé tous risques, votre personnage est protégé contre la mort définitive, l'assurance paiera les frais d'hospitalisation lors de votre mort. Votre assurance prélève des frais (50$) toutes les heures.",
						title = 'Assurance santé',
						subject = 'Notification',
						icon = 'CHAR_ASSURANCE',
							})
end)

RegisterNetEvent('ilfr-core:notification:ajouttier3')
AddEventHandler('ilfr-core:notification:ajouttier3', function(ajouttier3)
	exports['ilfr-core']:SendAdvanced({
						message = "Vous avez annulé(e) votre contrat d'assurance santé, vous n'êtes plus protégé(e) en cas de mort.",
						title = 'Assurance santé',
						subject = 'Notification',
						icon = 'CHAR_ASSURANCE',
							})
end)

RegisterNetEvent('ilfr-core:notification:paieassurance')
AddEventHandler('ilfr-core:notification:paieassurance', function(paieassurance)
	exports['ilfr-core']:SendAdvanced({
						message = "Vous avez payé(e) les frais de 20$ de votre assurance santé.",
						title = 'Assurance santé',
						subject = 'Notification',
						icon = 'CHAR_ASSURANCE',
							})
end)

RegisterNetEvent('ilfr-core:notification:paieassurance2')
AddEventHandler('ilfr-core:notification:paieassurance2', function(paieassurance2)
	exports['ilfr-core']:SendAdvanced({
						message = "Vous avez payé(e) les frais de 50$ de votre assurance santé.",
						title = 'Assurance santé',
						subject = 'Notification',
						icon = 'CHAR_ASSURANCE',
							})
end)

RegisterNetEvent('ilfr-core:notification:ilfrplatesystem')
AddEventHandler('ilfr-core:notification:ilfrplatesystem', function(ilfrplatesystem)
	exports['ilfr-core']:SendAdvanced({
						message = "Vous devez être conducteur de votre véhicule pour changer la plaque d'immatriculation.",
						title = 'Notification',
						subject = 'Action impossible',
						icon = 'CHAR_PAYNSPRAY',
							})
end)

RegisterNetEvent('ilfr-core:notification:ilfrplatesystem2')
AddEventHandler('ilfr-core:notification:ilfrplatesystem2', function(ilfrplatesystem2)
	exports['ilfr-core']:SendAdvanced({
						message = "Vous avez dépassé(e) la limite de lettre ou chiffre (Maximum 8).",
						title = 'Notification',
						subject = 'Action impossible',
						icon = 'CHAR_PAYNSPRAY',
							})
end)

RegisterNetEvent('ilfr-core:notification:ilfrplatesystem3')
AddEventHandler('ilfr-core:notification:ilfrplatesystem3', function(ilfrplatesystem3)
	exports['ilfr-core']:SendAdvanced({
						message = "Il est impossible de mettre une plaque d'immatriculation avec une insulte.",
						title = 'Notification',
						subject = 'Action impossible',
						icon = 'CHAR_PAYNSPRAY',
							})
end)

RegisterNetEvent('ilfr-core:notification:ilfrplatesystem4')
AddEventHandler('ilfr-core:notification:ilfrplatesystem4', function(ilfrplatesystem4)
	exports['ilfr-core']:SendAdvanced({
						message = "Votre plaque d'immatriculation à bien été changée.",
						title = 'Notification',
						subject = "Plaque d'immatriculation",
						icon = 'CHAR_PAYNSPRAY',
							})
end)

RegisterNetEvent('ilfr-core:notification:ilfrplatesystem5')
AddEventHandler('ilfr-core:notification:ilfrplatesystem5', function(ilfrplatesystem5)
	exports['ilfr-core']:SendAdvanced({
						message = "Ce véhicule ne vous appartient pas, vous ne pouvez pas changer la plaque d'immatriculation.",
						title = 'Notification',
						subject = "Action impossible",
						icon = 'CHAR_PAYNSPRAY',
							})
end)

RegisterNetEvent('ilfr-core:notification:ilfrplatesystem6')
AddEventHandler('ilfr-core:notification:ilfrplatesystem6', function(ilfrplatesystem6)
	exports['ilfr-core']:SendAdvanced({
						message = "Vous devez être dans le véhicule pour changer la plaque d'immatriculation.",
						title = 'Notification',
						subject = "Action impossible",
						icon = 'CHAR_PAYNSPRAY',
							})
end)

RegisterNetEvent('ilfr-core:client:travailoff')
AddEventHandler('ilfr-core:client:travailoff', function(travailoff)
	exports['ilfr-core']:SendAdvanced({
						message = 'Vous avez pris(e) votre repos hebdomadaire.',
						title = 'Emploi',
						subject = 'Pointage',
						icon = 'JOB_INFO',
							})
end)

RegisterNetEvent('ilfr-core:client:travailon')
AddEventHandler('ilfr-core:client:travailon', function(travailon)
	exports['ilfr-core']:SendAdvanced({
						message = 'Vous êtes désormais en poste.',
						title = 'Emploi',
						subject = 'Pointage',
						icon = 'JOB_INFO',
							})
end)

RegisterNetEvent('ilfr-core:client:assurancepl')
AddEventHandler('ilfr-core:client:assurancepl', function(assurancepl)
	exports['ilfr-core']:SendAdvanced({
						message = 'Vous avez payé(e) l\'assurance du véhicule de ~g~50$~w~, elle vous sera rendu une fois le véhicule redéposé à l\'entreprise.',
						title = 'Notification',
						subject = 'Chauffeurs-Livreurs',
						icon = 'CHAR_PL',
							})
end)

RegisterNetEvent('ilfr-core:notification:permisb')
AddEventHandler('ilfr-core:notification:permisb', function(permisb)
exports['ilfr-core']:SendAdvanced({
						message = "Vous devez passer votre permis dans une auto-école pour réclamer votre Permis B définitif.",
						title = 'Notification',
						subject = 'Information',
						icon = 'CHAR_NOPE',
							}) 
end)

RegisterNetEvent('ilfr-core:notification:permisc')
AddEventHandler('ilfr-core:notification:permisc', function(permisc)
exports['ilfr-core']:SendAdvanced({
						message = "Vous devez passer votre permis dans une auto-école pour réclamer votre Permis C définitif.",
						title = 'Notification',
						subject = 'Information',
						icon = 'CHAR_NOPE',
							}) 
end)

RegisterNetEvent('ilfr-core:notification:cardid')
AddEventHandler('ilfr-core:notification:cardid', function(cardid)
exports['ilfr-core']:SendAdvanced({
						message = "Vous avez montré(e) vos papiers.",
						title = 'Notification',
						subject = 'Information',
						icon = 'CHAR_MISSION',
							}) 
end)

RegisterNetEvent('ilfr-core:notification:velonewpl')
AddEventHandler('ilfr-core:notification:velonewpl', function(velonewpl)
exports['ilfr-core']:SendAdvanced({
						message = "Ce vélo vous appartient, vous pouvez désormais le ranger dans un garage public.",
						title = 'Notification',
						subject = 'Information',
						icon = 'CHAR_MISSION',
							}) 
end)

RegisterNetEvent('ilfr-core:notification:maisoncoffre')
AddEventHandler('ilfr-core:notification:maisoncoffre', function(maisoncoffre)
exports['ilfr-core']:SendAdvanced({
						message = "Votre coffre est désormais placé ici, vous pouvez stocker du matériel dedans.",
						title = 'Notification',
						subject = 'Information',
						icon = 'CHAR_LENNY',
							}) 
end)

RegisterNetEvent('ilfr-core:notification:cardid2')
AddEventHandler('ilfr-core:notification:cardid2', function(cardid2)
exports['ilfr-core']:SendAdvanced({
						message = "Vous avez montré(e) votre badge.",
						title = 'Notification',
						subject = 'Information',
						icon = 'CHAR_MISSION',
							}) 
end)

RegisterNetEvent('ilfr-core:notification:taxijob')
AddEventHandler('ilfr-core:notification:taxijob', function(taxijob)
exports['ilfr-core']:SendAdvanced({
						message = "Vous êtes désormais chauffeur de taxi.",
						title = 'Notification',
						subject = "Offres d'emploi",
						icon = 'JOB_INFO',
							})
end)

RegisterNetEvent('ilfr-core:notification:garbagejob')
AddEventHandler('ilfr-core:notification:garbagejob', function(taxijob)
exports['ilfr-core']:SendAdvanced({
						message = "Vous êtes désormais éboueur.",
						title = 'Notification',
						subject = "Offres d'emploi",
						icon = 'JOB_INFO',
							})
end)

RegisterNetEvent('ilfr-core:notification:truckerjob')
AddEventHandler('ilfr-core:notification:truckerjob', function(taxijob)
exports['ilfr-core']:SendAdvanced({
						message = "Vous êtes désormais chauffeur/livreur.",
						title = 'Notification',
						subject = "Offres d'emploi",
						icon = 'JOB_INFO',
							})
end)

RegisterNetEvent('ilfr-core:notification:towjob')
AddEventHandler('ilfr-core:notification:towjob', function(taxijob)
exports['ilfr-core']:SendAdvanced({
						message = "Vous êtes désormais dépanneur.",
						title = 'Notification',
						subject = "Offres d'emploi",
						icon = 'JOB_INFO',
							})
end)

RegisterNetEvent('ilfr-core:client:depan01')
AddEventHandler('ilfr-core:client:depan01', function(depan01)
	exports['ilfr-core']:SendAdvanced({
						message = 'Vous avez payé(e) l\'assurance du véhicule de ~g~50$~w~, elle vous sera rendu une fois le véhicule redéposé à l\'entreprise.',
						title = 'Notification',
						subject = 'Dépanneur',
						icon = 'CHAR_DEPAN',
							})
end)

RegisterNetEvent('ilfr-core:client:assurancedl')
AddEventHandler('ilfr-core:client:assurancedl', function(assurancedl)
	exports['ilfr-core']:SendAdvanced({
						message = 'Vous avez reçu votre ~g~paie~w~, vérifier votre compte !.',
						title = 'Notification',
						subject = 'Dépanneur',
						icon = 'CHAR_DEPAN',
							})
end)

RegisterNetEvent('ilfr-core:client:recupaie')
AddEventHandler('ilfr-core:client:recupaie', function(recupaie)
	exports['ilfr-core']:SendAdvanced({
						message = 'Vous avez reçu les aides de l\'état sur votre compte.',
						title = 'Notification',
						subject = 'Aides de l\'état',
						icon = 'CHAR_ETAT',
							})
end)

RegisterNetEvent('ilfr-core:client:prixajour')
AddEventHandler('ilfr-core:client:prixajour', function(prixajour)
	exports['ilfr-core']:SendAdvanced({
						message = 'Le prix de la maison à bien été modifié.',
						title = 'Notification',
						subject = 'Dynasty8 Immobilier',
						icon = 'CHAR_DYNA',
							})
end)

RegisterNetEvent('ilfr-core:client:prixajour2')
AddEventHandler('ilfr-core:client:prixajour2', function(prixajour)
	exports['ilfr-core']:SendAdvanced({
						message = 'L\'intérieur de la maison à bien été modifié.',
						title = 'Notification',
						subject = 'Dynasty8 Immobilier',
						icon = 'CHAR_DYNA',
							})
end)


RegisterNetEvent('ilfr-core:client:assurancepl2')
AddEventHandler('ilfr-core:client:assurancepl2', function(assurancepl2)
	exports['ilfr-core']:SendAdvanced({
						message = 'Vous n\'avez pas assez ~r~d\'argent~w~ pour payer l\'assurance du véhicule.',
						title = 'Notification',
						subject = 'Chauffeurs-Livreurs',
						icon = 'CHAR_PL',
							})
end)

RegisterNetEvent('ilfr-core:client:cautionrendu')
AddEventHandler('ilfr-core:client:cautionrendu', function(cautionrendu)
	exports['ilfr-core']:SendAdvanced({
						message = 'La caution du véhicule vous a été rendu.',
						title = 'Notification',
						subject = 'Dépanneur',
						icon = 'CHAR_DEPAN',
							})
end)

RegisterNetEvent('ilfr-core:notification:argentnope')
AddEventHandler('ilfr-core:notification:argentnope', function(cautionrendu)
	exports['ilfr-core']:SendAdvanced({
						message = "Vous n'avez pas assez d'argent sur vous, le code de la route coûte ~r~200$~w~.",
						title = 'Notification',
						subject = 'Auto-école',
						icon = 'CHAR_AUTO_ECOLE',
							})
end)

RegisterNetEvent('ilfr-core:notification:permisbcode')
AddEventHandler('ilfr-core:notification:permisbcode', function(cautionrendu)
	exports['ilfr-core']:SendAdvanced({
						message = "Vous avez déjà obtenu votre code de la route, vous pouvez désormais passer à l'épreuve ~g~pratique~w~ du permis.",
						title = 'Notification',
						subject = 'Auto-école',
						icon = 'CHAR_AUTO_ECOLE',
							})
end)

RegisterNetEvent('ilfr-core:notification:permisbcodedejaeu')
AddEventHandler('ilfr-core:notification:permisbcodedejaeu', function(permisbcodedejaeu)
	exports['ilfr-core']:SendAdvanced({
						message = "Vous avez ~g~déjà obtenu~w~ votre Permis B, vous pouvez récupérer votre permis à la mairie.",
						title = 'Notification',
						subject = 'Auto-école',
						icon = 'CHAR_AUTO_ECOLE',
							})
end)

RegisterNetEvent('ilfr-core:notification:permisbcodedejaeuok')
AddEventHandler('ilfr-core:notification:permisbcodedejaeuok', function(permisbcodedejaeuok)
	exports['ilfr-core']:SendAdvanced({
						message = "Vous avez réussi votre examen, vous pouvez désormais vous rendre à la mairie pour obtenir votre permis.",
						title = 'Notification',
						subject = 'Auto-école',
						icon = 'CHAR_AUTO_ECOLE',
							})
end)

RegisterNetEvent('ilfr-core:notification:pasdecode')
AddEventHandler('ilfr-core:notification:pasdecode', function(pasdecode)
	exports['ilfr-core']:SendAdvanced({
						message = "Vous devez au préalable réussir le code de la route pour commencer votre épreuve ou vous n'avez pas assez d'argent (1000$).",
						title = 'Notification',
						subject = 'Auto-école',
						icon = 'CHAR_AUTO_ECOLE',
							})
end)

RegisterNetEvent('ilfr-core:notification:pasthune')
AddEventHandler('ilfr-core:notification:pasthune', function(pasthune)
	exports['ilfr-core']:SendAdvanced({
						message = "Vous avez ~r~échoué(e)~w~ votre examen théorique du code de la route.",
						title = 'Notification',
						subject = 'Auto-école',
						icon = 'CHAR_AUTO_ECOLE',
							})
end)

RegisterNetEvent('ilfr-core:client:cautiontropchere')
AddEventHandler('ilfr-core:client:cautiontropchere', function(cautiontropchere)
	exports['ilfr-core']:SendAdvanced({
						message = 'Vous n\'avez pas assez ~r~d\'argent~w~ pour payer l\'assurance du véhicule.',
						title = 'Notification',
						subject = 'Chauffeurs-Livreurs',
						icon = 'CHAR_PL',
							})
end)

RegisterNetEvent('ilfr-core:client:assurancepl3')
AddEventHandler('ilfr-core:client:assurancepl3', function(assurancepl3)
	exports['ilfr-core']:SendAdvanced({
						message = 'Vous avez reçu votre ~g~paie~w~, vérifier votre compte !',
						title = 'Notification',
						subject = 'Chauffeurs-Livreurs',
						icon = 'CHAR_PL',
							})
end)

RegisterNetEvent('ilfr-core:client:escortenon')
AddEventHandler('ilfr-core:client:escortenon', function(escortenon)
	exports['ilfr-core']:SendAdvanced({
						message = 'Vous ne pouvez pas escorter cette personne car elle n\'est pas menottée.',
						title = 'Notification',
						subject = 'Action impossible',
						icon = 'CHAR_NON',
							})
end)

RegisterNetEvent('ilfr-core:newpl:velocldeja')
AddEventHandler('ilfr-core:newpl:velocldeja', function(velocldeja)
	exports['ilfr-core']:SendAdvanced({
						message = 'Vous avez déjà obtenu votre vélo.',
						title = 'Notification',
						subject = 'Action impossible',
						icon = 'CHAR_NON',
							})
end)

RegisterNetEvent('ilfr-core:client:menottenon')
AddEventHandler('ilfr-core:client:menottenon', function(menottenon)
exports['ilfr-core']:SendAdvanced({
						message = 'Vous n\'avez pas de menottes ou de colliers de serrage en plastique.',
						title = 'Notification',
						subject = 'Action impossible',
						icon = 'CHAR_NON',
							})
end)

RegisterNetEvent('ilfr-core:client:pasargent')
AddEventHandler('ilfr-core:client:pasargent', function(pasargent)
exports['ilfr-core']:SendAdvanced({
						message = "Vous n'avez pas assez d'argent pour acheter ce véhicule.",
						title = 'Notification',
						subject = 'Action impossible',
						icon = 'CHAR_NON',
							})
end)

RegisterNetEvent('ilfr-core:client:pasargentpaynspray')
AddEventHandler('ilfr-core:client:pasargentpaynspray', function(pasargentpaynspray)
exports['ilfr-core']:SendAdvanced({
						message = "Vous n'avez pas assez de liquide pour acheter une plaque personnalisée.",
						title = 'Notification',
						subject = 'Action impossible',
						icon = 'CHAR_NON',
							})
end)

RegisterNetEvent('ilfr-core:client:pasargentpaynspray2')
AddEventHandler('ilfr-core:client:pasargentpaynspray2', function(pasargentpaynspray2)
exports['ilfr-core']:SendAdvanced({
						message = "La modification des couleurs de véhicule n'est actuellement pas disponible.",
						title = 'Notification',
						subject = 'Action impossible',
						icon = 'CHAR_NON',
							})
end)

RegisterNetEvent('ilfr-core:notification:pasdargent')
AddEventHandler('ilfr-core:notification:pasdargent', function(pasdargent)
exports['ilfr-core']:SendAdvanced({
						message = "Vous n'avez pas assez d'argent pour faire de la chirurgie plastique. \nLe prix est de : ~r~17500 $",
						title = 'Notification',
						subject = 'Action impossible',
						icon = 'CHAR_NON',
							})
end)

RegisterNetEvent('ilfr-core:client:paslesperms')
AddEventHandler('ilfr-core:client:paslesperms', function(menottenon)
exports['ilfr-core']:SendAdvanced({
						message = 'Vous n\'avez pas les permissions requise pour faire cela.',
						title = 'Notification',
						subject = 'Action impossible',
						icon = 'CHAR_NON',
							})
end)

RegisterNetEvent('ilfr-core:client:test')
AddEventHandler('ilfr-core:client:test', function(test)
exports['ilfr-core']:SendAdvanced({
						message = 'Vous n\'avez pas de menottes ou de colliers de serrage en plastique.',
						title = 'Notification',
						subject = 'Action impossible',
						icon = 'CHAR_NON',
							})
end)

RegisterNetEvent('ilfr-core:client:vehicleout')
AddEventHandler('ilfr-core:client:vehicleout', function(vehicleout)
exports['ilfr-core']:SendAdvanced({
						message = 'Impossible de sortir la personne du véhicule, avez vous verifié(e) si la personne est bien dans le véhicule ?',
						title = 'Notification',
						subject = 'Action impossible',
						icon = 'CHAR_NON',
							})
end)

RegisterNetEvent('ilfr-core:client:kidnap')
AddEventHandler('ilfr-core:client:kidnap', function(kidnap)
exports['ilfr-core']:SendAdvanced({
						message = 'Impossible de kidnapper la personne, elle est peut être menottée ou encore vivante.',
						title = 'Notification',
						subject = 'Action impossible',
						icon = 'CHAR_NON',
							})
end)

RegisterNetEvent('ilfr-core:client:facture')
AddEventHandler('ilfr-core:client:facture', function(facture)
exports['ilfr-core']:SendAdvanced({
						message = 'Vous avez reçu une facture/amende, consulter votre boite mails.',
						title = 'Notification',
						subject = 'Facture/Amende',
						icon = 'CHAR_MOBILE',
							})
end)

RegisterNetEvent('ilfr-core:client:facturerecepteur')
AddEventHandler('ilfr-core:client:facturerecepteur', function(facturerecepteur)
exports['ilfr-core']:SendAdvanced({
						message = 'La facture envoyée a bien été payée.',
						title = 'Notification',
						subject = 'Facture/Amende',
						icon = 'CHAR_MOBILE',
							})
end)

RegisterNetEvent('ilfr-core:client:facturerecepteur2')
AddEventHandler('ilfr-core:client:facturerecepteur2', function(facturerecepteur2)
exports['ilfr-core']:SendAdvanced({
						message = 'La personne ne dispose ~r~pas~w~ des fonds ~r~nécessaires~w~.',
						title = 'Notification',
						subject = 'Facture/Amende',
						icon = 'CHAR_NON',
							})
end)

RegisterNetEvent('ilfr-core:client:payepizza')
AddEventHandler('ilfr-core:client:payepizza', function(payepizza)
exports['ilfr-core']:SendAdvanced({
						message = 'Vous avez reçu ~g~10$~w~ de pourboire pour votre livraison.',
						title = 'Notification',
						subject = 'Livreur',
						icon = 'CHAR_LIVREUR_PIZZA',
							})
end)

RegisterNetEvent('ilfr-core:client:payepizza2')
AddEventHandler('ilfr-core:client:payepizza2', function(payepizza2)
exports['ilfr-core']:SendAdvanced({
						message = "Vous avez payé ~r~50$~w~ de caution pour l'assurance du scooter. Cette caution vous sera rendu ~r~uniquement~w~ si vous prenez soin du scooter.",
						title = 'Notification',
						subject = 'Livreur',
						icon = 'CHAR_LIVREUR_PIZZA',
							})
end)

RegisterNetEvent('ilfr-core:client:payepizza3')
AddEventHandler('ilfr-core:client:payepizza3', function(payepizza3)
exports['ilfr-core']:SendAdvanced({
						message = "La caution du scooter vous a été rendu.",
						title = 'Notification',
						subject = 'Livreur',
						icon = 'CHAR_LIVREUR_PIZZA',
							})
end)

RegisterNetEvent('ilfr-core:client:clientasbent')
AddEventHandler('ilfr-core:client:clientasbent', function(clientasbent)
exports['ilfr-core']:SendAdvanced({
						message = 'La personne n\'est pas disponible, impossible d\'envoyer la facture.',
						title = 'Notification',
						subject = 'Action impossible',
						icon = 'CHAR_NON',
							})
end)

RegisterNetEvent('ilfr-core:client:pasderesourcescoke')
AddEventHandler('ilfr-core:client:pasderesourcescoke', function(coke)
exports['ilfr-core']:SendAdvanced({
						message = 'Vous n\'avez pas la bonne ressource pour commencer le traitement dans ce laboratoire.',
						title = 'Notification',
						subject = 'Action impossible',
						icon = 'CHAR_NON',
							})
end)

RegisterNetEvent('ilfr-core:client:pasderesourcescoke2')
AddEventHandler('ilfr-core:client:pasderesourcescoke2', function(coke2)
exports['ilfr-core']:SendAdvanced({
						message = 'Vous n\'avez pas assez de ressource (50 grammes de pavot) pour commencer le traitement dans ce laboratoire.',
						title = 'Notification',
						subject = 'Action impossible',
						icon = 'CHAR_NON',
							})
end)

RegisterNetEvent('ilfr-core:client:pasderesourcescoke2co')
AddEventHandler('ilfr-core:client:pasderesourcescoke2co', function(coke2)
exports['ilfr-core']:SendAdvanced({
						message = 'Vous n\'avez pas assez de ressource (300 grammes de feuilles de coca) pour commencer le traitement dans ce laboratoire.',
						title = 'Notification',
						subject = 'Action impossible',
						icon = 'CHAR_NON',
							})
end)

RegisterNetEvent('ilfr-core:client:ventecoka')
AddEventHandler('ilfr-core:client:ventecoka', function(ventecoka)
exports['ilfr-core']:SendAdvanced({
						message = 'Vous avez vendu votre ressource, restez pas ici.',
						title = 'Notification',
						subject = 'Vente de ressources',
						icon = 'CHAR_VENTE',
							})
end)

RegisterNetEvent('ilfr-core:client:paimenttaxi')
AddEventHandler('ilfr-core:client:paimenttaxi', function(paimenttaxi)
 exports['ilfr-core']:SendAdvanced({
						message = 'Vous avez reçu un paiement pour votre course.',
						title = 'Notification',
						subject = 'Taxi',
						icon = 'CHAR_TAXI_MOD',
							})

end)

RegisterNetEvent('ilfr-core:client:delivrer')
AddEventHandler('ilfr-core:client:delivrer', function(delivrer)
 exports['ilfr-core']:SendAdvanced({
						message = 'Vous avez bien livré(e) le colis. Vous pouvez recommencer à livrer cette personne, plus vous effectuerez de livraisons, plus votre rémunération sera augmentée.',
						title = 'Notification',
						subject = 'Livraison de colis',
						icon = 'CHAR_MISSION',
							})

end)

RegisterNetEvent('ilfr-core:client:delivrermauvaisecommande')
AddEventHandler('ilfr-core:client:delivrermauvaisecommande', function(delivrermauvaisecommande)
 exports['ilfr-core']:SendAdvanced({
						message = 'Ce n\'est ~r~pas~w~ le bon colis à livrer.',
						title = 'Notification',
						subject = 'Livraison de colis',
						icon = 'CHAR_MISSION',
							})

end)

RegisterNetEvent('ilfr-core:client:troptard')
AddEventHandler('ilfr-core:client:troptard', function(troptard)
 exports['ilfr-core']:SendAdvanced({
						message = 'Vous avez mis trop de temps à livrer le colis. ~r~Attention~w~ si vous échouez plusieurs fois vos livraisons, le client ne vous fera plus confiance.',
						title = 'Notification',
						subject = 'Livraison de colis',
						icon = 'CHAR_MISSION',
							})

end)

RegisterNetEvent('ilfr-core:client:rembourseobject')
AddEventHandler('ilfr-core:client:rembourseobject', function(rembourseobject)
 exports['ilfr-core']:SendAdvanced({
						message = 'Cet objet n\'est pas disponible, Vous avez été ~g~remboursé(e)~w~.',
						title = 'Notification',
						subject = 'Livraison de colis',
						icon = 'CHAR_MISSION',
							})

end)