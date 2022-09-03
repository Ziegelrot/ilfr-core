

local coordonate = {
	{-955.0, 1508.71, 3.08,"",338.21,0xC85F0A88,"mp_m_boatstaff_01"}, -- loc bateaux
	{1324.13, 568.68, 24.98,"",88.77,0x47E4EEA0,"ig_andreas"}, -- permis
	{180.77, 302.87, 14.5,"",271.72,0xC306D6F5,"u_m_m_bankman"}, -- bank
	{180.67, 297.41, 14.5,"",271.72,0x9760192E,"cs_bankman"}, -- bank
	{180.67, 291.81, 14.5,"",270.49,0xC306D6F5,"u_m_m_bankman"}, -- bank
	{966.82, 1412.33, 21.25,"",180.92,0xC306D6F5,"u_m_m_bankman"}, -- bank 
	{1525.75, 895.76, 21.48,"Prêteur sur gage",88.11,0xD770C9B4,"csb_agent"},
	{1010.98, 937.9, 10.74,"Grossiste",192.79,0xEF785A6A,"csb_undercover"},
	{416.42, 454.01, 3.67,"",315.75,0xEF785A6A,"csb_undercover"}, -- éboueur
	{87.05, 796.27, 13.81, "",310.41,0x445AC854,"a_f_y_bevhills_01"},  -- velo
	{-0.19, 1651.08, 13.68, "",218.82,0x445AC854,"a_f_y_bevhills_01"},  -- velo 
	{2374.04, 1316.25, 5.09, "",225.27,0x445AC854,"a_f_y_bevhills_01"},  -- velo 
	{-473.86, 913.94, 3.66, "",66.44,0x445AC854,"a_f_y_bevhills_01"}, -- velo
	{248.6, 1219.87, 14.19, "",86.53,0xB7C61032,"a_f_y_business_04"}, -- duty journaliste 
	{231.15, 645.71, 13.72, "",202.22,0xB3B3F5E6,"a_m_y_business_02"}, -- duty dynasty8
	{-521.93, 945.05, 3.29, "",282.04,0x7F81B0BD,"mp_f_bennymech_01"}, -- duty junkost
	{-1282.98, 1501.35, 16.23, "",169.33,0x7F81B0BD,"mp_f_bennymech_01"}, -- duty junkost
	{-109.31, 501.55, 16.87, "",175.07,0xDE17DD3B,"ig_natalia"}, -- mairie 
	{-1106.64, 1269.39, 2.98, "",235.78,0xE793C8E8,"ig_talina"}, -- recyclejob 
	{-1109.67, 1314.89, 2.98, "",51.23,0x1536D95A,"a_m_o_ktown_01"}, -- chauffeur livreur job  
	{-415.19, 2584.95, 7.6, "",199.37,0xF7A74139,"mp_m_waremech_01"}, -- tow job   
	{882.65, 581.13, 14.31, "",87.81,0x9712C38F,"a_m_m_prolhost_01"}, -- taxi job
	{-242.07, 2375.1, 19.31, "",327.19,0xF06B849D,"s_m_m_autoshop_02"}, -- pay 'n' spray 
	{-447.62, 1203.4, 5.48, "",340.23,0xF06B849D,"s_m_m_autoshop_02"}, -- pay 'n' spray  
	{-1234.12, 1126.66, 9.8, "",213.59,0xF06B849D,"s_m_m_autoshop_02"}, -- pay 'n' spray  
	{1127.63, 540.66, 20.36, "",7.36,0xF06B849D,"s_m_m_autoshop_02"}, -- pay 'n' spray  
	{326.68, 322.48, 8.08, "",269.13,0xB353629E,"s_m_m_paramedic_01"}, -- assurance santé  
	{1280.68, 1155.66, 25.02, "",46.5,0x62CC28E2,"s_m_y_armymech_01"}   
}

Citizen.CreateThread(function()

    for _,v in pairs(coordonate) do
      RequestModel(GetHashKey(v[7]))
      while not HasModelLoaded(GetHashKey(v[7])) do
        Wait(3000)
      end
  
      RequestAnimDict("amb@world_human_hiker_standing@female@idle_a")
      while not HasAnimDictLoaded("amb@world_human_hiker_standing@female@idle_a") do
        Wait(3000)
      end
      ped =  CreatePed(4, v[6],v[1],v[2],v[3], 3374176, false, true)
      SetEntityHeading(ped, v[5])
      FreezeEntityPosition(ped, true)
      SetEntityInvincible(ped, true)
      SetBlockingOfNonTemporaryEvents(ped, true)
      TaskPlayAnim(ped,"amb@world_human_hiker_standing@female@idle_a","base", 8.0, 0.0, -1, 1, 0, 0, 0, 0)
    end
end)

