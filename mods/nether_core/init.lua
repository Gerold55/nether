-- Minetest 0.4 mod: nether_core
-- See README.txt for licensing and other information.

-- The API documentation in here was moved into game_api.txt

-- Definitions made by this mod that other mods can use too
nether_core = {}

nether_core.LIGHT_MAX = 14

function nether_core.get_hotbar_bg(x,y)
	local out = ""
	for i=0,7,1 do
		out = out .."image["..x+i..","..y..";1,1;gui_hb_bg.png]"
	end
	return out
end

nether_core.gui_survival_form = "size[8,8.5]"..
			"list[current_player;main;0,4.25;8,1;]"..
			"list[current_player;main;0,5.5;8,3;8]"..
			"list[current_player;craft;1.75,0.5;2,2;]"..
			"list[current_player;craftpreview;5.75,1.5;1,1;]"..
			"image[4.75,1.5;1,1;gui_furnace_arrow_bg.png^[transformR270]"..
			"listring[current_player;main]"..
			"listring[current_player;craft]"..
			nether_core.get_hotbar_bg(0,4.25)

-- Load files
local nether_core_path = minetest.get_modpath("nether_core")

dofile(nether_core_path.."/functions.lua")
dofile(nether_core_path.."/nodes.lua")
dofile(nether_core_path.."/item_entity.lua")
dofile(nether_core_path.."/chatcommands.lua")
dofile(nether_core_path.."/craftitems.lua")
dofile(nether_core_path.."/crafting.lua")
dofile(nether_core_path.."/mapgen.lua")
dofile(nether_core_path.."/aliases.lua")
dofile(nether_core_path.."/legacy.lua")
dofile(nether_core_path.."/trees.lua")
dofile(nether_core_path.."/tools.lua")
dofile(nether_core_path.."/storage.lua")
dofile(nether_core_path.."/fence.lua")
dofile(nether_core_path.."/furnace.lua")
