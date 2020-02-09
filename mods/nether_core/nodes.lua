-- mods/nether_core/nodes.lua


--[[ Node name convention:

Although many node names are in combined-word form, the required form for new
node names is words separated by undersnether_core. If both forms are used in written
language (for example pinewood and pine wood) the undersnether_core form should be used.

--]]


--[[ Index:

Stone
-----
(1. Material 2. Cobble variant 3. Brick variant 4. Modified forms)

nether_core:netherrack
nether_core:cobble
nether_core:stonebrick
nether_core:stone_block
nether_core:mossycobble

nether_core:desert_stone
nether_core:desert_cobble
nether_core:desert_stonebrick
nether_core:desert_stone_block

nether_core:sandstone
nether_core:sandstonebrick
nether_core:sandstone_block
nether_core:desert_sandstone
nether_core:desert_sandstone_brick
nether_core:desert_sandstone_block
nether_core:silver_sandstone
nether_core:silver_sandstone_brick
nether_core:silver_sandstone_block

nether_core:obsidian
nether_core:obsidianbrick
nether_core:obsidian_block

Soft / Non-Stone
----------------
(1. Material 2. Modified forms)

nether_core:warped_nylium
nether_core:dirt_with_grass_footsteps
nether_core:dirt_with_dry_grass
nether_core:dirt_with_snow
nether_core:dirt_with_rainforest_litter
nether_core:dirt_with_coniferous_litter

nether_core:permafrost
nether_core:permafrost_with_stones
nether_core:permafrost_with_moss

nether_core:sand
nether_core:desert_sand
nether_core:silver_sand

nether_core:gravel

nether_core:clay

nether_core:snow
nether_core:snowblock
nether_core:ice
nether_core:cave_ice

Trees
-----
(1. Trunk 2. Fabricated trunk 3. Leaves 4. Sapling 5. Fruits)

nether_core:tree
nether_core:wood
nether_core:leaves
nether_core:sapling
nether_core:apple

nether_core:jungletree
nether_core:junglewood
nether_core:jungleleaves
nether_core:junglesapling
nether_core:emergent_jungle_sapling

nether_core:pine_tree
nether_core:pine_wood
nether_core:pine_needles
nether_core:pine_sapling

nether_core:acacia_tree
nether_core:acacia_wood
nether_core:acacia_leaves
nether_core:acacia_sapling

nether_core:aspen_tree
nether_core:aspen_wood
nether_core:aspen_leaves
nether_core:aspen_sapling

Ores
----
(1. In stone 2. Blocks)

nether_core:stone_with_coal
nether_core:coalblock

nether_core:stone_with_iron
nether_core:steelblock

nether_core:stone_with_copper
nether_core:copperblock

nether_core:stone_with_tin
nether_core:tinblock

nether_core:bronzeblock

nether_core:stone_with_gold
nether_core:goldblock

nether_core:stone_with_mese
nether_core:mese

nether_core:stone_with_diamond
nether_core:diamondblock

Plantlife
---------

nether_core:cactus
nether_core:large_cactus_seedling

nether_core:papyrus
nether_core:dry_shrub
nether_core:junglegrass

nether_core:grass_1
nether_core:grass_2
nether_core:grass_3
nether_core:grass_4
nether_core:grass_5

nether_core:dry_grass_1
nether_core:dry_grass_2
nether_core:dry_grass_3
nether_core:dry_grass_4
nether_core:dry_grass_5

nether_core:fern_1
nether_core:fern_2
nether_core:fern_3

nether_core:marram_grass_1
nether_core:marram_grass_2
nether_core:marram_grass_3

nether_core:bush_stem
nether_core:bush_leaves
nether_core:bush_sapling
nether_core:acacia_bush_stem
nether_core:acacia_bush_leaves
nether_core:acacia_bush_sapling
nether_core:pine_bush_stem
nether_core:pine_bush_needles
nether_core:pine_bush_sapling
nether_core:blueberry_bush_leaves_with_berries
nether_core:blueberry_bush_leaves
nether_core:blueberry_bush_sapling

nether_core:sand_with_kelp

Corals
------

nether_core:coral_brown
nether_core:coral_orange
nether_core:coral_skeleton

Liquids
-------
(1. Source 2. Flowing)

nether_core:water_source
nether_core:water_flowing

nether_core:river_water_source
nether_core:river_water_flowing

nether_core:lava_source
nether_core:lava_flowing

Tools / "Advanced" crafting / Non-"natural"
-------------------------------------------

nether_core:bookshelf

nether_core:sign_wall_wood
nether_core:sign_wall_steel

nether_core:ladder_wood
nether_core:ladder_steel

nether_core:fence_wood
nether_core:fence_acacia_wood
nether_core:fence_junglewood
nether_core:fence_pine_wood
nether_core:fence_aspen_wood

nether_core:glass
nether_core:obsidian_glass

nether_core:brick

nether_core:meselamp
nether_core:mese_post_light

Misc
----

nether_core:cloud

--]]

--
-- Stone
--

minetest.register_node("nether_core:netherrack", {
	description = "Netherrack",
	tiles = {"netherrack.png"},
	groups = {cracky = 3, stone = 1},
	legacy_mineral = true,
	sounds = nether_core.node_sound_stone_nether_core(),
})

minetest.register_node("nether_core:cobble", {
	description = "Cobblestone",
	tiles = {"nether_core_cobble.png"},
	is_ground_content = false,
	groups = {cracky = 3, stone = 2},
	sounds = nether_core.node_sound_stone_nether_core(),
})

minetest.register_node("nether_core:stonebrick", {
	description = "Stone Brick",
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"nether_core_stone_brick.png"},
	is_ground_content = false,
	groups = {cracky = 2, stone = 1},
	sounds = nether_core.node_sound_stone_nether_core(),
})

minetest.register_node("nether_core:stone_block", {
	description = "Stone Block",
	tiles = {"nether_core_stone_block.png"},
	is_ground_content = false,
	groups = {cracky = 2, stone = 1},
	sounds = nether_core.node_sound_stone_nether_core(),
})

minetest.register_node("nether_core:mossycobble", {
	description = "Mossy Cobblestone",
	tiles = {"nether_core_mossycobble.png"},
	is_ground_content = false,
	groups = {cracky = 3, stone = 1},
	sounds = nether_core.node_sound_stone_nether_core(),
})


minetest.register_node("nether_core:desert_stone", {
	description = "Desert Stone",
	tiles = {"nether_core_desert_stone.png"},
	groups = {cracky = 3, stone = 1},
	drop = 'nether_core:desert_cobble',
	legacy_mineral = true,
	sounds = nether_core.node_sound_stone_nether_core(),
})

minetest.register_node("nether_core:desert_cobble", {
	description = "Desert Cobblestone",
	tiles = {"nether_core_desert_cobble.png"},
	is_ground_content = false,
	groups = {cracky = 3, stone = 2},
	sounds = nether_core.node_sound_stone_nether_core(),
})

minetest.register_node("nether_core:desert_stonebrick", {
	description = "Desert Stone Brick",
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"nether_core_desert_stone_brick.png"},
	is_ground_content = false,
	groups = {cracky = 2, stone = 1},
	sounds = nether_core.node_sound_stone_nether_core(),
})

minetest.register_node("nether_core:desert_stone_block", {
	description = "Desert Stone Block",
	tiles = {"nether_core_desert_stone_block.png"},
	is_ground_content = false,
	groups = {cracky = 2, stone = 1},
	sounds = nether_core.node_sound_stone_nether_core(),
})

minetest.register_node("nether_core:sandstone", {
	description = "Sandstone",
	tiles = {"nether_core_sandstone.png"},
	groups = {crumbly = 1, cracky = 3},
	sounds = nether_core.node_sound_stone_nether_core(),
})

minetest.register_node("nether_core:sandstonebrick", {
	description = "Sandstone Brick",
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"nether_core_sandstone_brick.png"},
	is_ground_content = false,
	groups = {cracky = 2},
	sounds = nether_core.node_sound_stone_nether_core(),
})

minetest.register_node("nether_core:sandstone_block", {
	description = "Sandstone Block",
	tiles = {"nether_core_sandstone_block.png"},
	is_ground_content = false,
	groups = {cracky = 2},
	sounds = nether_core.node_sound_stone_nether_core(),
})

minetest.register_node("nether_core:desert_sandstone", {
	description = "Desert Sandstone",
	tiles = {"nether_core_desert_sandstone.png"},
	groups = {crumbly = 1, cracky = 3},
	sounds = nether_core.node_sound_stone_nether_core(),
})

minetest.register_node("nether_core:desert_sandstone_brick", {
	description = "Desert Sandstone Brick",
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"nether_core_desert_sandstone_brick.png"},
	is_ground_content = false,
	groups = {cracky = 2},
	sounds = nether_core.node_sound_stone_nether_core(),
})

minetest.register_node("nether_core:desert_sandstone_block", {
	description = "Desert Sandstone Block",
	tiles = {"nether_core_desert_sandstone_block.png"},
	is_ground_content = false,
	groups = {cracky = 2},
	sounds = nether_core.node_sound_stone_nether_core(),
})

minetest.register_node("nether_core:silver_sandstone", {
	description = "Silver Sandstone",
	tiles = {"nether_core_silver_sandstone.png"},
	groups = {crumbly = 1, cracky = 3},
	sounds = nether_core.node_sound_stone_nether_core(),
})

minetest.register_node("nether_core:silver_sandstone_brick", {
	description = "Silver Sandstone Brick",
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"nether_core_silver_sandstone_brick.png"},
	is_ground_content = false,
	groups = {cracky = 2},
	sounds = nether_core.node_sound_stone_nether_core(),
})

minetest.register_node("nether_core:silver_sandstone_block", {
	description = "Silver Sandstone Block",
	tiles = {"nether_core_silver_sandstone_block.png"},
	is_ground_content = false,
	groups = {cracky = 2},
	sounds = nether_core.node_sound_stone_nether_core(),
})

minetest.register_node("nether_core:obsidian", {
	description = "Obsidian",
	tiles = {"nether_core_obsidian.png"},
	sounds = nether_core.node_sound_stone_nether_core(),
	groups = {cracky = 1, level = 2},
})

minetest.register_node("nether_core:obsidianbrick", {
	description = "Obsidian Brick",
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"nether_core_obsidian_brick.png"},
	is_ground_content = false,
	sounds = nether_core.node_sound_stone_nether_core(),
	groups = {cracky = 1, level = 2},
})

minetest.register_node("nether_core:obsidian_block", {
	description = "Obsidian Block",
	tiles = {"nether_core_obsidian_block.png"},
	is_ground_content = false,
	sounds = nether_core.node_sound_stone_nether_core(),
	groups = {cracky = 1, level = 2},
})

--
-- Soft / Non-Stone
--

minetest.register_node("nether_core:dirt", {
	description = "Dirt",
	tiles = {"nether_core_dirt.png"},
	groups = {crumbly = 3, soil = 1},
	sounds = nether_core.node_sound_dirt_nether_core(),
})

minetest.register_node("nether_core:warped_nylium", {
	description = "Warped Nylium",
	tiles = {"warped_nylium_side.png",
		{name = "warped_nylium_side.png",
			tileable_vertical = false}},
	groups = {crumbly = 3, soil = 1, spreading_dirt_type = 1},
	drop = 'nether_core:netherrack',
	sounds = nether_core.node_sound_dirt_nether_core({
		footstep = {name = "nether_core_grass_footstep", gain = 0.25},
	}),
})

minetest.register_node("nether_core:dirt_with_dry_grass", {
	description = "Dirt with Dry Grass",
	tiles = {"nether_core_dry_grass.png",
		"nether_core_dirt.png",
		{name = "nether_core_dirt.png^nether_core_dry_grass_side.png",
			tileable_vertical = false}},
	groups = {crumbly = 3, soil = 1, spreading_dirt_type = 1},
	drop = 'nether_core:dirt',
	sounds = nether_core.node_sound_dirt_nether_core({
		footstep = {name = "nether_core_grass_footstep", gain = 0.4},
	}),
})

