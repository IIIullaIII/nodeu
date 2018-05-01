
local Lamiera_list = {
	{ "Red Lamiera", "red"},
	{ "Orange Lamiera", "orange"},
    { "Grey Lamiera", "grey"},
	{ "Yellow Lamiera", "yellow"},
	{ "Green Lamiera", "green"},
	{ "Blue Lamiera", "blue"},
	{ "Violet Lamiera", "violet"},
	{ "Black Lamiera", "black"},
	{ "White Lamiera", "white"},
	{ "Cyan Lamiera", "cyan"},
}

for i in ipairs(Lamiera_list) do
	local lamieradesc = Lamiera_list[i][1]
	local colore = Lamiera_list[i][2]
	
	  minetest.register_craftitem("nodeu:lamiera_white", {
	description = "lamiera_white",
	inventory_image = "scalaa_white.png",
	}) 
minetest.register_craftitem("nodeu:lamiera_"..colore.."", {
	description = lamieradesc.."",
	inventory_image = "scalaa_"..colore..".png",
}) 
    
   minetest.register_craftitem("nodeu:farettow_"..colore.."", {
	description = "farettow_"..colore,
	inventory_image = "farettow_"..colore..".png",
})
 
minetest.register_craftitem("nodeu:ringhiera_nodeu", {
	description = "RinghieraNU",
	inventory_image = "ringhieranodeu.png",
}) 
minetest.register_craftitem("nodeu:ferro", {
	description = "Barra di ferro",
	inventory_image = "bferro.png",
}) 
----LAMIERA BIANCA
 minetest.register_craft({
		output = "nodeu:lamiera_white",
		recipe = {			
			{"","","" },
			{"","nodeu:colors_white",""},
			{"","nodeu:lamiera_"..colore,""}		
			
		}
	})
--[[minetest.register_craft({
		output = "nodeu:scala_white",
		recipe = {			
			{"nodeu:lamiera_white","","" },
			{"nodeu:lamiera_white","nodeu:lamiera_white",""},
			{"nodeu:lamiera_white","nodeu:lamiera_white","nodeu:lamiera_white"}		
			
		}
	})]]

----SCALA METAL COLORATA
 minetest.register_craft({
		output = "nodeu:scala_"..colore.."",
		recipe = {			
			{"nodeu:lamiera_"..colore,"","" },
			{"nodeu:lamiera_"..colore,"nodeu:lamiera_"..colore,""},
			{"nodeu:lamiera_"..colore,"nodeu:lamiera_"..colore,"nodeu:lamiera_"..colore}		
			
		}
	})

---SCALA CON BASE RINGHIERA INCORPORATA 
 minetest.register_craft({
		output = "nodeu:fine_scala_"..colore.."",
		recipe = {			
			{"nodeu:lamiera_"..colore,"nodeu:lamiera_"..colore,"" },
			{"nodeu:lamiera_"..colore,"nodeu:lamiera_"..colore,""},
			{"nodeu:lamiera_"..colore,"nodeu:lamiera_"..colore,"nodeu:lamiera_"..colore}		
			
		}
	})
 --LAMIERA WHITE----------------------------------
