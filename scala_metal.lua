
local metal_list = {
	{ "Red_Metal" , "red"},
	{ "Orange_Metal" , "orange"},
    { "Grey_Metal" , "grey"},
	{ "Yellow_Metal" , "yellow"},
	{ "Green_Metal" , "green"},
	{ "Blue_Metal" , "blue"},
	{ "Black_Metal" , "black"},
	{ "white_Metal" , "white"},
	{ "Violet_Metal" , "violet"},
	{ "Cyan_Metal" , "cyan"}
}

for i in ipairs(metal_list) do
	local metaldesc = metal_list[i][1]
	local col = metal_list[i][2]
  
    --scala
   minetest.register_node("nodeu:scala_"..col.."", {
	    description ="Scala ("..metaldesc..")",
        tiles = {
		"scalaa_"..col..".png",
		"scalaa_"..col..".png",
		"scalaa_"..col..".png",
		"scalaa_"..col..".png",
		"scalaa_"..col..".png",
		"scalaa_"..col..".png"
	},                              
	drawtype = "nodebox",
	paramtype = "light",
    paramtype2="facedir",
    groups = {snappy=2,cracky=3,oddly_breakable_by_hand=3,not_in_creative_inventory=0},
    sounds = default.node_sound_defaults(),
    node_box = {
    	type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, -0.375, -0.25, -0.25}, -- NodeBox1
			{0.375, -0.5, -0.5, 0.5, -0.25, -0.25}, -- NodeBox3
			{-0.5, -0.25, -0.5, 0.5, 0, 0.25}, -- NodeBox4
			{-0.5, 0, 0, -0.3125, 0.25, 0.25}, -- NodeBox5
			{0.375, 0, 0, 0.5, 0.25, 0.25}, -- NodeBox6
			{-0.5, 0.25, 0, 0.5, 0.5, 0.5}, -- NodeBox7
		}
	}
})

                                       --pianetto piccolo
    minetest.register_node("nodeu:fine_scala_"..col.."", {
	    description = "Finescala ("..col..")",
        tiles = {"scalaa_"..col..".png",
	    },	    
	drawtype = "nodebox",
	paramtype = "light",
    paramtype2="facedir",
    groups = {snappy=2,cracky=3,oddly_breakable_by_hand=3,not_in_creative_inventory=0},
    sounds = default.node_sound_defaults(),
    node_box = {
    	type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, -0.375, -0.25, -0.25}, -- NodeBox1
			{0.375, -0.5, -0.5, 0.5, -0.25, -0.25}, -- NodeBox3
			{-0.5, -0.25, -0.5, 0.5, 0, 0.25}, -- NodeBox4
			{-0.5, 0, 0, -0.375, 0.25, 0.25}, -- NodeBox5
			{0.375, 0, 0, 0.5, 0.25, 0.25}, -- NodeBox6
			{-0.5, 0.25, 0, 0.5, 0.5, 0.5}, -- NodeBox7
			{-0.1875, -0.5, -0.5, 0.1875, 0.5, 0.5}, -- NodeBox7
		}
	}
})

minetest.register_node("nodeu:piano_scala_"..col.."", {
	    description ="Pianerottolo ("..col..")",
        tiles = {"scalaa_"..col..".png",
	    },	    
	drawtype = "nodebox",
	paramtype = "light",
    paramtype2="facedir",
    groups = {snappy=2,cracky=3,oddly_breakable_by_hand=3,not_in_creative_inventory=0},
    sounds = default.node_sound_defaults(),
    node_box = {
    	type = "fixed",
		fixed = {
			{-0.5, 0.25, -0.5, 0.5, 0.5, 0.5}, -- NodeBox7
		}
	}
})