minetest.register_node("nether_core:dirt_with_snow", {
	description = "Dirt with Snow",
	tiles = {"nether_core_snow.png", "nether_core_dirt.png",
		{name = "nether_core_dirt.png^nether_core_snow_side.png",
			tileable_vertical = false}},
	groups = {crumbly = 3, soil = 1, spreading_dirt_type = 1, snowy = 1},
	drop = 'nether_core:dirt',
	sounds = nether_core.node_sound_dirt_nether_core({
		footstep = {name = "nether_core_snow_footstep", gain = 0.2},
	}),
})

minetest.register_node("nether_core:dirt_with_rainforest_litter", {
	description = "Dirt with Rainforest Litter",
	tiles = {
		"nether_core_rainforest_litter.png",
		"nether_core_dirt.png",
		{name = "nether_core_dirt.png^nether_core_rainforest_litter_side.png",
			tileable_vertical = false}
	},
	groups = {crumbly = 3, soil = 1, spreading_dirt_type = 1},
	drop = "nether_core:dirt",
	sounds = nether_core.node_sound_dirt_nether_core({
		footstep = {name = "nether_core_grass_footstep", gain = 0.4},
	}),
})

minetest.register_node("nether_core:dirt_with_coniferous_litter", {
	description = "Dirt with Coniferous Litter",
	tiles = {
		"nether_core_coniferous_litter.png",
		"nether_core_dirt.png",
		{name = "nether_core_dirt.png^nether_core_coniferous_litter_side.png",
			tileable_vertical = false}
	},
	groups = {crumbly = 3, soil = 1, spreading_dirt_type = 1},
	drop = "nether_core:dirt",
	sounds = nether_core.node_sound_dirt_nether_core({
		footstep = {name = "nether_core_grass_footstep", gain = 0.4},
	}),
})

minetest.register_node("nether_core:permafrost", {
	description = "Permafrost",
	tiles = {"nether_core_permafrost.png"},
	groups = {cracky = 3},
	sounds = nether_core.node_sound_dirt_nether_core(),
})

minetest.register_node("nether_core:permafrost_with_stones", {
	description = "Permafrost with Stones",
	tiles = {"nether_core_permafrost.png^nether_core_stones.png",
		"nether_core_permafrost.png",
		"nether_core_permafrost.png^nether_core_stones_side.png"},
	groups = {cracky = 3},
	sounds = nether_core.node_sound_gravel_nether_core(),
})

minetest.register_node("nether_core:permafrost_with_moss", {
	description = "Permafrost with Moss",
	tiles = {"nether_core_moss.png", "nether_core_permafrost.png",
		{name = "nether_core_permafrost.png^nether_core_moss_side.png",
			tileable_vertical = false}},
	groups = {cracky = 3},
	sounds = nether_core.node_sound_dirt_nether_core({
		footstep = {name = "nether_core_grass_footstep", gain = 0.25},
	}),
})

minetest.register_node("nether_core:sand", {
	description = "Sand",
	tiles = {"nether_core_sand.png"},
	groups = {crumbly = 3, falling_node = 1, sand = 1},
	sounds = nether_core.node_sound_sand_nether_core(),
})

minetest.register_node("nether_core:desert_sand", {
	description = "Desert Sand",
	tiles = {"nether_core_desert_sand.png"},
	groups = {crumbly = 3, falling_node = 1, sand = 1},
	sounds = nether_core.node_sound_sand_nether_core(),
})

minetest.register_node("nether_core:silver_sand", {
	description = "Silver Sand",
	tiles = {"nether_core_silver_sand.png"},
	groups = {crumbly = 3, falling_node = 1, sand = 1},
	sounds = nether_core.node_sound_sand_nether_core(),
})


minetest.register_node("nether_core:gravel", {
	description = "Gravel",
	tiles = {"nether_core_gravel.png"},
	groups = {crumbly = 2, falling_node = 1},
	sounds = nether_core.node_sound_gravel_nether_core(),
	drop = {
		max_items = 1,
		items = {
			{items = {'nether_core:flint'}, rarity = 16},
			{items = {'nether_core:gravel'}}
		}
	}
})

minetest.register_node("nether_core:clay", {
	description = "Clay",
	tiles = {"nether_core_clay.png"},
	groups = {crumbly = 3},
	drop = 'nether_core:clay_lump 4',
	sounds = nether_core.node_sound_dirt_nether_core(),
})


minetest.register_node("nether_core:snow", {
	description = "Snow",
	tiles = {"nether_core_snow.png"},
	inventory_image = "nether_core_snowball.png",
	wield_image = "nether_core_snowball.png",
	paramtype = "light",
	buildable_to = true,
	floodable = true,
	drawtype = "nodebox",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 0.5, -0.25, 0.5},
		},
	},
	collision_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 0.5, -7 / 16, 0.5},
		},
	},
	groups = {crumbly = 3, falling_node = 1, snowy = 1},
	sounds = nether_core.node_sound_snow_nether_core(),

	on_construct = function(pos)
		pos.y = pos.y - 1
		if minetest.get_node(pos).name == "nether_core:dirt_with_grass" then
			minetest.set_node(pos, {name = "nether_core:dirt_with_snow"})
		end
	end,
})

minetest.register_node("nether_core:snowblock", {
	description = "Snow Block",
	tiles = {"nether_core_snow.png"},
	groups = {crumbly = 3, cools_lava = 1, snowy = 1},
	sounds = nether_core.node_sound_snow_nether_core(),

	on_construct = function(pos)
		pos.y = pos.y - 1
		if minetest.get_node(pos).name == "nether_core:dirt_with_grass" then
			minetest.set_node(pos, {name = "nether_core:dirt_with_snow"})
		end
	end,
})

-- 'is ground content = false' to avoid tunnels in sea ice or ice rivers
minetest.register_node("nether_core:ice", {
	description = "Ice",
	tiles = {"nether_core_ice.png"},
	is_ground_content = false,
	paramtype = "light",
	groups = {cracky = 3, cools_lava = 1, slippery = 3},
	sounds = nether_core.node_sound_glass_nether_core(),
})

-- Mapgen-placed ice with 'is ground content = true' to contain tunnels
minetest.register_node("nether_core:cave_ice", {
	description = "Cave Ice",
	tiles = {"nether_core_ice.png"},
	paramtype = "light",
	groups = {cracky = 3, cools_lava = 1, slippery = 3,
		not_in_creative_inventory = 1},
	drop = "nether_core:ice",
	sounds = nether_core.node_sound_glass_nether_core(),
})

--
-- Trees
--

minetest.register_node("nether_core:tree", {
	description = "Apple Tree",
	tiles = {"nether_core_tree_top.png", "nether_core_tree_top.png", "nether_core_tree.png"},
	paramtype2 = "facedir",
	is_ground_content = false,
	groups = {tree = 1, choppy = 2, oddly_breakable_by_hand = 1, flammable = 2},
	sounds = nether_core.node_sound_wood_nether_core(),

	on_place = minetest.rotate_node
})

minetest.register_node("nether_core:wood", {
	description = "Apple Wood Planks",
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"nether_core_wood.png"},
	is_ground_content = false,
	groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2, wood = 1},
	sounds = nether_core.node_sound_wood_nether_core(),
})

minetest.register_node("nether_core:sapling", {
	description = "Apple Tree Sapling",
	drawtype = "plantlike",
	tiles = {"nether_core_sapling.png"},
	inventory_image = "nether_core_sapling.png",
	wield_image = "nether_core_sapling.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	on_timer = nether_core.grow_sapling,
	selection_box = {
		type = "fixed",
		fixed = {-4 / 16, -0.5, -4 / 16, 4 / 16, 7 / 16, 4 / 16}
	},
	groups = {snappy = 2, dig_immediate = 3, flammable = 2,
		attached_node = 1, sapling = 1},
	sounds = nether_core.node_sound_leaves_nether_core(),

	on_construct = function(pos)
		minetest.get_node_timer(pos):start(math.random(300, 1500))
	end,

	on_place = function(itemstack, placer, pointed_thing)
		itemstack = nether_core.sapling_on_place(itemstack, placer, pointed_thing,
			"nether_core:sapling",
			-- minp, maxp to be checked, relative to sapling pos
			-- minp_relative.y = 1 because sapling pos has been checked
			{x = -3, y = 1, z = -3},
			{x = 3, y = 6, z = 3},
			-- maximum interval of interior volume check
			4)

		return itemstack
	end,
})

minetest.register_node("nether_core:leaves", {
	description = "Apple Tree Leaves",
	drawtype = "allfaces_optional",
	waving = 1,
	tiles = {"nether_core_leaves.png"},
	special_tiles = {"nether_core_leaves_simple.png"},
	paramtype = "light",
	is_ground_content = false,
	groups = {snappy = 3, leafdecay = 3, flammable = 2, leaves = 1},
	drop = {
		max_items = 1,
		items = {
			{
				-- player will get sapling with 1/20 chance
				items = {'nether_core:sapling'},
				rarity = 20,
			},
			{
				-- player will get leaves only if he get no saplings,
				-- this is because max_items is 1
				items = {'nether_core:leaves'},
			}
		}
	},
	sounds = nether_core.node_sound_leaves_nether_core(),

	after_place_node = nether_core.after_place_leaves,
})

minetest.register_node("nether_core:apple", {
	description = "Apple",
	drawtype = "plantlike",
	tiles = {"nether_core_apple.png"},
	inventory_image = "nether_core_apple.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	is_ground_content = false,
	selection_box = {
		type = "fixed",
		fixed = {-3 / 16, -7 / 16, -3 / 16, 3 / 16, 4 / 16, 3 / 16}
	},
	groups = {fleshy = 3, dig_immediate = 3, flammable = 2,
		leafdecay = 3, leafdecay_drop = 1, food_apple = 1},
	on_use = minetest.item_eat(2),
	sounds = nether_core.node_sound_leaves_nether_core(),

	after_place_node = function(pos, placer, itemstack)
		minetest.set_node(pos, {name = "nether_core:apple", param2 = 1})
	end,

	after_dig_node = function(pos, oldnode, oldmetadata, digger)
		if oldnode.param2 == 0 then
			minetest.set_node(pos, {name = "nether_core:apple_mark"})
			minetest.get_node_timer(pos):start(math.random(300, 1500))
		end
	end,
})

minetest.register_node("nether_core:apple_mark", {
	description = "Apple Marker",
	drawtype = "airlike",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	drop = "",
	groups = {not_in_creative_inventory = 1},
	on_timer = function(pos, elapsed)
		if not minetest.find_node_near(pos, 1, "nether_core:leaves") then
			minetest.remove_node(pos)
		elseif minetest.get_node_light(pos) < 11 then
			minetest.get_node_timer(pos):start(200)
		else
			minetest.set_node(pos, {name = "nether_core:apple"})
		end
	end
})


minetest.register_node("nether_core:jungletree", {
	description = "Jungle Tree",
	tiles = {"nether_core_jungletree_top.png", "nether_core_jungletree_top.png",
		"nether_core_jungletree.png"},
	paramtype2 = "facedir",
	is_ground_content = false,
	groups = {tree = 1, choppy = 2, oddly_breakable_by_hand = 1, flammable = 2},
	sounds = nether_core.node_sound_wood_nether_core(),

	on_place = minetest.rotate_node
})

minetest.register_node("nether_core:junglewood", {
	description = "Jungle Wood Planks",
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"nether_core_junglewood.png"},
	is_ground_content = false,
	groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2, wood = 1},
	sounds = nether_core.node_sound_wood_nether_core(),
})

minetest.register_node("nether_core:jungleleaves", {
	description = "Jungle Tree Leaves",
	drawtype = "allfaces_optional",
	waving = 1,
	tiles = {"nether_core_jungleleaves.png"},
	special_tiles = {"nether_core_jungleleaves_simple.png"},
	paramtype = "light",
	is_ground_content = false,
	groups = {snappy = 3, leafdecay = 3, flammable = 2, leaves = 1},
	drop = {
		max_items = 1,
		items = {
			{items = {'nether_core:junglesapling'}, rarity = 20},
			{items = {'nether_core:jungleleaves'}}
		}
	},
	sounds = nether_core.node_sound_leaves_nether_core(),

	after_place_node = nether_core.after_place_leaves,
})

