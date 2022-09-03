
local coordonate = {
    {1294.51, 910.17, 36.75,"",347.69,0x106D9A99,"g_m_m_chicold_01"}, --Vendeur de cocaine ok 
	{-1492.07, 953.35, 2.09,"",1.51,0x4C7B2F05,"ig_siemonyetarian"}, --Vendeur d'héroine ok 
	{5195.98, -5133.08, 5.37,"",117.74,0x9D0087A8,"ig_claypain"} --Marché noir ile cayo ok
}

Citizen.CreateThread(function()

    for _,v in pairs(coordonate) do
      RequestModel(GetHashKey(v[7]))
      while not HasModelLoaded(GetHashKey(v[7])) do
        Wait(5000)
      end
  
      RequestAnimDict("mini@strip_club@idles@bouncer@base")
      while not HasAnimDictLoaded("mini@strip_club@idles@bouncer@base") do
        Wait(5000)
      end
      ped =  CreatePed(4, v[6],v[1],v[2],v[3], 3374176, false, true)
      SetEntityHeading(ped, v[5])
      FreezeEntityPosition(ped, true)
      SetEntityInvincible(ped, true)
      SetBlockingOfNonTemporaryEvents(ped, true)
      TaskPlayAnim(ped,"mini@strip_club@idles@bouncer@base","base", 8.0, 0.0, -1, 1, 0, 0, 0, 0)
    end
end)

