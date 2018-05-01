local Color_list = {
	{ "Red Color", "red"},
	{ "Orange Color", "orange"},
    { "Grey Color", "grey"},
	{ "Yellow Color", "yellow"},
	{ "Green Color", "green"},
	{ "Blue Color", "blue"},
	{ "Violet Color", "violet"},
	{ "Black Color", "black"},
	{ "White Color", "white"},
	{ "Cyan Color", "cyan"},
}

for i in ipairs(Color_list) do
	local Colordesc = Color_list[i][1]
	local color = Color_list[i][2]
    
  minetest.register_craftitem("nodeu:boccetta", {
	description = "boccetta",
	inventory_image = "boccetta.png",
})   
 
minetest.register_craftitem("nodeu:colors_"..color.."", {
	description = Colordesc.."",
	inventory_image = "colors_"..color..".png",
}) 
end