minetest.register_node("nether_core:junglesapling", {
	description = "Jungle Tree Sapling",
	drawtype = "plantlike",
	tiles = {"nether_core_junglesapling.png"},
	inventory_image = "nether_core_junglesapling.png",
	wield_image = "nether_core_junglesapling.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	on_timer = nether_core.grow_sapling,
	selection_box = {
		type = "fixed",
		fixed = {-4 / 16, -0.5, -4 / 16, 4 / 16, 7 / 16, 4 / 16}
	},
	groups = {snappy = 2, dig_immediate = 3, flammable = 2,
		attached_node = 1, sapling = 1},
	sounds = nether_core.node_sound_leaves_nether_core(),

	on_construct = function(pos)
		minetest.get_node_timer(pos):start(math.random(300, 1500))
	end,

	on_place = function(itemstack, placer, pointed_thing)
		itemstack = nether_core.sapling_on_place(itemstack, placer, pointed_thing,
			"nether_core:junglesapling",
			-- minp, maxp to be checked, relative to sapling pos
			-- minp_relative.y = 1 because sapling pos has been checked
			{x = -2, y = 1, z = -2},
			{x = 2, y = 15, z = 2},
			-- maximum interval of interior volume check
			4)

		return itemstack
	end,
})

minetest.register_node("nether_core:emergent_jungle_sapling", {
	description = "Emergent Jungle Tree Sapling",
	drawtype = "plantlike",
	tiles = {"nether_core_emergent_jungle_sapling.png"},
	inventory_image = "nether_core_emergent_jungle_sapling.png",
	wield_image = "nether_core_emergent_jungle_sapling.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	on_timer = nether_core.grow_sapling,
	selection_box = {
		type = "fixed",
		fixed = {-4 / 16, -0.5, -4 / 16, 4 / 16, 7 / 16, 4 / 16}
	},
	groups = {snappy = 2, dig_immediate = 3, flammable = 2,
		attached_node = 1, sapling = 1},
	sounds = nether_core.node_sound_leaves_nether_core(),

	on_construct = function(pos)
		minetest.get_node_timer(pos):start(math.random(300, 1500))
	end,

	on_place = function(itemstack, placer, pointed_thing)
		itemstack = nether_core.sapling_on_place(itemstack, placer, pointed_thing,
			"nether_core:emergent_jungle_sapling",
			-- minp, maxp to be checked, relative to sapling pos
			{x = -3, y = -5, z = -3},
			{x = 3, y = 31, z = 3},
			-- maximum interval of interior volume check
			4)

		return itemstack
	end,
})


minetest.register_node("nether_core:pine_tree", {
	description = "Pine Tree",
	tiles = {"nether_core_pine_tree_top.png", "nether_core_pine_tree_top.png",
		"nether_core_pine_tree.png"},
	paramtype2 = "facedir",
	is_ground_content = false,
	groups = {tree = 1, choppy = 3, oddly_breakable_by_hand = 1, flammable = 3},
	sounds = nether_core.node_sound_wood_nether_core(),

	on_place = minetest.rotate_node
})

minetest.register_node("nether_core:pine_wood", {
	description = "Pine Wood Planks",
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"nether_core_pine_wood.png"},
	is_ground_content = false,
	groups = {choppy = 3, oddly_breakable_by_hand = 2, flammable = 3, wood = 1},
	sounds = nether_core.node_sound_wood_nether_core(),
})

minetest.register_node("nether_core:pine_needles",{
	description = "Pine Needles",
	drawtype = "allfaces_optional",
	tiles = {"nether_core_pine_needles.png"},
	waving = 1,
	paramtype = "light",
	is_ground_content = false,
	groups = {snappy = 3, leafdecay = 3, flammable = 2, leaves = 1},
	drop = {
		max_items = 1,
		items = {
			{items = {"nether_core:pine_sapling"}, rarity = 20},
			{items = {"nether_core:pine_needles"}}
		}
	},
	sounds = nether_core.node_sound_leaves_nether_core(),

	after_place_node = nether_core.after_place_leaves,
})

minetest.register_node("nether_core:pine_sapling", {
	description = "Pine Tree Sapling",
	drawtype = "plantlike",
	tiles = {"nether_core_pine_sapling.png"},
	inventory_image = "nether_core_pine_sapling.png",
	wield_image = "nether_core_pine_sapling.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	on_timer = nether_core.grow_sapling,
	selection_box = {
		type = "fixed",
		fixed = {-4 / 16, -0.5, -4 / 16, 4 / 16, 7 / 16, 4 / 16}
	},
	groups = {snappy = 2, dig_immediate = 3, flammable = 3,
		attached_node = 1, sapling = 1},
	sounds = nether_core.node_sound_leaves_nether_core(),

	on_construct = function(pos)
		minetest.get_node_timer(pos):start(math.random(300, 1500))
	end,

	on_place = function(itemstack, placer, pointed_thing)
		itemstack = nether_core.sapling_on_place(itemstack, placer, pointed_thing,
			"nether_core:pine_sapling",
			-- minp, maxp to be checked, relative to sapling pos
			-- minp_relative.y = 1 because sapling pos has been checked
			{x = -2, y = 1, z = -2},
			{x = 2, y = 14, z = 2},
			-- maximum interval of interior volume check
			4)

		return itemstack
	end,
})


minetest.register_node("nether_core:acacia_tree", {
	description = "Acacia Tree",
	tiles = {"nether_core_acacia_tree_top.png", "nether_core_acacia_tree_top.png",
		"nether_core_acacia_tree.png"},
	paramtype2 = "facedir",
	is_ground_content = false,
	groups = {tree = 1, choppy = 2, oddly_breakable_by_hand = 1, flammable = 2},
	sounds = nether_core.node_sound_wood_nether_core(),

	on_place = minetest.rotate_node
})

minetest.register_node("nether_core:acacia_wood", {
	description = "Acacia Wood Planks",
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"nether_core_acacia_wood.png"},
	is_ground_content = false,
	groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2, wood = 1},
	sounds = nether_core.node_sound_wood_nether_core(),
})

minetest.register_node("nether_core:acacia_leaves", {
	description = "Acacia Tree Leaves",
	drawtype = "allfaces_optional",
	tiles = {"nether_core_acacia_leaves.png"},
	special_tiles = {"nether_core_acacia_leaves_simple.png"},
	waving = 1,
	paramtype = "light",
	is_ground_content = false,
	groups = {snappy = 3, leafdecay = 3, flammable = 2, leaves = 1},
	drop = {
		max_items = 1,
		items = {
			{items = {"nether_core:acacia_sapling"}, rarity = 20},
			{items = {"nether_core:acacia_leaves"}}
		}
	},
	sounds = nether_core.node_sound_leaves_nether_core(),

	after_place_node = nether_core.after_place_leaves,
})

minetest.register_node("nether_core:acacia_sapling", {
	description = "Acacia Tree Sapling",
	drawtype = "plantlike",
	tiles = {"nether_core_acacia_sapling.png"},
	inventory_image = "nether_core_acacia_sapling.png",
	wield_image = "nether_core_acacia_sapling.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	on_timer = nether_core.grow_sapling,
	selection_box = {
		type = "fixed",
		fixed = {-4 / 16, -0.5, -4 / 16, 4 / 16, 7 / 16, 4 / 16}
	},
	groups = {snappy = 2, dig_immediate = 3, flammable = 2,
		attached_node = 1, sapling = 1},
	sounds = nether_core.node_sound_leaves_nether_core(),

	on_construct = function(pos)
		minetest.get_node_timer(pos):start(math.random(300, 1500))
	end,

	on_place = function(itemstack, placer, pointed_thing)
		itemstack = nether_core.sapling_on_place(itemstack, placer, pointed_thing,
			"nether_core:acacia_sapling",
			-- minp, maxp to be checked, relative to sapling pos
			-- minp_relative.y = 1 because sapling pos has been checked
			{x = -4, y = 1, z = -4},
			{x = 4, y = 7, z = 4},
			-- maximum interval of interior volume check
			4)

		return itemstack
	end,
})

minetest.register_node("nether_core:aspen_tree", {
	description = "Aspen Tree",
	tiles = {"nether_core_aspen_tree_top.png", "nether_core_aspen_tree_top.png",
		"nether_core_aspen_tree.png"},
	paramtype2 = "facedir",
	is_ground_content = false,
	groups = {tree = 1, choppy = 3, oddly_breakable_by_hand = 1, flammable = 3},
	sounds = nether_core.node_sound_wood_nether_core(),

	on_place = minetest.rotate_node
})

minetest.register_node("nether_core:aspen_wood", {
	description = "Aspen Wood Planks",
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"nether_core_aspen_wood.png"},
	is_ground_content = false,
	groups = {choppy = 3, oddly_breakable_by_hand = 2, flammable = 3, wood = 1},
	sounds = nether_core.node_sound_wood_nether_core(),
})

minetest.register_node("nether_core:aspen_leaves", {
	description = "Aspen Tree Leaves",
	drawtype = "allfaces_optional",
	tiles = {"nether_core_aspen_leaves.png"},
	waving = 1,
	paramtype = "light",
	is_ground_content = false,
	groups = {snappy = 3, leafdecay = 3, flammable = 2, leaves = 1},
	drop = {
		max_items = 1,
		items = {
			{items = {"nether_core:aspen_sapling"}, rarity = 20},
			{items = {"nether_core:aspen_leaves"}}
		}
	},
	sounds = nether_core.node_sound_leaves_nether_core(),

	after_place_node = nether_core.after_place_leaves,
})

minetest.register_node("nether_core:aspen_sapling", {
	description = "Aspen Tree Sapling",
	drawtype = "plantlike",
	tiles = {"nether_core_aspen_sapling.png"},
	inventory_image = "nether_core_aspen_sapling.png",
	wield_image = "nether_core_aspen_sapling.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	on_timer = nether_core.grow_sapling,
	selection_box = {
		type = "fixed",
		fixed = {-3 / 16, -0.5, -3 / 16, 3 / 16, 0.5, 3 / 16}
	},
	groups = {snappy = 2, dig_immediate = 3, flammable = 3,
		attached_node = 1, sapling = 1},
	sounds = nether_core.node_sound_leaves_nether_core(),

	on_construct = function(pos)
		minetest.get_node_timer(pos):start(math.random(300, 1500))
	end,

	on_place = function(itemstack, placer, pointed_thing)
		itemstack = nether_core.sapling_on_place(itemstack, placer, pointed_thing,
			"nether_core:aspen_sapling",
			-- minp, maxp to be checked, relative to sapling pos
			-- minp_relative.y = 1 because sapling pos has been checked
			{x = -2, y = 1, z = -2},
			{x = 2, y = 12, z = 2},
			-- maximum interval of interior volume check
			4)

		return itemstack
	end,
})

--
-- Ores
--

minetest.register_node("nether_core:stone_with_coal", {
	description = "Coal Ore",
	tiles = {"nether_core_stone.png^nether_core_mineral_coal.png"},
	groups = {cracky = 3},
	drop = 'nether_core:coal_lump',
	sounds = nether_core.node_sound_stone_nether_core(),
})

minetest.register_node("nether_core:coalblock", {
	description = "Coal Block",
	tiles = {"nether_core_coal_block.png"},
	is_ground_content = false,
	groups = {cracky = 3},
	sounds = nether_core.node_sound_stone_nether_core(),
})


minetest.register_node("nether_core:stone_with_iron", {
	description = "Iron Ore",
	tiles = {"nether_core_stone.png^nether_core_mineral_iron.png"},
	groups = {cracky = 2},
	drop = 'nether_core:iron_lump',
	sounds = nether_core.node_sound_stone_nether_core(),
})

minetest.register_node("nether_core:steelblock", {
	description = "Steel Block",
	tiles = {"nether_core_steel_block.png"},
	is_ground_content = false,
	groups = {cracky = 1, level = 2},
	sounds = nether_core.node_sound_metal_nether_core(),
})


