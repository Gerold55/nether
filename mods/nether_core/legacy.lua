-- mods/core/legacy.lua

-- Horrible stuff to support old code registering falling nodes
-- Don't use this and never do what this does, it's completely wrong!
-- (More specifically, the client and the C++ code doesn't get the group)
function core.register_falling_node(nodename, texture)
	minetest.log("error", debug.traceback())
	minetest.log('error', "WARNING: core.register_falling_node is deprecated")
	if minetest.registered_nodes[nodename] then
		minetest.registered_nodes[nodename].groups.falling_node = 1
	end
end

function core.spawn_falling_node(p, nodename)
	spawn_falling_node(p, nodename)
end

-- Liquids
WATER_ALPHA = minetest.registered_nodes["core:water_source"].alpha
WATER_VISC = minetest.registered_nodes["core:water_source"].liquid_viscosity
LAVA_VISC = minetest.registered_nodes["core:lava_source"].liquid_viscosity
LIGHT_MAX = core.LIGHT_MAX

-- Formspecs
core.gui_suvival_form = core.gui_survival_form
core.gui_bg     = ""
core.gui_bg_img = ""
core.gui_slots  = ""

-- Players
if minetest.get_modpath("player_api") then
	core.registered_player_models = player_api.registered_models
	core.player_register_model    = player_api.register_model
	core.player_attached          = player_api.player_attached
	core.player_get_animation     = player_api.get_animation
	core.player_set_model         = player_api.set_model
	core.player_set_textures      = player_api.set_textures
	core.player_set_animation     = player_api.set_animation
end

-- Chests
core.register_chest = core.chest.register_chest

-- Check for a volume intersecting protection
function core.intersects_protection(minp, maxp, player_name, interval)
	minetest.log("warning", "core.intersects_protection() is " ..
		"deprecated, use minetest.is_area_protected() instead.")
	minetest.is_area_protected(minp, maxp, player_name, interval)
end