minetest.register_node("nodeu:scala_ringhiera_"..col.."", {
	    description = "Ringhiera per scala ("..col..")",
        tiles = {"scalaa_"..col..".png",
                 "scalaa_"..col..".png",
                 "ringhieranodeu.png",
		         "ringhieranodeu.png",
                 "scalaa_"..col..".png",                          
	    	     "scalaa_"..col..".png" 
                                                    },
	drawtype = "nodebox",
	paramtype = "light",
    paramtype2="facedir",
    groups = {snappy=2,cracky=3,oddly_breakable_by_hand=3,not_in_creative_inventory=0},
    sounds = default.node_sound_defaults(),
        node_box = {
		type = "fixed",
		fixed = {
			{-0.1875, -0.5, -0.5, 0.1875, 0.5, 0.5}, -- NodeBox7
		}
	}
})
--angoloringhiera scala
minetest.register_node("nodeu:ringhiera_L_"..col.."", {
  description = "Ringhiera L ("..col..")",
  tiles = {
		"scalaa_"..col..".png",
		"scalaa_"..col..".png",
		"ringhieranodeu.png",
		"ringhieranodeu.png",
		"ringhieranodeu.png",
		"ringhieranodeu.png"
	},
	drawtype = "nodebox",
	paramtype = "light",
    paramtype2="facedir",
    groups = {cracky=3,oddly_breakable_by_hand=3,not_in_creative_inventory=0},
    sounds = default.node_sound_defaults(),
	node_box = {
		type = "fixed",
		fixed = {
			{-0.1875, -0.5, -0.5, 0.1875, 0.5, 0.1875}, -- NodeBox7
			{-0.1875, -0.5, -0.1875, 0.5, 0.5, 0.1875}, -- NodeBox2
		}
	}
})

--incrocio scala
minetest.register_node("nodeu:ringhiera_X_"..col.."", {
description = "Ringhiera X("..col..")",
tiles = {                                    
		"scalaa_"..col..".png",
		"scalaa_"..col..".png",
		"ringhieranodeu.png",
		"ringhieranodeu.png",
		"ringhieranodeu.png",
		"ringhieranodeu.png"
	},
	drawtype = "nodebox",
    paramtype2="facedir",
    groups = {snappy=2,cracky=3,oddly_breakable_by_hand=3,not_in_creative_inventory=0},
    sounds = default.node_sound_defaults(),                                      
	paramtype = "light",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.1875, -0.5, -0.5, 0.1875, 0.5, 0.5}, -- NodeBox7
			{-0.5, -0.5, -0.1875, 0.5, 0.5, 0.1875}, -- NodeBox2
		}
	}
})

    minetest.register_node("nodeu:nodo_scala_"..col.."", {
	    description ="Metal_blocco ("..col..")",
        tiles = {"scalaa_"..col..".png",
	    },	    
	drawtype = "nodebox",
	paramtype = "light",
    paramtype2="facedir",
    groups = {snappy=2,cracky=3,oddly_breakable_by_hand=3,not_in_creative_inventory=0},
    sounds = default.node_sound_defaults(),
    node_box = {
    	type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 0.5, 0.5, 0.5}, -- NodeBox7
		}
	}
}
                                                 ) 


                                               
    
     minetest.register_node("nodeu:faretto_"..col.."", {
	    description ="Faretto ("..metaldesc..")",
        tiles = {
		"scalaa_"..col..".png^farettow_"..col..".png",
		"scalaa_"..col..".png",
		"scalaa_"..col..".png",
		"scalaa_"..col..".png",
		"scalaa_"..col..".png",
		"scalaa_"..col..".png"
	},                         
	drawtype = "nodebox",
	alpha = 160,
	light_source = 16,
	paramtype = "light",
	walkable = true,
	pointable = true,
	diggable = true,
	drop = "",
	drowning = 1,
	sunlight_propagates = true,
	post_effect_color = {a = 103, r = 30, g = 60, b = 90},
	groups = {snappy=2,cracky=3,oddly_breakable_by_hand=3, not_in_creative_inventory=0},
	
	
})

end