minetest.register_node("nether_core:stone_with_copper", {
	description = "Copper Ore",
	tiles = {"nether_core_stone.png^nether_core_mineral_copper.png"},
	groups = {cracky = 2},
	drop = 'nether_core:copper_lump',
	sounds = nether_core.node_sound_stone_nether_core(),
})

minetest.register_node("nether_core:copperblock", {
	description = "Copper Block",
	tiles = {"nether_core_copper_block.png"},
	is_ground_content = false,
	groups = {cracky = 1, level = 2},
	sounds = nether_core.node_sound_metal_nether_core(),
})


minetest.register_node("nether_core:stone_with_tin", {
	description = "Tin Ore",
	tiles = {"nether_core_stone.png^nether_core_mineral_tin.png"},
	groups = {cracky = 2},
	drop = "nether_core:tin_lump",
	sounds = nether_core.node_sound_stone_nether_core(),
})

minetest.register_node("nether_core:tinblock", {
	description = "Tin Block",
	tiles = {"nether_core_tin_block.png"},
	is_ground_content = false,
	groups = {cracky = 1, level = 2},
	sounds = nether_core.node_sound_metal_nether_core(),
})


minetest.register_node("nether_core:bronzeblock", {
	description = "Bronze Block",
	tiles = {"nether_core_bronze_block.png"},
	is_ground_content = false,
	groups = {cracky = 1, level = 2},
	sounds = nether_core.node_sound_metal_nether_core(),
})


minetest.register_node("nether_core:stone_with_mese", {
	description = "Mese Ore",
	tiles = {"nether_core_stone.png^nether_core_mineral_mese.png"},
	groups = {cracky = 1},
	drop = "nether_core:mese_crystal",
	sounds = nether_core.node_sound_stone_nether_core(),
})

minetest.register_node("nether_core:mese", {
	description = "Mese Block",
	tiles = {"nether_core_mese_block.png"},
	paramtype = "light",
	groups = {cracky = 1, level = 2},
	sounds = nether_core.node_sound_stone_nether_core(),
	light_source = 3,
})


minetest.register_node("nether_core:stone_with_gold", {
	description = "Gold Ore",
	tiles = {"nether_core_stone.png^nether_core_mineral_gold.png"},
	groups = {cracky = 2},
	drop = "nether_core:gold_lump",
	sounds = nether_core.node_sound_stone_nether_core(),
})

minetest.register_node("nether_core:goldblock", {
	description = "Gold Block",
	tiles = {"nether_core_gold_block.png"},
	is_ground_content = false,
	groups = {cracky = 1},
	sounds = nether_core.node_sound_metal_nether_core(),
})


minetest.register_node("nether_core:stone_with_diamond", {
	description = "Diamond Ore",
	tiles = {"nether_core_stone.png^nether_core_mineral_diamond.png"},
	groups = {cracky = 1},
	drop = "nether_core:diamond",
	sounds = nether_core.node_sound_stone_nether_core(),
})

minetest.register_node("nether_core:diamondblock", {
	description = "Diamond Block",
	tiles = {"nether_core_diamond_block.png"},
	is_ground_content = false,
	groups = {cracky = 1, level = 3},
	sounds = nether_core.node_sound_stone_nether_core(),
})

--
-- Plantlife (non-cubic)
--

minetest.register_node("nether_core:cactus", {
	description = "Cactus",
	tiles = {"nether_core_cactus_top.png", "nether_core_cactus_top.png",
		"nether_core_cactus_side.png"},
	paramtype2 = "facedir",
	groups = {choppy = 3},
	sounds = nether_core.node_sound_wood_nether_core(),
	on_place = minetest.rotate_node,
})

minetest.register_node("nether_core:large_cactus_seedling", {
	description = "Large Cactus Seedling",
	drawtype = "plantlike",
	tiles = {"nether_core_large_cactus_seedling.png"},
	inventory_image = "nether_core_large_cactus_seedling.png",
	wield_image = "nether_core_large_cactus_seedling.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	selection_box = {
		type = "fixed",
		fixed = {
			-5 / 16, -0.5, -5 / 16,
			5 / 16, 0.5, 5 / 16
		}
	},
	groups = {choppy = 3, dig_immediate = 3, attached_node = 1},
	sounds = nether_core.node_sound_wood_nether_core(),

	on_place = function(itemstack, placer, pointed_thing)
		itemstack = nether_core.sapling_on_place(itemstack, placer, pointed_thing,
			"nether_core:large_cactus_seedling",
			{x = -2, y = -1, z = -2},
			{x = 2, y = 5, z = 2},
			4)

		return itemstack
	end,

	on_construct = function(pos)
		-- Normal cactus farming adds 1 cactus node by ABM,
		-- interval 12s, chance 83.
		-- Consider starting with 5 cactus nodes. We make sure that growing a
		-- large cactus is not a faster way to produce new cactus nodes.
		-- Confirmed by experiment, when farming 5 cacti, on average 1 new
		-- cactus node is added on average every
		-- 83 / 5 = 16.6 intervals = 16.6 * 12 = 199.2s.
		-- Large cactus contains on average 14 cactus nodes.
		-- 14 * 199.2 = 2788.8s.
		-- Set random range to average to 2789s.
		minetest.get_node_timer(pos):start(math.random(1859, 3719))
	end,

	on_timer = function(pos)
		local node_under = minetest.get_node_or_nil(
			{x = pos.x, y = pos.y - 1, z = pos.z})
		if not node_under then
			-- Node under not yet loaded, try later
			minetest.get_node_timer(pos):start(300)
			return
		end

		if minetest.get_item_group(node_under.name, "sand") == 0 then
			-- Seedling dies
			minetest.remove_node(pos)
			return
		end

		local light_level = minetest.get_node_light(pos)
		if not light_level or light_level < 13 then
			-- Too dark for growth, try later in case it's night
			minetest.get_node_timer(pos):start(300)
			return
		end

		minetest.log("action", "A large cactus seedling grows into a large" ..
			"cactus at ".. minetest.pos_to_string(pos))
		nether_core.grow_large_cactus(pos)
	end,
})

minetest.register_node("nether_core:papyrus", {
	description = "Papyrus",
	drawtype = "plantlike",
	tiles = {"nether_core_papyrus.png"},
	inventory_image = "nether_core_papyrus.png",
	wield_image = "nether_core_papyrus.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	selection_box = {
		type = "fixed",
		fixed = {-6 / 16, -0.5, -6 / 16, 6 / 16, 0.5, 6 / 16},
	},
	groups = {snappy = 3, flammable = 2},
	sounds = nether_core.node_sound_leaves_nether_core(),

	after_dig_node = function(pos, node, metadata, digger)
		nether_core.dig_up(pos, node, digger)
	end,
})

minetest.register_node("nether_core:dry_shrub", {
	description = "Dry Shrub",
	drawtype = "plantlike",
	waving = 1,
	tiles = {"nether_core_dry_shrub.png"},
	inventory_image = "nether_core_dry_shrub.png",
	wield_image = "nether_core_dry_shrub.png",
	paramtype = "light",
	paramtype2 = "meshoptions",
	place_param2 = 4,
	sunlight_propagates = true,
	walkable = false,
	buildable_to = true,
	groups = {snappy = 3, flammable = 3, attached_node = 1},
	sounds = nether_core.node_sound_leaves_nether_core(),
	selection_box = {
		type = "fixed",
		fixed = {-6 / 16, -0.5, -6 / 16, 6 / 16, 4 / 16, 6 / 16},
	},
})

minetest.register_node("nether_core:junglegrass", {
	description = "Jungle Grass",
	drawtype = "plantlike",
	waving = 1,
	visual_scale = 1.69,
	tiles = {"nether_core_junglegrass.png"},
	inventory_image = "nether_core_junglegrass.png",
	wield_image = "nether_core_junglegrass.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	buildable_to = true,
	groups = {snappy = 3, flora = 1, attached_node = 1, flammable = 1},
	sounds = nether_core.node_sound_leaves_nether_core(),
	selection_box = {
		type = "fixed",
		fixed = {-6 / 16, -0.5, -6 / 16, 6 / 16, 0.5, 6 / 16},
	},
})


minetest.register_node("nether_core:grass_1", {
	description = "Grass",
	drawtype = "plantlike",
	waving = 1,
	tiles = {"nether_core_grass_1.png"},
	-- Use texture of a taller grass stage in inventory
	inventory_image = "nether_core_grass_3.png",
	wield_image = "nether_core_grass_3.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	buildable_to = true,
	groups = {snappy = 3, flora = 1, attached_node = 1, grass = 1, flammable = 1},
	sounds = nether_core.node_sound_leaves_nether_core(),
	selection_box = {
		type = "fixed",
		fixed = {-6 / 16, -0.5, -6 / 16, 6 / 16, -5 / 16, 6 / 16},
	},

	on_place = function(itemstack, placer, pointed_thing)
		-- place a random grass node
		local stack = ItemStack("nether_core:grass_" .. math.random(1,5))
		local ret = minetest.item_place(stack, placer, pointed_thing)
		return ItemStack("nether_core:grass_1 " ..
			itemstack:get_count() - (1 - ret:get_count()))
	end,
})

for i = 2, 5 do
	minetest.register_node("nether_core:grass_" .. i, {
		description = "Grass",
		drawtype = "plantlike",
		waving = 1,
		tiles = {"nether_core_grass_" .. i .. ".png"},
		inventory_image = "nether_core_grass_" .. i .. ".png",
		wield_image = "nether_core_grass_" .. i .. ".png",
		paramtype = "light",
		sunlight_propagates = true,
		walkable = false,
		buildable_to = true,
		drop = "nether_core:grass_1",
		groups = {snappy = 3, flora = 1, attached_node = 1,
			not_in_creative_inventory = 1, grass = 1, flammable = 1},
		sounds = nether_core.node_sound_leaves_nether_core(),
		selection_box = {
			type = "fixed",
			fixed = {-6 / 16, -0.5, -6 / 16, 6 / 16, -3 / 16, 6 / 16},
		},
	})
end


minetest.register_node("nether_core:dry_grass_1", {
	description = "Dry Grass",
	drawtype = "plantlike",
	waving = 1,
	tiles = {"nether_core_dry_grass_1.png"},
	inventory_image = "nether_core_dry_grass_3.png",
	wield_image = "nether_core_dry_grass_3.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	buildable_to = true,
	groups = {snappy = 3, flammable = 3, flora = 1,
		attached_node = 1, dry_grass = 1},
	sounds = nether_core.node_sound_leaves_nether_core(),
	selection_box = {
		type = "fixed",
		fixed = {-6 / 16, -0.5, -6 / 16, 6 / 16, -3 / 16, 6 / 16},
	},

	on_place = function(itemstack, placer, pointed_thing)
		-- place a random dry grass node
		local stack = ItemStack("nether_core:dry_grass_" .. math.random(1, 5))
		local ret = minetest.item_place(stack, placer, pointed_thing)
		return ItemStack("nether_core:dry_grass_1 " ..
			itemstack:get_count() - (1 - ret:get_count()))
	end,
})

for i = 2, 5 do
	minetest.register_node("nether_core:dry_grass_" .. i, {
		description = "Dry Grass",
		drawtype = "plantlike",
		waving = 1,
		tiles = {"nether_core_dry_grass_" .. i .. ".png"},
		inventory_image = "nether_core_dry_grass_" .. i .. ".png",
		wield_image = "nether_core_dry_grass_" .. i .. ".png",
		paramtype = "light",
		sunlight_propagates = true,
		walkable = false,
		buildable_to = true,
		groups = {snappy = 3, flammable = 3, flora = 1, attached_node = 1,
			not_in_creative_inventory=1, dry_grass = 1},
		drop = "nether_core:dry_grass_1",
		sounds = nether_core.node_sound_leaves_nether_core(),
		selection_box = {
			type = "fixed",
			fixed = {-6 / 16, -0.5, -6 / 16, 6 / 16, -1 / 16, 6 / 16},
		},
	})
end