minetest.register_craft({
	type = 'cooking',
	recipe = "default:steel_ingot",
	output = "nodeu:lamiera_white",
})
----BARRA DI FERRO---------------------------------------------------------------
minetest.register_craft({
        output = "nodeu:ferro",
		recipe = {
			{"","","" },
			{"","","" },
			{"default:steel_ingot","default:steel_ingot","default:steel_ingot" }
		}
	})
 --LAMIERA COLORATA--------------------------------------------------
 minetest.register_craft({
        output = "nodeu:lamiera_"..colore.."",
		recipe = {
			{"","nodeu:colors_"..colore.."","" },
			{"","nodeu:lamiera_white","" },
			{"","","" }
		}
	})
	
	--BOCCETTA---------------------------------------------------------
	minetest.register_craft({
	type = 'cooking',
	recipe = "default:glass",
	output = 'nodeu:boccetta', 
})
--BOCCETTE DEI COLORI----------------------------------------------------------------
	minetest.register_craft({
        output = "nodeu:colors_"..colore,
		recipe = {
			{"", "nodeu:boccetta","" },
			{"", "dye:"..colore,"" },
			{"", "","" }
		}
	})
   --NODO-----------------------------------------------------
   
    minetest.register_craft({
		output = "nodeu:nodo_scala_"..colore.."",
		recipe = {
			{"nodeu:lamiera_"..colore,"nodeu:lamiera_"..colore, "nodeu:lamiera_"..colore, },
			{"nodeu:lamiera_"..colore,"nodeu:lamiera_"..colore, "nodeu:lamiera_"..colore, },			
			{"nodeu:lamiera_"..colore,"nodeu:lamiera_"..colore, "nodeu:lamiera_"..colore, }
		}
	})
	--FARETTOW--white----------------------------------------------------------------------------------------
	minetest.register_craft({
        output = "nodeu:farettow_white",
		recipe = {
			{"", "nodeu:colors_white","", },
			{"", "default:steel_ingot","", },
			{"", "default:torch","" }
		}
	})
	--FARETTOW------------------------------------------------------------------------------------------
	minetest.register_craft({
        output = "nodeu:farettow_"..colore.."",
		recipe = {
			{"", "nodeu:colors_"..colore,"" },
			{"", "default:steel_ingot","" },
			{"", "default:torch","" }
		}
	})
	--NODO FARETTO-------------------------------------------------------------------------------------
		minetest.register_craft({
        output = "nodeu:faretto_"..colore.."",
		recipe = {
			{"", "nodeu:farettow_"..colore,"" },
			{"", "nodeu:nodo_scala_"..colore,"" },
			{"", "","" }
		}
	})
   --PIANEROTTOLO-----------------------------------------------------------------------
    minetest.register_craft({
		output = "nodeu:piano_scala_"..colore.."",
		recipe = {			
			{"nodeu:lamiera_"..colore,"nodeu:lamiera_"..colore, "nodeu:lamiera_"..colore, },
			{"","",""},
			{"","",""}		
			
		}
	})
	--PARAPETTO SCALA----------------------------------------------------------------------------------------------------
   minetest.register_craft({
         type = "shaped",
		output = "nodeu:scala_ringhiera_"..colore.."",
		recipe = {
		{"nodeu:lamiera_"..colore,"nodeu:lamiera_"..colore,"nodeu:lamiera_"..colore, },
		{"nodeu:lamiera_"..colore,"nodeu:ringhiera_nodeu","nodeu:lamiera_"..colore, },			
		{"nodeu:lamiera_"..colore,"nodeu:lamiera_"..colore,"nodeu:lamiera_"..colore, }
                 }	
                           })
                
  ---PARAPETTO X-------------------
  minetest.register_craft({
         type = "shaped",
		output = "nodeu:ringhiera_X_"..colore.."",
		recipe = {
		{"nodeu:lamiera_"..colore,"","nodeu:lamiera_"..colore, },
		{"","nodeu:ringhiera_nodeu","", },			
		{"nodeu:lamiera_"..colore,"","nodeu:lamiera_"..colore, }
                 }	
                           })                                         
                           
---PARAPETTO L-------------------
minetest.register_craft({
         type = "shaped",
		output = "nodeu:ringhiera_L_"..colore.."",
		recipe = {
		{"nodeu:lamiera_"..colore,"","", },
		{"nodeu:lamiera_"..colore,"","", },			
		{"nodeu:ringhiera_nodeu","nodeu:lamiera_"..colore,"nodeu:lamiera_"..colore, }
                 }	
                           })                           

---RINGHIERA PER CRAFTARE PARAPETTO------------------------------------------------------------------------------------------------------------------
minetest.register_craft({
output = "nodeu:ringhiera_nodeu",
recipe ={
{"nodeu:ferro","","nodeu:ferro"},
{"","nodeu:ferro",""},
{"nodeu:ferro","","nodeu:ferro"}  
        }
                        })

--RINGHIERA F 4------------------------------------------
minetest.register_craft({
		output = "nodeu:ringhiera_f",
		recipe = {
			{"","",""},
			{"","",""},
			{"nodeu:ferro","nodeu:ferro",""}
		         }
	                    })
minetest.register_craft({
		output = "nodeu:ringhiera_f_ang",
		recipe = {
			{"","",""},
			{"","","nodeu:ferro"},
			{"","nodeu:ferro","nodeu:ferro"}
		}
	})
    
---RINGHIERA G 6----------------------------------------------------------------------------------------------
minetest.register_craft({
		output = "nodeu:ringhiera_g",
		recipe = {
			{"","",""},
			{"nodeu:ferro","",""},
			{"nodeu:ferro","",""}
		         }
	                    })
minetest.register_craft({
		output = "nodeu:ringhiera_g_ang",
		recipe = {
			{"","",""},
			{"nodeu:ferro","",""},
			{"nodeu:ferro","nodeu:ferro",""}
		}
	})
-----------PORTAU------------------------------
    
minetest.register_craft({
		output = "nodeu:portau_"..colore.."_ch",
		recipe = {
			{"nodeu:ferro", "nodeu:colors_"..colore, "", },
			{"nodeu:colors_"..colore, "nodeu:ferro", "", },
			{"nodeu:ferro", "nodeu:colors_"..colore, ""  }
		}
	})
	----SCALETTA---------------------------
	minetest.register_craft({
		output = "nodeu:scaletta",
		recipe = {
			{"nodeu:ferro", "", "", },
			{ "nodeu:ferro", "","", },
			{"nodeu:ferro", "", ""  }
		}
	})
end