minetest.register_node("nether_core:fern_1", {
	description = "Fern",
	drawtype = "plantlike",
	waving = 1,
	tiles = {"nether_core_fern_1.png"},
	inventory_image = "nether_core_fern_1.png",
	wield_image = "nether_core_fern_1.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	buildable_to = true,
	groups = {snappy = 3, flammable = 3, flora = 1, attached_node = 1},
	sounds = nether_core.node_sound_leaves_nether_core(),
	selection_box = {
		type = "fixed",
		fixed = {-6 / 16, -0.5, -6 / 16, 6 / 16, -0.25, 6 / 16},
	},

	on_place = function(itemstack, placer, pointed_thing)
		-- place a random fern node
		local stack = ItemStack("nether_core:fern_" .. math.random(1, 3))
		local ret = minetest.item_place(stack, placer, pointed_thing)
		return ItemStack("nether_core:fern_1 " ..
			itemstack:get_count() - (1 - ret:get_count()))
	end,
})

for i = 2, 3 do
	minetest.register_node("nether_core:fern_" .. i, {
		description = "Fern",
		drawtype = "plantlike",
		waving = 1,
		visual_scale = 2,
		tiles = {"nether_core_fern_" .. i .. ".png"},
		inventory_image = "nether_core_fern_" .. i .. ".png",
		wield_image = "nether_core_fern_" .. i .. ".png",
		paramtype = "light",
		sunlight_propagates = true,
		walkable = false,
		buildable_to = true,
		groups = {snappy = 3, flammable = 3, flora = 1, attached_node = 1,
			not_in_creative_inventory=1},
		drop = "nether_core:fern_1",
		sounds = nether_core.node_sound_leaves_nether_core(),
		selection_box = {
			type = "fixed",
			fixed = {-6 / 16, -0.5, -6 / 16, 6 / 16, -0.25, 6 / 16},
		},
	})
end


minetest.register_node("nether_core:marram_grass_1", {
	description = "Marram Grass",
	drawtype = "plantlike",
	waving = 1,
	tiles = {"nether_core_marram_grass_1.png"},
	inventory_image = "nether_core_marram_grass_1.png",
	wield_image = "nether_core_marram_grass_1.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	buildable_to = true,
	groups = {snappy = 3, flammable = 3, attached_node = 1},
	sounds = nether_core.node_sound_leaves_nether_core(),
	selection_box = {
		type = "fixed",
		fixed = {-6 / 16, -0.5, -6 / 16, 6 / 16, -0.25, 6 / 16},
	},

	on_place = function(itemstack, placer, pointed_thing)
		-- place a random marram grass node
		local stack = ItemStack("nether_core:marram_grass_" .. math.random(1, 3))
		local ret = minetest.item_place(stack, placer, pointed_thing)
		return ItemStack("nether_core:marram_grass_1 " ..
			itemstack:get_count() - (1 - ret:get_count()))
	end,
})

for i = 2, 3 do
	minetest.register_node("nether_core:marram_grass_" .. i, {
		description = "Marram Grass",
		drawtype = "plantlike",
		waving = 1,
		tiles = {"nether_core_marram_grass_" .. i .. ".png"},
		inventory_image = "nether_core_marram_grass_" .. i .. ".png",
		wield_image = "nether_core_marram_grass_" .. i .. ".png",
		paramtype = "light",
		sunlight_propagates = true,
		walkable = false,
		buildable_to = true,
		groups = {snappy = 3, flammable = 3, attached_node = 1,
			not_in_creative_inventory=1},
		drop = "nether_core:marram_grass_1",
		sounds = nether_core.node_sound_leaves_nether_core(),
		selection_box = {
			type = "fixed",
			fixed = {-6 / 16, -0.5, -6 / 16, 6 / 16, -0.25, 6 / 16},
		},
	})
end


minetest.register_node("nether_core:bush_stem", {
	description = "Bush Stem",
	drawtype = "plantlike",
	visual_scale = 1.41,
	tiles = {"nether_core_bush_stem.png"},
	inventory_image = "nether_core_bush_stem.png",
	wield_image = "nether_core_bush_stem.png",
	paramtype = "light",
	sunlight_propagates = true,
	groups = {choppy = 2, oddly_breakable_by_hand = 1, flammable = 2},
	sounds = nether_core.node_sound_wood_nether_core(),
	selection_box = {
		type = "fixed",
		fixed = {-7 / 16, -0.5, -7 / 16, 7 / 16, 0.5, 7 / 16},
	},
})

minetest.register_node("nether_core:bush_leaves", {
	description = "Bush Leaves",
	drawtype = "allfaces_optional",
	waving = 1,
	tiles = {"nether_core_leaves_simple.png"},
	paramtype = "light",
	groups = {snappy = 3, flammable = 2, leaves = 1},
	drop = {
		max_items = 1,
		items = {
			{items = {"nether_core:bush_sapling"}, rarity = 5},
			{items = {"nether_core:bush_leaves"}}
		}
	},
	sounds = nether_core.node_sound_leaves_nether_core(),

	after_place_node = nether_core.after_place_leaves,
})

minetest.register_node("nether_core:bush_sapling", {
	description = "Bush Sapling",
	drawtype = "plantlike",
	tiles = {"nether_core_bush_sapling.png"},
	inventory_image = "nether_core_bush_sapling.png",
	wield_image = "nether_core_bush_sapling.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	on_timer = nether_core.grow_sapling,
	selection_box = {
		type = "fixed",
		fixed = {-4 / 16, -0.5, -4 / 16, 4 / 16, 2 / 16, 4 / 16}
	},
	groups = {snappy = 2, dig_immediate = 3, flammable = 2,
		attached_node = 1, sapling = 1},
	sounds = nether_core.node_sound_leaves_nether_core(),

	on_construct = function(pos)
		minetest.get_node_timer(pos):start(math.random(300, 1500))
	end,

	on_place = function(itemstack, placer, pointed_thing)
		itemstack = nether_core.sapling_on_place(itemstack, placer, pointed_thing,
			"nether_core:bush_sapling",
			-- minp, maxp to be checked, relative to sapling pos
			{x = -1, y = 0, z = -1},
			{x = 1, y = 1, z = 1},
			-- maximum interval of interior volume check
			2)

		return itemstack
	end,
})

minetest.register_node("nether_core:blueberry_bush_leaves_with_berries", {
	description = "Blueberry Bush Leaves with Berries",
	drawtype = "allfaces_optional",
	waving = 1,
	tiles = {"nether_core_blueberry_bush_leaves.png^nether_core_blueberry_overlay.png"},
	paramtype = "light",
	groups = {snappy = 3, flammable = 2, leaves = 1, dig_immediate = 3},
	drop = "nether_core:blueberries",
	sounds = nether_core.node_sound_leaves_nether_core(),
	node_dig_prediction = "nether_core:blueberry_bush_leaves",

	after_dig_node = function(pos, oldnode, oldmetadata, digger)
		minetest.set_node(pos, {name = "nether_core:blueberry_bush_leaves"})
		minetest.get_node_timer(pos):start(math.random(300, 1500))
	end,
})

minetest.register_node("nether_core:blueberry_bush_leaves", {
	description = "Blueberry Bush Leaves",
	drawtype = "allfaces_optional",
	waving = 1,
	tiles = {"nether_core_blueberry_bush_leaves.png"},
	paramtype = "light",
	groups = {snappy = 3, flammable = 2, leaves = 1},
	drop = {
		max_items = 1,
		items = {
			{items = {"nether_core:blueberry_bush_sapling"}, rarity = 5},
			{items = {"nether_core:blueberry_bush_leaves"}}
		}
	},
	sounds = nether_core.node_sound_leaves_nether_core(),

	on_timer = function(pos, elapsed)
		if minetest.get_node_light(pos) < 11 then
			minetest.get_node_timer(pos):start(200)
		else
			minetest.set_node(pos, {name = "nether_core:blueberry_bush_leaves_with_berries"})
		end
	end,

	after_place_node = nether_core.after_place_leaves,
})

minetest.register_node("nether_core:blueberry_bush_sapling", {
	description = "Blueberry Bush Sapling",
	drawtype = "plantlike",
	tiles = {"nether_core_blueberry_bush_sapling.png"},
	inventory_image = "nether_core_blueberry_bush_sapling.png",
	wield_image = "nether_core_blueberry_bush_sapling.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	on_timer = nether_core.grow_sapling,
	selection_box = {
		type = "fixed",
		fixed = {-4 / 16, -0.5, -4 / 16, 4 / 16, 2 / 16, 4 / 16}
	},
	groups = {snappy = 2, dig_immediate = 3, flammable = 2,
		attached_node = 1, sapling = 1},
	sounds = nether_core.node_sound_leaves_nether_core(),

	on_construct = function(pos)
		minetest.get_node_timer(pos):start(math.random(300, 1500))
	end,

	on_place = function(itemstack, placer, pointed_thing)
		itemstack = nether_core.sapling_on_place(itemstack, placer, pointed_thing,
			"nether_core:blueberry_bush_sapling",
			-- minp, maxp to be checked, relative to sapling pos
			{x = -1, y = 0, z = -1},
			{x = 1, y = 1, z = 1},
			-- maximum interval of interior volume check
			2)

		return itemstack
	end,
})

minetest.register_node("nether_core:acacia_bush_stem", {
	description = "Acacia Bush Stem",
	drawtype = "plantlike",
	visual_scale = 1.41,
	tiles = {"nether_core_acacia_bush_stem.png"},
	inventory_image = "nether_core_acacia_bush_stem.png",
	wield_image = "nether_core_acacia_bush_stem.png",
	paramtype = "light",
	sunlight_propagates = true,
	groups = {choppy = 2, oddly_breakable_by_hand = 1, flammable = 2},
	sounds = nether_core.node_sound_wood_nether_core(),
	selection_box = {
		type = "fixed",
		fixed = {-7 / 16, -0.5, -7 / 16, 7 / 16, 0.5, 7 / 16},
	},
})

minetest.register_node("nether_core:acacia_bush_leaves", {
	description = "Acacia Bush Leaves",
	drawtype = "allfaces_optional",
	waving = 1,
	tiles = {"nether_core_acacia_leaves_simple.png"},
	paramtype = "light",
	groups = {snappy = 3, flammable = 2, leaves = 1},
	drop = {
		max_items = 1,
		items = {
			{items = {"nether_core:acacia_bush_sapling"}, rarity = 5},
			{items = {"nether_core:acacia_bush_leaves"}}
		}
	},
	sounds = nether_core.node_sound_leaves_nether_core(),

	after_place_node = nether_core.after_place_leaves,
})

minetest.register_node("nether_core:acacia_bush_sapling", {
	description = "Acacia Bush Sapling",
	drawtype = "plantlike",
	tiles = {"nether_core_acacia_bush_sapling.png"},
	inventory_image = "nether_core_acacia_bush_sapling.png",
	wield_image = "nether_core_acacia_bush_sapling.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	on_timer = nether_core.grow_sapling,
	selection_box = {
		type = "fixed",
		fixed = {-3 / 16, -0.5, -3 / 16, 3 / 16, 2 / 16, 3 / 16}
	},
	groups = {snappy = 2, dig_immediate = 3, flammable = 2,
		attached_node = 1, sapling = 1},
	sounds = nether_core.node_sound_leaves_nether_core(),

	on_construct = function(pos)
		minetest.get_node_timer(pos):start(math.random(300, 1500))
	end,

	on_place = function(itemstack, placer, pointed_thing)
		itemstack = nether_core.sapling_on_place(itemstack, placer, pointed_thing,
			"nether_core:acacia_bush_sapling",
			-- minp, maxp to be checked, relative to sapling pos
			{x = -1, y = 0, z = -1},
			{x = 1, y = 1, z = 1},
			-- maximum interval of interior volume check
			2)

		return itemstack
	end,
})

minetest.register_node("nether_core:pine_bush_stem", {
	description = "Pine Bush Stem",
	drawtype = "plantlike",
	visual_scale = 1.41,
	tiles = {"nether_core_pine_bush_stem.png"},
	inventory_image = "nether_core_pine_bush_stem.png",
	wield_image = "nether_core_pine_bush_stem.png",
	paramtype = "light",
	sunlight_propagates = true,
	groups = {choppy = 2, oddly_breakable_by_hand = 1, flammable = 2},
	sounds = nether_core.node_sound_wood_nether_core(),
	selection_box = {
		type = "fixed",
		fixed = {-7 / 16, -0.5, -7 / 16, 7 / 16, 0.5, 7 / 16},
	},
})

minetest.register_node("nether_core:pine_bush_needles", {
	description = "Pine Bush Needles",
	drawtype = "allfaces_optional",
	waving = 1,
	tiles = {"nether_core_pine_needles.png"},
	paramtype = "light",
	groups = {snappy = 3, flammable = 2, leaves = 1},
	drop = {
		max_items = 1,
		items = {
			{items = {"nether_core:pine_bush_sapling"}, rarity = 5},
			{items = {"nether_core:pine_bush_needles"}}
		}
	},
	sounds = nether_core.node_sound_leaves_nether_core(),

	after_place_node = nether_core.after_place_leaves,
})

minetest.register_node("nether_core:pine_bush_sapling", {
	description = "Pine Bush Sapling",
	drawtype = "plantlike",
	tiles = {"nether_core_pine_bush_sapling.png"},
	inventory_image = "nether_core_pine_bush_sapling.png",
	wield_image = "nether_core_pine_bush_sapling.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	on_timer = nether_core.grow_sapling,
	selection_box = {
		type = "fixed",
		fixed = {-4 / 16, -0.5, -4 / 16, 4 / 16, 2 / 16, 4 / 16}
	},
	groups = {snappy = 2, dig_immediate = 3, flammable = 2,
		attached_node = 1, sapling = 1},
	sounds = nether_core.node_sound_leaves_nether_core(),

	on_construct = function(pos)
		minetest.get_node_timer(pos):start(math.random(300, 1500))
	end,

	on_place = function(itemstack, placer, pointed_thing)
		itemstack = nether_core.sapling_on_place(itemstack, placer, pointed_thing,
			"nether_core:pine_bush_sapling",
			-- minp, maxp to be checked, relative to sapling pos
			{x = -1, y = 0, z = -1},
			{x = 1, y = 1, z = 1},
			-- maximum interval of interior volume check
			2)

		return itemstack
	end,
})

minetest.register_node("nether_core:sand_with_kelp", {
	description = "Kelp",
	drawtype = "plantlike_rooted",
	waving = 1,
	tiles = {"nether_core_sand.png"},
	special_tiles = {{name = "nether_core_kelp.png", tileable_vertical = true}},
	inventory_image = "nether_core_kelp.png",
	paramtype = "light",
	paramtype2 = "leveled",
	groups = {snappy = 3},
	selection_box = {
		type = "fixed",
		fixed = {
				{-0.5, -0.5, -0.5, 0.5, 0.5, 0.5},
				{-2/16, 0.5, -2/16, 2/16, 3.5, 2/16},
		},
	},
	node_dig_prediction = "nether_core:sand",
	node_placement_prediction = "",
	sounds = nether_core.node_sound_sand_nether_core({
		dig = {name = "nether_core_dig_snappy", gain = 0.2},
		dug = {name = "nether_core_grass_footstep", gain = 0.25},
	}),

	on_place = function(itemstack, placer, pointed_thing)
		-- Call on_rightclick if the pointed node defines it
		if pointed_thing.type == "node" and placer and
				not placer:get_player_control().sneak then
			local node_ptu = minetest.get_node(pointed_thing.under)
			local def_ptu = minetest.registered_nodes[node_ptu.name]
			if def_ptu and def_ptu.on_rightclick then
				return def_ptu.on_rightclick(pointed_thing.under, node_ptu, placer,
					itemstack, pointed_thing)
			end
		end

		local pos = pointed_thing.under
		if minetest.get_node(pos).name ~= "nether_core:sand" then
			return itemstack
		end

		local height = math.random(4, 6)
		local pos_top = {x = pos.x, y = pos.y + height, z = pos.z}
		local node_top = minetest.get_node(pos_top)
		local def_top = minetest.registered_nodes[node_top.name]
		local player_name = placer:get_player_name()

		if def_top and def_top.liquidtype == "source" and
				minetest.get_item_group(node_top.name, "water") > 0 then
			if not minetest.is_protected(pos, player_name) and
					not minetest.is_protected(pos_top, player_name) then
				minetest.set_node(pos, {name = "nether_core:sand_with_kelp",
					param2 = height * 16})
				if not (creative and creative.is_enabled_for
						and creative.is_enabled_for(player_name)) then
					itemstack:take_item()
				end
			else
				minetest.chat_send_player(player_name, "Node is protected")
				minetest.record_protection_violation(pos, player_name)
			end
		end

		return itemstack
	end,

	after_destruct  = function(pos, oldnode)
		minetest.set_node(pos, {name = "nether_core:sand"})
	end
})


--
-- Corals
--

minetest.register_node("nether_core:coral_green", {
	description = "Green Coral",
	drawtype = "plantlike_rooted",
	waving = 1,
	paramtype = "light",
	tiles = {"nether_core_coral_skeleton.png"},
	special_tiles = {{name = "nether_core_coral_green.png", tileable_vertical = true}},
	inventory_image = "nether_core_coral_green.png",
	groups = {snappy = 3},
	selection_box = {
		type = "fixed",
		fixed = {
				{-0.5, -0.5, -0.5, 0.5, 0.5, 0.5},
				{-4/16, 0.5, -4/16, 4/16, 1.5, 4/16},
		},
	},
	node_dig_prediction = "nether_core:coral_skeleton",
	node_placement_prediction = "",
	sounds = nether_core.node_sound_stone_nether_core({
		dig = {name = "nether_core_dig_snappy", gain = 0.2},
		dug = {name = "nether_core_grass_footstep", gain = 0.25},
	}),

	on_place = function(itemstack, placer, pointed_thing)
		if pointed_thing.type ~= "node" or not placer then
			return itemstack
		end

		local player_name = placer:get_player_name()
		local pos_under = pointed_thing.under
		local pos_above = pointed_thing.above

		if minetest.get_node(pos_under).name ~= "nether_core:coral_skeleton" or
				minetest.get_node(pos_above).name ~= "nether_core:water_source" then
			return itemstack
		end

		if minetest.is_protected(pos_under, player_name) or
				minetest.is_protected(pos_above, player_name) then
			minetest.chat_send_player(player_name, "Node is protected")
			minetest.record_protection_violation(pos_under, player_name)
			return itemstack
		end

		minetest.set_node(pos_under, {name = "nether_core:coral_green"})
		if not (creative and creative.is_enabled_for(player_name)) then
			itemstack:take_item()
		end

		return itemstack
	end,

	after_destruct  = function(pos, oldnode)
		minetest.set_node(pos, {name = "nether_core:coral_skeleton"})
	end,
})

minetest.register_node("nether_core:coral_pink", {
	description = "Pink Coral",
	drawtype = "plantlike_rooted",
	waving = 1,
	paramtype = "light",
	tiles = {"nether_core_coral_skeleton.png"},
	special_tiles = {{name = "nether_core_coral_pink.png", tileable_vertical = true}},
	inventory_image = "nether_core_coral_pink.png",
	groups = {snappy = 3},
	selection_box = {
		type = "fixed",
		fixed = {
				{-0.5, -0.5, -0.5, 0.5, 0.5, 0.5},
				{-4/16, 0.5, -4/16, 4/16, 1.5, 4/16},
		},
	},
	node_dig_prediction = "nether_core:coral_skeleton",
	node_placement_prediction = "",
	sounds = nether_core.node_sound_stone_nether_core({
		dig = {name = "nether_core_dig_snappy", gain = 0.2},
		dug = {name = "nether_core_grass_footstep", gain = 0.25},
	}),

	on_place = function(itemstack, placer, pointed_thing)
		if pointed_thing.type ~= "node" or not placer then
			return itemstack
		end

		local player_name = placer:get_player_name()
		local pos_under = pointed_thing.under
		local pos_above = pointed_thing.above

		if minetest.get_node(pos_under).name ~= "nether_core:coral_skeleton" or
				minetest.get_node(pos_above).name ~= "nether_core:water_source" then
			return itemstack
		end

		if minetest.is_protected(pos_under, player_name) or
				minetest.is_protected(pos_above, player_name) then
			minetest.chat_send_player(player_name, "Node is protected")
			minetest.record_protection_violation(pos_under, player_name)
			return itemstack
		end

		minetest.set_node(pos_under, {name = "nether_core:coral_pink"})
		if not (creative and creative.is_enabled_for(player_name)) then
			itemstack:take_item()
		end

		return itemstack
	end,

	after_destruct  = function(pos, oldnode)
		minetest.set_node(pos, {name = "nether_core:coral_skeleton"})
	end,
})

minetest.register_node("nether_core:coral_cyan", {
	description = "Cyan Coral",
	drawtype = "plantlike_rooted",
	waving = 1,
	paramtype = "light",
	tiles = {"nether_core_coral_skeleton.png"},
	special_tiles = {{name = "nether_core_coral_cyan.png", tileable_vertical = true}},
	inventory_image = "nether_core_coral_cyan.png",
	groups = {snappy = 3},
	selection_box = {
		type = "fixed",
		fixed = {
				{-0.5, -0.5, -0.5, 0.5, 0.5, 0.5},
				{-4/16, 0.5, -4/16, 4/16, 1.5, 4/16},
		},
	},
	node_dig_prediction = "nether_core:coral_skeleton",
	node_placement_prediction = "",
	sounds = nether_core.node_sound_stone_nether_core({
		dig = {name = "nether_core_dig_snappy", gain = 0.2},
		dug = {name = "nether_core_grass_footstep", gain = 0.25},
	}),

	on_place = function(itemstack, placer, pointed_thing)
		if pointed_thing.type ~= "node" or not placer then
			return itemstack
		end

		local player_name = placer:get_player_name()
		local pos_under = pointed_thing.under
		local pos_above = pointed_thing.above

		if minetest.get_node(pos_under).name ~= "nether_core:coral_skeleton" or
				minetest.get_node(pos_above).name ~= "nether_core:water_source" then
			return itemstack
		end

		if minetest.is_protected(pos_under, player_name) or
				minetest.is_protected(pos_above, player_name) then
			minetest.chat_send_player(player_name, "Node is protected")
			minetest.record_protection_violation(pos_under, player_name)
			return itemstack
		end

		minetest.set_node(pos_under, {name = "nether_core:coral_cyan"})
		if not (creative and creative.is_enabled_for(player_name)) then
			itemstack:take_item()
		end

		return itemstack
	end,

	after_destruct  = function(pos, oldnode)
		minetest.set_node(pos, {name = "nether_core:coral_skeleton"})
	end,
})

minetest.register_node("nether_core:coral_brown", {
	description = "Brown Coral",
	tiles = {"nether_core_coral_brown.png"},
	groups = {cracky = 3},
	drop = "nether_core:coral_skeleton",
	sounds = nether_core.node_sound_stone_nether_core(),
})

minetest.register_node("nether_core:coral_orange", {
	description = "Orange Coral",
	tiles = {"nether_core_coral_orange.png"},
	groups = {cracky = 3},
	drop = "nether_core:coral_skeleton",
	sounds = nether_core.node_sound_stone_nether_core(),
})

minetest.register_node("nether_core:coral_skeleton", {
	description = "Coral Skeleton",
	tiles = {"nether_core_coral_skeleton.png"},
	groups = {cracky = 3},
	sounds = nether_core.node_sound_stone_nether_core(),
})


--
-- Liquids
--

minetest.register_node("nether_core:water_source", {
	description = "Water Source",
	drawtype = "liquid",
	tiles = {
		{
			name = "nether_core_water_source_animated.png",
			backface_culling = false,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 2.0,
			},
		},
		{
			name = "nether_core_water_source_animated.png",
			backface_culling = true,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 2.0,
			},
		},
	},
	alpha = 160,
	paramtype = "light",
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	is_ground_content = false,
	drop = "",
	drowning = 1,
	liquidtype = "source",
	liquid_alternative_flowing = "nether_core:water_flowing",
	liquid_alternative_source = "nether_core:water_source",
	liquid_viscosity = 1,
	post_effect_color = {a = 103, r = 30, g = 60, b = 90},
	groups = {water = 3, liquid = 3, cools_lava = 1},
	sounds = nether_core.node_sound_water_nether_core(),
})

minetest.register_node("nether_core:water_flowing", {
	description = "Flowing Water",
	drawtype = "flowingliquid",
	tiles = {"nether_core_water.png"},
	special_tiles = {
		{
			name = "nether_core_water_flowing_animated.png",
			backface_culling = false,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 0.8,
			},
		},
		{
			name = "nether_core_water_flowing_animated.png",
			backface_culling = true,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 0.8,
			},
		},
	},
	alpha = 160,
	paramtype = "light",
	paramtype2 = "flowingliquid",
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	is_ground_content = false,
	drop = "",
	drowning = 1,
	liquidtype = "flowing",
	liquid_alternative_flowing = "nether_core:water_flowing",
	liquid_alternative_source = "nether_core:water_source",
	liquid_viscosity = 1,
	post_effect_color = {a = 103, r = 30, g = 60, b = 90},
	groups = {water = 3, liquid = 3, not_in_creative_inventory = 1,
		cools_lava = 1},
	sounds = nether_core.node_sound_water_nether_core(),
})


minetest.register_node("nether_core:river_water_source", {
	description = "River Water Source",
	drawtype = "liquid",
	tiles = {
		{
			name = "nether_core_river_water_source_animated.png",
			backface_culling = false,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 2.0,
			},
		},
		{
			name = "nether_core_river_water_source_animated.png",
			backface_culling = true,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 2.0,
			},
		},
	},
	alpha = 160,
	paramtype = "light",
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	is_ground_content = false,
	drop = "",
	drowning = 1,
	liquidtype = "source",
	liquid_alternative_flowing = "nether_core:river_water_flowing",
	liquid_alternative_source = "nether_core:river_water_source",
	liquid_viscosity = 1,
	-- Not renewable to avoid horizontal spread of water sources in sloping
	-- rivers that can cause water to overflow riverbanks and cause floods.
	-- River water source is instead made renewable by the 'force renew'
	-- option used in the 'bucket' mod by the river water bucket.
	liquid_renewable = false,
	liquid_range = 2,
	post_effect_color = {a = 103, r = 30, g = 76, b = 90},
	groups = {water = 3, liquid = 3, cools_lava = 1},
	sounds = nether_core.node_sound_water_nether_core(),
})

minetest.register_node("nether_core:river_water_flowing", {
	description = "Flowing River Water",
	drawtype = "flowingliquid",
	tiles = {"nether_core_river_water.png"},
	special_tiles = {
		{
			name = "nether_core_river_water_flowing_animated.png",
			backface_culling = false,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 0.8,
			},
		},
		{
			name = "nether_core_river_water_flowing_animated.png",
			backface_culling = true,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 0.8,
			},
		},
	},
	alpha = 160,
	paramtype = "light",
	paramtype2 = "flowingliquid",
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	is_ground_content = false,
	drop = "",
	drowning = 1,
	liquidtype = "flowing",
	liquid_alternative_flowing = "nether_core:river_water_flowing",
	liquid_alternative_source = "nether_core:river_water_source",
	liquid_viscosity = 1,
	liquid_renewable = false,
	liquid_range = 2,
	post_effect_color = {a = 103, r = 30, g = 76, b = 90},
	groups = {water = 3, liquid = 3, not_in_creative_inventory = 1,
		cools_lava = 1},
	sounds = nether_core.node_sound_water_nether_core(),
})


minetest.register_node("nether_core:lava_source", {
	description = "Lava Source",
	drawtype = "liquid",
	tiles = {
		{
			name = "nether_core_lava_source_animated.png",
			backface_culling = false,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 3.0,
			},
		},
		{
			name = "nether_core_lava_source_animated.png",
			backface_culling = true,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 3.0,
			},
		},
	},
	paramtype = "light",
	light_source = nether_core.LIGHT_MAX - 1,
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	is_ground_content = false,
	drop = "",
	drowning = 1,
	liquidtype = "source",
	liquid_alternative_flowing = "nether_core:lava_flowing",
	liquid_alternative_source = "nether_core:lava_source",
	liquid_viscosity = 7,
	liquid_renewable = false,
	damage_per_second = 4 * 2,
	post_effect_color = {a = 191, r = 255, g = 64, b = 0},
	groups = {lava = 3, liquid = 2, igniter = 1},
})

minetest.register_node("nether_core:lava_flowing", {
	description = "Flowing Lava",
	drawtype = "flowingliquid",
	tiles = {"nether_core_lava.png"},
	special_tiles = {
		{
			name = "nether_core_lava_flowing_animated.png",
			backface_culling = false,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 3.3,
			},
		},
		{
			name = "nether_core_lava_flowing_animated.png",
			backface_culling = true,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 3.3,
			},
		},
	},
	paramtype = "light",
	paramtype2 = "flowingliquid",
	light_source = nether_core.LIGHT_MAX - 1,
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	is_ground_content = false,
	drop = "",
	drowning = 1,
	liquidtype = "flowing",
	liquid_alternative_flowing = "nether_core:lava_flowing",
	liquid_alternative_source = "nether_core:lava_source",
	liquid_viscosity = 7,
	liquid_renewable = false,
	damage_per_second = 4 * 2,
	post_effect_color = {a = 191, r = 255, g = 64, b = 0},
	groups = {lava = 3, liquid = 2, igniter = 1,
		not_in_creative_inventory = 1},
})

--
-- Tools / "Advanced" crafting / Non-"natural"
--

local bookshelf_formspec =
	"size[8,7;]" ..
	"list[context;books;0,0.3;8,2;]" ..
	"list[current_player;main;0,2.85;8,1;]" ..
	"list[current_player;main;0,4.08;8,3;8]" ..
	"listring[context;books]" ..
	"listring[current_player;main]" ..
	nether_core.get_hotbar_bg(0,2.85)

local function update_bookshelf(pos)
	local meta = minetest.get_meta(pos)
	local inv = meta:get_inventory()
	local invlist = inv:get_list("books")

	local formspec = bookshelf_formspec
	-- Inventory slots overlay
	local bx, by = 0, 0.3
	local n_written, n_empty = 0, 0
	for i = 1, 16 do
		if i == 9 then
			bx = 0
			by = by + 1
		end
		local stack = invlist[i]
		if stack:is_empty() then
			formspec = formspec ..
				"image[" .. bx .. "," .. by .. ";1,1;nether_core_bookshelf_slot.png]"
		else
			local metatable = stack:get_meta():to_table() or {}
			if metatable.fields and metatable.fields.text then
				n_written = n_written + stack:get_count()
			else
				n_empty = n_empty + stack:get_count()
			end
		end
		bx = bx + 1
	end
	meta:set_string("formspec", formspec)
	if n_written + n_empty == 0 then
		meta:set_string("infotext", "Empty Bookshelf")
	else
		meta:set_string("infotext", "Bookshelf (" .. n_written ..
			" written, " .. n_empty .. " empty books)")
	end
end

minetest.register_node("nether_core:bookshelf", {
	description = "Bookshelf",
	tiles = {"nether_core_wood.png", "nether_core_wood.png", "nether_core_wood.png",
		"nether_core_wood.png", "nether_core_bookshelf.png", "nether_core_bookshelf.png"},
	paramtype2 = "facedir",
	is_ground_content = false,
	groups = {choppy = 3, oddly_breakable_by_hand = 2, flammable = 3},
	sounds = nether_core.node_sound_wood_nether_core(),

	on_construct = function(pos)
		local meta = minetest.get_meta(pos)
		local inv = meta:get_inventory()
		inv:set_size("books", 8 * 2)
		update_bookshelf(pos)
	end,
	can_dig = function(pos,player)
		local inv = minetest.get_meta(pos):get_inventory()
		return inv:is_empty("books")
	end,
	allow_metadata_inventory_put = function(pos, listname, index, stack)
		if minetest.get_item_group(stack:get_name(), "book") ~= 0 then
			return stack:get_count()
		end
		return 0
	end,
	on_metadata_inventory_move = function(pos, from_list, from_index, to_list, to_index, count, player)
		minetest.log("action", player:get_player_name() ..
			" moves stuff in bookshelf at " .. minetest.pos_to_string(pos))
		update_bookshelf(pos)
	end,
	on_metadata_inventory_put = function(pos, listname, index, stack, player)
		minetest.log("action", player:get_player_name() ..
			" puts stuff to bookshelf at " .. minetest.pos_to_string(pos))
		update_bookshelf(pos)
	end,
	on_metadata_inventory_take = function(pos, listname, index, stack, player)
		minetest.log("action", player:get_player_name() ..
			" takes stuff from bookshelf at " .. minetest.pos_to_string(pos))
		update_bookshelf(pos)
	end,
	on_blast = function(pos)
		local drops = {}
		nether_core.get_inventory_drops(pos, "books", drops)
		drops[#drops+1] = "nether_core:bookshelf"
		minetest.remove_node(pos)
		return drops
	end,
})

local function register_sign(material, desc, def)
	minetest.register_node("nether_core:sign_wall_" .. material, {
		description = desc .. " Sign",
		drawtype = "nodebox",
		tiles = {"nether_core_sign_wall_" .. material .. ".png"},
		inventory_image = "nether_core_sign_" .. material .. ".png",
		wield_image = "nether_core_sign_" .. material .. ".png",
		paramtype = "light",
		paramtype2 = "wallmounted",
		sunlight_propagates = true,
		is_ground_content = false,
		walkable = false,
		node_box = {
			type = "wallmounted",
			wall_top    = {-0.4375, 0.4375, -0.3125, 0.4375, 0.5, 0.3125},
			wall_bottom = {-0.4375, -0.5, -0.3125, 0.4375, -0.4375, 0.3125},
			wall_side   = {-0.5, -0.3125, -0.4375, -0.4375, 0.3125, 0.4375},
		},
		groups = def.groups,
		legacy_wallmounted = true,
		sounds = def.sounds,

		on_construct = function(pos)
			--local n = minetest.get_node(pos)
			local meta = minetest.get_meta(pos)
			meta:set_string("formspec", "field[text;;${text}]")
		end,
		on_receive_fields = function(pos, formname, fields, sender)
			--print("Sign at "..minetest.pos_to_string(pos).." got "..dump(fields))
			local player_name = sender:get_player_name()
			if minetest.is_protected(pos, player_name) then
				minetest.record_protection_violation(pos, player_name)
				return
			end
			local text = fields.text
			if not text then
				return
			end
			if string.len(text) > 512 then
				minetest.chat_send_player(player_name, "Text too long")
				return
			end
			minetest.log("action", (player_name or "") .. " wrote \"" ..
				text .. "\" to sign at " .. minetest.pos_to_string(pos))
			local meta = minetest.get_meta(pos)
			meta:set_string("text", text)
			meta:set_string("infotext", '"' .. text .. '"')
		end,
	})
end

register_sign("wood", "Wooden", {
	sounds = nether_core.node_sound_wood_nether_core(),
	groups = {choppy = 2, attached_node = 1, flammable = 2, oddly_breakable_by_hand = 3}
})

register_sign("steel", "Steel", {
	sounds = nether_core.node_sound_metal_nether_core(),
	groups = {cracky = 2, attached_node = 1}
})

minetest.register_node("nether_core:ladder_wood", {
	description = "Wooden Ladder",
	drawtype = "signlike",
	tiles = {"nether_core_ladder_wood.png"},
	inventory_image = "nether_core_ladder_wood.png",
	wield_image = "nether_core_ladder_wood.png",
	paramtype = "light",
	paramtype2 = "wallmounted",
	sunlight_propagates = true,
	walkable = false,
	climbable = true,
	is_ground_content = false,
	selection_box = {
		type = "wallmounted",
		--wall_top = = <nether_core>
		--wall_bottom = = <nether_core>
		--wall_side = = <nether_core>
	},
	groups = {choppy = 2, oddly_breakable_by_hand = 3, flammable = 2},
	legacy_wallmounted = true,
	sounds = nether_core.node_sound_wood_nether_core(),
})

minetest.register_node("nether_core:ladder_steel", {
	description = "Steel Ladder",
	drawtype = "signlike",
	tiles = {"nether_core_ladder_steel.png"},
	inventory_image = "nether_core_ladder_steel.png",
	wield_image = "nether_core_ladder_steel.png",
	paramtype = "light",
	paramtype2 = "wallmounted",
	sunlight_propagates = true,
	walkable = false,
	climbable = true,
	is_ground_content = false,
	selection_box = {
		type = "wallmounted",
		--wall_top = = <nether_core>
		--wall_bottom = = <nether_core>
		--wall_side = = <nether_core>
	},
	groups = {cracky = 2},
	sounds = nether_core.node_sound_metal_nether_core(),
})

nether_core.register_fence("nether_core:fence_wood", {
	description = "Apple Wood Fence",
	texture = "nether_core_fence_wood.png",
	inventory_image = "nether_core_fence_overlay.png^nether_core_wood.png^" ..
				"nether_core_fence_overlay.png^[makealpha:255,126,126",
	wield_image = "nether_core_fence_overlay.png^nether_core_wood.png^" ..
				"nether_core_fence_overlay.png^[makealpha:255,126,126",
	material = "nether_core:wood",
	groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2},
	sounds = nether_core.node_sound_wood_nether_core()
})

nether_core.register_fence("nether_core:fence_acacia_wood", {
	description = "Acacia Wood Fence",
	texture = "nether_core_fence_acacia_wood.png",
	inventory_image = "nether_core_fence_overlay.png^nether_core_acacia_wood.png^" ..
				"nether_core_fence_overlay.png^[makealpha:255,126,126",
	wield_image = "nether_core_fence_overlay.png^nether_core_acacia_wood.png^" ..
				"nether_core_fence_overlay.png^[makealpha:255,126,126",
	material = "nether_core:acacia_wood",
	groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2},
	sounds = nether_core.node_sound_wood_nether_core()
})

nether_core.register_fence("nether_core:fence_junglewood", {
	description = "Jungle Wood Fence",
	texture = "nether_core_fence_junglewood.png",
	inventory_image = "nether_core_fence_overlay.png^nether_core_junglewood.png^" ..
				"nether_core_fence_overlay.png^[makealpha:255,126,126",
	wield_image = "nether_core_fence_overlay.png^nether_core_junglewood.png^" ..
				"nether_core_fence_overlay.png^[makealpha:255,126,126",
	material = "nether_core:junglewood",
	groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2},
	sounds = nether_core.node_sound_wood_nether_core()
})

nether_core.register_fence("nether_core:fence_pine_wood", {
	description = "Pine Wood Fence",
	texture = "nether_core_fence_pine_wood.png",
	inventory_image = "nether_core_fence_overlay.png^nether_core_pine_wood.png^" ..
				"nether_core_fence_overlay.png^[makealpha:255,126,126",
	wield_image = "nether_core_fence_overlay.png^nether_core_pine_wood.png^" ..
				"nether_core_fence_overlay.png^[makealpha:255,126,126",
	material = "nether_core:pine_wood",
	groups = {choppy = 3, oddly_breakable_by_hand = 2, flammable = 3},
	sounds = nether_core.node_sound_wood_nether_core()
})

nether_core.register_fence("nether_core:fence_aspen_wood", {
	description = "Aspen Wood Fence",
	texture = "nether_core_fence_aspen_wood.png",
	inventory_image = "nether_core_fence_overlay.png^nether_core_aspen_wood.png^" ..
				"nether_core_fence_overlay.png^[makealpha:255,126,126",
	wield_image = "nether_core_fence_overlay.png^nether_core_aspen_wood.png^" ..
				"nether_core_fence_overlay.png^[makealpha:255,126,126",
	material = "nether_core:aspen_wood",
	groups = {choppy = 3, oddly_breakable_by_hand = 2, flammable = 3},
	sounds = nether_core.node_sound_wood_nether_core()
})

nether_core.register_fence_rail("nether_core:fence_rail_wood", {
	description = "Apple Wood Fence Rail",
	texture = "nether_core_fence_rail_wood.png",
	inventory_image = "nether_core_fence_rail_overlay.png^nether_core_wood.png^" ..
				"nether_core_fence_rail_overlay.png^[makealpha:255,126,126",
	wield_image = "nether_core_fence_rail_overlay.png^nether_core_wood.png^" ..
				"nether_core_fence_rail_overlay.png^[makealpha:255,126,126",
	material = "nether_core:wood",
	groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2},
	sounds = nether_core.node_sound_wood_nether_core()
})

nether_core.register_fence_rail("nether_core:fence_rail_acacia_wood", {
	description = "Acacia Wood Fence Rail",
	texture = "nether_core_fence_rail_acacia_wood.png",
	inventory_image = "nether_core_fence_rail_overlay.png^nether_core_acacia_wood.png^" ..
				"nether_core_fence_rail_overlay.png^[makealpha:255,126,126",
	wield_image = "nether_core_fence_rail_overlay.png^nether_core_acacia_wood.png^" ..
				"nether_core_fence_rail_overlay.png^[makealpha:255,126,126",
	material = "nether_core:acacia_wood",
	groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2},
	sounds = nether_core.node_sound_wood_nether_core()
})

nether_core.register_fence_rail("nether_core:fence_rail_junglewood", {
	description = "Jungle Wood Fence Rail",
	texture = "nether_core_fence_rail_junglewood.png",
	inventory_image = "nether_core_fence_rail_overlay.png^nether_core_junglewood.png^" ..
				"nether_core_fence_rail_overlay.png^[makealpha:255,126,126",
	wield_image = "nether_core_fence_rail_overlay.png^nether_core_junglewood.png^" ..
				"nether_core_fence_rail_overlay.png^[makealpha:255,126,126",
	material = "nether_core:junglewood",
	groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2},
	sounds = nether_core.node_sound_wood_nether_core()
})

nether_core.register_fence_rail("nether_core:fence_rail_pine_wood", {
	description = "Pine Wood Fence Rail",
	texture = "nether_core_fence_rail_pine_wood.png",
	inventory_image = "nether_core_fence_rail_overlay.png^nether_core_pine_wood.png^" ..
				"nether_core_fence_rail_overlay.png^[makealpha:255,126,126",
	wield_image = "nether_core_fence_rail_overlay.png^nether_core_pine_wood.png^" ..
				"nether_core_fence_rail_overlay.png^[makealpha:255,126,126",
	material = "nether_core:pine_wood",
	groups = {choppy = 3, oddly_breakable_by_hand = 2, flammable = 3},
	sounds = nether_core.node_sound_wood_nether_core()
})

nether_core.register_fence_rail("nether_core:fence_rail_aspen_wood", {
	description = "Aspen Wood Fence Rail",
	texture = "nether_core_fence_rail_aspen_wood.png",
	inventory_image = "nether_core_fence_rail_overlay.png^nether_core_aspen_wood.png^" ..
				"nether_core_fence_rail_overlay.png^[makealpha:255,126,126",
	wield_image = "nether_core_fence_rail_overlay.png^nether_core_aspen_wood.png^" ..
				"nether_core_fence_rail_overlay.png^[makealpha:255,126,126",
	material = "nether_core:aspen_wood",
	groups = {choppy = 3, oddly_breakable_by_hand = 2, flammable = 2},
	sounds = nether_core.node_sound_wood_nether_core()
})

minetest.register_node("nether_core:glass", {
	description = "Glass",
	drawtype = "glasslike_framed_optional",
	tiles = {"nether_core_glass.png", "nether_core_glass_detail.png"},
	paramtype = "light",
	paramtype2 = "glasslikeliquidlevel",
	sunlight_propagates = true,
	is_ground_content = false,
	groups = {cracky = 3, oddly_breakable_by_hand = 3},
	sounds = nether_core.node_sound_glass_nether_core(),
})

minetest.register_node("nether_core:obsidian_glass", {
	description = "Obsidian Glass",
	drawtype = "glasslike_framed_optional",
	tiles = {"nether_core_obsidian_glass.png", "nether_core_obsidian_glass_detail.png"},
	paramtype = "light",
	paramtype2 = "glasslikeliquidlevel",
	is_ground_content = false,
	sunlight_propagates = true,
	sounds = nether_core.node_sound_glass_nether_core(),
	groups = {cracky = 3},
})


minetest.register_node("nether_core:brick", {
	description = "Brick Block",
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"nether_core_brick.png"},
	is_ground_content = false,
	groups = {cracky = 3},
	sounds = nether_core.node_sound_stone_nether_core(),
})


minetest.register_node("nether_core:meselamp", {
	description = "Mese Lamp",
	drawtype = "glasslike",
	tiles = {"nether_core_meselamp.png"},
	paramtype = "light",
	sunlight_propagates = true,
	is_ground_content = false,
	groups = {cracky = 3, oddly_breakable_by_hand = 3},
	sounds = nether_core.node_sound_glass_nether_core(),
	light_source = nether_core.LIGHT_MAX,
})

minetest.register_node("nether_core:mese_post_light", {
	description = "Mese Post Light",
	tiles = {"nether_core_mese_post_light_top.png", "nether_core_mese_post_light_top.png",
		"nether_core_mese_post_light_side_dark.png", "nether_core_mese_post_light_side_dark.png",
		"nether_core_mese_post_light_side.png", "nether_core_mese_post_light_side.png"},
	wield_image = "nether_core_mese_post_light_side.png",
	drawtype = "nodebox",
	node_box = {
		type = "fixed",
		fixed = {
			{-2 / 16, -8 / 16, -2 / 16, 2 / 16, 8 / 16, 2 / 16},
		},
	},
	paramtype = "light",
	light_source = nether_core.LIGHT_MAX,
	sunlight_propagates = true,
	is_ground_content = false,
	groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2},
	sounds = nether_core.node_sound_wood_nether_core(),
})

--
-- Misc
--

minetest.register_node("nether_core:cloud", {
	description = "Cloud",
	tiles = {"nether_core_cloud.png"},
	is_ground_content = false,
	sounds = nether_core.node_sound_nether_core(),
	groups = {not_in_creative_inventory = 1},
})

--
-- register trees for leafdecay
--

if minetest.get_mapgen_setting("mg_name") == "v6" then
	nether_core.register_leafdecay({
		trunks = {"nether_core:tree"},
		leaves = {"nether_core:apple", "nether_core:leaves"},
		radius = 2,
	})

	nether_core.register_leafdecay({
		trunks = {"nether_core:jungletree"},
		leaves = {"nether_core:jungleleaves"},
		radius = 3,
	})
else
	nether_core.register_leafdecay({
		trunks = {"nether_core:tree"},
		leaves = {"nether_core:apple", "nether_core:leaves"},
		radius = 3,
	})

	nether_core.register_leafdecay({
		trunks = {"nether_core:jungletree"},
		leaves = {"nether_core:jungleleaves"},
		radius = 2,
	})
end

nether_core.register_leafdecay({
	trunks = {"nether_core:pine_tree"},
	leaves = {"nether_core:pine_needles"},
	radius = 3,
})

nether_core.register_leafdecay({
	trunks = {"nether_core:acacia_tree"},
	leaves = {"nether_core:acacia_leaves"},
	radius = 2,
})

nether_core.register_leafdecay({
	trunks = {"nether_core:aspen_tree"},
	leaves = {"nether_core:aspen_leaves"},
	radius = 3,
})

nether_core.register_leafdecay({
	trunks = {"nether_core:bush_stem"},
	leaves = {"nether_core:bush_leaves"},
	radius = 1,
})

nether_core.register_leafdecay({
	trunks = {"nether_core:acacia_bush_stem"},
	leaves = {"nether_core:acacia_bush_leaves"},
	radius = 1,
})

nether_core.register_leafdecay({
	trunks = {"nether_core:pine_bush_stem"},
	leaves = {"nether_core:pine_bush_needles"},
	radius = 1,
})
