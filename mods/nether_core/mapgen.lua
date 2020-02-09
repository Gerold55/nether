--
-- Aliases for map generators
--

minetest.register_alias("mapgen_stone", "core:netherrack")
minetest.register_alias("mapgen_dirt", "core:soul_soil")
minetest.register_alias("mapgen_dirt_with_grass", "core:crimson_nylium_side")
minetest.register_alias("mapgen_sand", "core:soul_sand")
minetest.register_alias("mapgen_water_source", "core:water_source")
minetest.register_alias("mapgen_river_water_source", "core:river_water_source")
minetest.register_alias("mapgen_lava_source", "core:lava_source")
minetest.register_alias("mapgen_gravel", "core:gravel")
minetest.register_alias("mapgen_desert_stone", "core:desert_stone")
minetest.register_alias("mapgen_desert_sand", "core:desert_sand")
minetest.register_alias("mapgen_dirt_with_snow", "core:dirt_with_snow")
minetest.register_alias("mapgen_snowblock", "core:snowblock")
minetest.register_alias("mapgen_snow", "core:snow")
minetest.register_alias("mapgen_ice", "core:ice")
minetest.register_alias("mapgen_sandstone", "core:sandstone")

-- Flora

minetest.register_alias("mapgen_tree", "core:warped_stem")
minetest.register_alias("mapgen_leaves", "core:leaves")
minetest.register_alias("mapgen_apple", "core:air")
minetest.register_alias("mapgen_jungletree", "core:crimson_stem")
minetest.register_alias("mapgen_jungleleaves", "core:jungleleaves")
minetest.register_alias("mapgen_junglegrass", "core:junglegrass")

-- Dungeons

minetest.register_alias("mapgen_cobble", "core:cobble")
minetest.register_alias("mapgen_stair_cobble", "stairs:stair_cobble")
minetest.register_alias("mapgen_mossycobble", "core:mossycobble")
minetest.register_alias("mapgen_stair_desert_stone", "stairs:stair_desert_stone")
minetest.register_alias("mapgen_sandstonebrick", "core:sandstonebrick")
minetest.register_alias("mapgen_stair_sandstone_block", "stairs:stair_sandstone_block")


--
-- Register ores
--

-- Mgv6

function core.register_mgv6_ores()

	-- Blob ore
	-- These first to avoid other ores in blobs

	-- Clay
	-- This first to avoid clay in sand blobs

	minetest.register_ore({
		ore_type        = "blob",
		ore             = "core:clay",
		wherein         = {"core:sand"},
		clust_scarcity  = 16 * 16 * 16,
		clust_size      = 5,
		y_max           = 0,
		y_min           = -15,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			seed = -316,
			octaves = 1,
			persist = 0.0
		},
	})

	-- Sand

	minetest.register_ore({
		ore_type        = "blob",
		ore             = "core:soul_sand",
		wherein         = {"core:netherrack", "core:desert_stone"},
		clust_scarcity  = 16 * 16 * 16,
		clust_size      = 5,
		y_max           = 0,
		y_min           = -31,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			seed = 2316,
			octaves = 1,
			persist = 0.0
		},
	})

	-- Dirt

	minetest.register_ore({
		ore_type        = "blob",
		ore             = "core:dirt",
		wherein         = {"core:netherrack"},
		clust_scarcity  = 16 * 16 * 16,
		clust_size      = 5,
		y_max           = 31000,
		y_min           = -31,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			seed = 17676,
			octaves = 1,
			persist = 0.0
		},
	})

	-- Gravel

	minetest.register_ore({
		ore_type        = "blob",
		ore             = "core:gravel",
		wherein         = {"core:netherrack"},
		clust_scarcity  = 16 * 16 * 16,
		clust_size      = 5,
		y_max           = 31000,
		y_min           = -31000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			seed = 766,
			octaves = 1,
			persist = 0.0
		},
	})

	-- Scatter ores

	-- Diamond

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "core:stone_with_diamond",
		wherein        = "core:netherrack",
		clust_scarcity = 5 * 5 * 5,
		clust_num_ores = 4,
		clust_size     = 3,
		y_max          = 31000,
		y_min          = 1025,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "core:stone_with_diamond",
		wherein        = "core:netherrack",
		clust_scarcity = 17 * 17 * 17,
		clust_num_ores = 4,
		clust_size     = 3,
		y_max          = -128,
		y_min          = -255,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "core:stone_with_diamond",
		wherein        = "core:netherrack",
		clust_scarcity = 15 * 15 * 15,
		clust_num_ores = 4,
		clust_size     = 3,
		y_max          = -256,
		y_min          = -31000,
	})
end


-- All mapgens except mgv6

function core.register_ores()

	-- Stratum ores.
	-- These obviously first.

	-- Silver sandstone

	minetest.register_ore({
		ore_type        = "stratum",
		ore             = "core:silver_sandstone",
		wherein         = {"core:stone"},
		clust_scarcity  = 1,
		y_max           = 46,
		y_min           = 10,
		noise_params    = {
			offset = 28,
			scale = 16,
			spread = {x = 128, y = 128, z = 128},
			seed = 90122,
			octaves = 1,
		},
		stratum_thickness = 4,
		biomes = {"cold_desert"},
	})

	minetest.register_ore({
		ore_type        = "stratum",
		ore             = "core:silver_sandstone",
		wherein         = {"core:stone"},
		clust_scarcity  = 1,
		y_max           = 42,
		y_min           = 6,
		noise_params    = {
			offset = 24,
			scale = 16,
			spread = {x = 128, y = 128, z = 128},
			seed = 90122,
			octaves = 1,
		},
		stratum_thickness = 2,
		biomes = {"cold_desert"},
	})

	-- Desert sandstone

	minetest.register_ore({
		ore_type        = "stratum",
		ore             = "core:desert_sandstone",
		wherein         = {"core:desert_stone"},
		clust_scarcity  = 1,
		y_max           = 46,
		y_min           = 10,
		noise_params    = {
			offset = 28,
			scale = 16,
			spread = {x = 128, y = 128, z = 128},
			seed = 90122,
			octaves = 1,
		},
		stratum_thickness = 4,
		biomes = {"desert"},
	})

	minetest.register_ore({
		ore_type        = "stratum",
		ore             = "core:desert_sandstone",
		wherein         = {"core:desert_stone"},
		clust_scarcity  = 1,
		y_max           = 42,
		y_min           = 6,
		noise_params    = {
			offset = 24,
			scale = 16,
			spread = {x = 128, y = 128, z = 128},
			seed = 90122,
			octaves = 1,
		},
		stratum_thickness = 2,
		biomes = {"desert"},
	})

	-- Sandstone

	minetest.register_ore({
		ore_type        = "stratum",
		ore             = "core:sandstone",
		wherein         = {"core:desert_stone"},
		clust_scarcity  = 1,
		y_max           = 39,
		y_min           = 3,
		noise_params    = {
			offset = 21,
			scale = 16,
			spread = {x = 128, y = 128, z = 128},
			seed = 90122,
			octaves = 1,
		},
		stratum_thickness = 2,
		biomes = {"desert"},
	})

	-- Blob ore.
	-- These before scatter ores to avoid other ores in blobs.

	-- Clay

	minetest.register_ore({
		ore_type        = "blob",
		ore             = "core:clay",
		wherein         = {"core:sand"},
		clust_scarcity  = 16 * 16 * 16,
		clust_size      = 5,
		y_max           = 0,
		y_min           = -15,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			seed = -316,
			octaves = 1,
			persist = 0.0
		},
	})

	-- Silver sand

	minetest.register_ore({
		ore_type        = "blob",
		ore             = "core:silver_sand",
		wherein         = {"core:stone"},
		clust_scarcity  = 16 * 16 * 16,
		clust_size      = 5,
		y_max           = 31000,
		y_min           = -31000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			seed = 2316,
			octaves = 1,
			persist = 0.0
		},
		biomes = {"icesheet_ocean", "tundra", "tundra_beach", "tundra_ocean",
			"taiga", "taiga_ocean", "snowy_grassland", "snowy_grassland_ocean",
			"grassland", "grassland_dunes", "grassland_ocean", "coniferous_forest",
			"coniferous_forest_dunes", "coniferous_forest_ocean", "deciduous_forest",
			"deciduous_forest_shore", "deciduous_forest_ocean", "cold_desert",
			"cold_desert_ocean", "savanna", "savanna_shore", "savanna_ocean",
			"rainforest", "rainforest_swamp", "rainforest_ocean", "underground",
			"floatland_coniferous_forest", "floatland_coniferous_forest_ocean"}
	})

	-- Dirt

	minetest.register_ore({
		ore_type        = "blob",
		ore             = "core:dirt",
		wherein         = {"core:stone"},
		clust_scarcity  = 16 * 16 * 16,
		clust_size      = 5,
		y_max           = 31000,
		y_min           = -31,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			seed = 17676,
			octaves = 1,
			persist = 0.0
		},
		biomes = {"taiga", "snowy_grassland", "grassland", "coniferous_forest",
			"deciduous_forest", "deciduous_forest_shore", "savanna", "savanna_shore",
			"rainforest", "rainforest_swamp", "floatland_coniferous_forest"}
	})

	-- Gravel

	minetest.register_ore({
		ore_type        = "blob",
		ore             = "core:gravel",
		wherein         = {"core:stone"},
		clust_scarcity  = 16 * 16 * 16,
		clust_size      = 5,
		y_max           = 31000,
		y_min           = -31000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			seed = 766,
			octaves = 1,
			persist = 0.0
		},
		biomes = {"icesheet_ocean", "tundra", "tundra_beach", "tundra_ocean",
			"taiga", "taiga_ocean", "snowy_grassland", "snowy_grassland_ocean",
			"grassland", "grassland_dunes", "grassland_ocean", "coniferous_forest",
			"coniferous_forest_dunes", "coniferous_forest_ocean", "deciduous_forest",
			"deciduous_forest_shore", "deciduous_forest_ocean", "cold_desert",
			"cold_desert_ocean", "savanna", "savanna_shore", "savanna_ocean",
			"rainforest", "rainforest_swamp", "rainforest_ocean", "underground",
			"floatland_coniferous_forest", "floatland_coniferous_forest_ocean"}
	})

	-- Scatter ores

	-- Diamond

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "core:stone_with_diamond",
		wherein        = "core:stone",
		clust_scarcity = 15 * 15 * 15,
		clust_num_ores = 4,
		clust_size     = 3,
		y_max          = 31000,
		y_min          = 1025,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "core:stone_with_diamond",
		wherein        = "core:stone",
		clust_scarcity = 17 * 17 * 17,
		clust_num_ores = 4,
		clust_size     = 3,
		y_max          = -1024,
		y_min          = -2047,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "core:stone_with_diamond",
		wherein        = "core:stone",
		clust_scarcity = 15 * 15 * 15,
		clust_num_ores = 4,
		clust_size     = 3,
		y_max          = -2048,
		y_min          = -31000,
	})

--
-- Register biomes
--

-- All mapgens except mgv6

function core.register_biomes(upper_limit)

	-- Icesheet

	minetest.register_biome({
		name = "icesheet",
		node_dust = "core:snowblock",
		node_top = "core:snowblock",
		depth_top = 1,
		node_filler = "core:snowblock",
		depth_filler = 3,
		node_stone = "core:cave_ice",
		node_water_top = "core:ice",
		depth_water_top = 10,
		node_river_water = "core:ice",
		node_riverbed = "core:gravel",
		depth_riverbed = 2,
		y_max = upper_limit,
		y_min = -8,
		heat_point = 0,
		humidity_point = 73,
	})

	minetest.register_biome({
		name = "icesheet_ocean",
		node_dust = "core:snowblock",
		node_top = "core:sand",
		depth_top = 1,
		node_filler = "core:sand",
		depth_filler = 3,
		node_water_top = "core:ice",
		depth_water_top = 10,
		y_max = -9,
		y_min = -112,
		heat_point = 0,
		humidity_point = 73,
	})

	-- Tundra

	minetest.register_biome({
		name = "tundra_highland",
		node_dust = "core:snow",
		node_riverbed = "core:gravel",
		depth_riverbed = 2,
		y_max = upper_limit,
		y_min = 47,
		heat_point = 0,
		humidity_point = 40,
	})

	minetest.register_biome({
		name = "tundra",
		node_top = "core:permafrost_with_stones",
		depth_top = 1,
		node_filler = "core:permafrost",
		depth_filler = 1,
		node_riverbed = "core:gravel",
		depth_riverbed = 2,
		vertical_blend = 4,
		y_max = 46,
		y_min = 2,
		heat_point = 0,
		humidity_point = 40,
	})

	minetest.register_biome({
		name = "tundra_beach",
		node_top = "core:gravel",
		depth_top = 1,
		node_filler = "core:gravel",
		depth_filler = 2,
		node_riverbed = "core:gravel",
		depth_riverbed = 2,
		vertical_blend = 1,
		y_max = 1,
		y_min = -3,
		heat_point = 0,
		humidity_point = 40,
	})

	minetest.register_biome({
		name = "tundra_ocean",
		node_top = "core:sand",
		depth_top = 1,
		node_filler = "core:sand",
		depth_filler = 3,
		node_riverbed = "core:gravel",
		depth_riverbed = 2,
		vertical_blend = 1,
		y_max = -4,
		y_min = -112,
		heat_point = 0,
		humidity_point = 40,
	})

	-- Taiga

	minetest.register_biome({
		name = "taiga",
		node_dust = "core:snow",
		node_top = "core:dirt_with_snow",
		depth_top = 1,
		node_filler = "core:dirt",
		depth_filler = 3,
		node_riverbed = "core:sand",
		depth_riverbed = 2,
		y_max = upper_limit,
		y_min = 4,
		heat_point = 25,
		humidity_point = 70,
	})

	minetest.register_biome({
		name = "taiga_ocean",
		node_dust = "core:snow",
		node_top = "core:sand",
		depth_top = 1,
		node_filler = "core:sand",
		depth_filler = 3,
		node_riverbed = "core:sand",
		depth_riverbed = 2,
		vertical_blend = 1,
		y_max = 3,
		y_min = -112,
		heat_point = 25,
		humidity_point = 70,
	})

	-- Snowy grassland

	minetest.register_biome({
		name = "snowy_grassland",
		node_dust = "core:snow",
		node_top = "core:dirt_with_snow",
		depth_top = 1,
		node_filler = "core:dirt",
		depth_filler = 1,
		node_riverbed = "core:sand",
		depth_riverbed = 2,
		y_max = upper_limit,
		y_min = 4,
		heat_point = 20,
		humidity_point = 35,
	})

	minetest.register_biome({
		name = "snowy_grassland_ocean",
		node_dust = "core:snow",
		node_top = "core:sand",
		depth_top = 1,
		node_filler = "core:sand",
		depth_filler = 3,
		node_riverbed = "core:sand",
		depth_riverbed = 2,
		vertical_blend = 1,
		y_max = 3,
		y_min = -112,
		heat_point = 20,
		humidity_point = 35,
	})

	-- Grassland

	minetest.register_biome({
		name = "grassland",
		node_top = "core:dirt_with_grass",
		depth_top = 1,
		node_filler = "core:dirt",
		depth_filler = 1,
		node_riverbed = "core:sand",
		depth_riverbed = 2,
		y_max = upper_limit,
		y_min = 6,
		heat_point = 50,
		humidity_point = 35,
	})

	minetest.register_biome({
		name = "grassland_dunes",
		node_top = "core:sand",
		depth_top = 1,
		node_filler = "core:sand",
		depth_filler = 2,
		node_riverbed = "core:sand",
		depth_riverbed = 2,
		vertical_blend = 1,
		y_max = 5,
		y_min = 4,
		heat_point = 50,
		humidity_point = 35,
	})

	minetest.register_biome({
		name = "grassland_ocean",
		node_top = "core:sand",
		depth_top = 1,
		node_filler = "core:sand",
		depth_filler = 3,
		node_riverbed = "core:sand",
		depth_riverbed = 2,
		y_max = 3,
		y_min = -112,
		heat_point = 50,
		humidity_point = 35,
	})

	-- Coniferous forest

	minetest.register_biome({
		name = "crimson_forest",
		node_top = "core:crimson_forest",
		depth_top = 1,
		node_filler = "core:netherrack",
		depth_filler = 3,
		node_riverbed = "core:soul_sand",
		depth_riverbed = 2,
		y_max = upper_limit,
		y_min = 6,
		heat_point = 45,
		humidity_point = 70,
	})

	minetest.register_biome({
		name = "crimson_forest_dunes",
		node_top = "core:soul_sand",
		depth_top = 1,
		node_filler = "core:soul_sand",
		depth_filler = 3,
		node_riverbed = "core:soul_sand",
		depth_riverbed = 2,
		vertical_blend = 1,
		y_max = 5,
		y_min = 4,
		heat_point = 45,
		humidity_point = 70,
	})

	minetest.register_biome({
		name = "crimson_forest_ocean",
		node_top = "core:soul_sand",
		depth_top = 1,
		node_filler = "core:soul_sand",
		depth_filler = 3,
		node_riverbed = "core:soul_sand",
		depth_riverbed = 2,
		y_max = 3,
		y_min = -112,
		heat_point = 45,
		humidity_point = 70,
	})

	-- Deciduous forest

	minetest.register_biome({
		name = "warped_forest",
		node_top = "core:warped_nylium",
		depth_top = 1,
		node_filler = "core:netherrack",
		depth_filler = 3,
		node_riverbed = "core:soul_sand",
		depth_riverbed = 2,
		y_max = upper_limit,
		y_min = 1,
		heat_point = 60,
		humidity_point = 68,
	})

	minetest.register_biome({
		name = "warped_forest_shore",
		node_top = "core:warped_nylium",
		depth_top = 1,
		node_filler = "core:netherrack",
		depth_filler = 3,
		node_riverbed = "core:soul_sand",
		depth_riverbed = 2,
		y_max = 0,
		y_min = -1,
		heat_point = 60,
		humidity_point = 68,
	})

	minetest.register_biome({
		name = "warped_forest_ocean",
		node_top = "core:soul_sand",
		depth_top = 1,
		node_filler = "core:soul_sand",
		depth_filler = 3,
		node_riverbed = "core:soul_sand",
		depth_riverbed = 2,
		vertical_blend = 1,
		y_max = -2,
		y_min = -112,
		heat_point = 60,
		humidity_point = 68,
	})

	-- Desert

	minetest.register_biome({
		name = "desert",
		node_top = "core:desert_sand",
		depth_top = 1,
		node_filler = "core:desert_sand",
		depth_filler = 1,
		node_stone = "core:desert_stone",
		node_riverbed = "core:sand",
		depth_riverbed = 2,
		y_max = upper_limit,
		y_min = 4,
		heat_point = 92,
		humidity_point = 16,
	})

	minetest.register_biome({
		name = "desert_ocean",
		node_top = "core:sand",
		depth_top = 1,
		node_filler = "core:sand",
		depth_filler = 3,
		node_stone = "core:desert_stone",
		node_riverbed = "core:sand",
		depth_riverbed = 2,
		vertical_blend = 1,
		y_max = 3,
		y_min = -112,
		heat_point = 92,
		humidity_point = 16,
	})

	-- Sandstone desert

	minetest.register_biome({
		name = "sandstone_desert",
		node_top = "core:sand",
		depth_top = 1,
		node_filler = "core:sand",
		depth_filler = 1,
		node_stone = "core:sandstone",
		node_riverbed = "core:sand",
		depth_riverbed = 2,
		y_max = upper_limit,
		y_min = 4,
		heat_point = 60,
		humidity_point = 0,
	})

	minetest.register_biome({
		name = "sandstone_desert_ocean",
		node_top = "core:sand",
		depth_top = 1,
		node_filler = "core:sand",
		depth_filler = 3,
		node_stone = "core:sandstone",
		node_riverbed = "core:sand",
		depth_riverbed = 2,
		y_max = 3,
		y_min = -112,
		heat_point = 60,
		humidity_point = 0,
	})

	-- Cold desert

	minetest.register_biome({
		name = "cold_desert",
		node_top = "core:silver_sand",
		depth_top = 1,
		node_filler = "core:silver_sand",
		depth_filler = 1,
		node_riverbed = "core:sand",
		depth_riverbed = 2,
		y_max = upper_limit,
		y_min = 4,
		heat_point = 40,
		humidity_point = 0,
	})

	minetest.register_biome({
		name = "cold_desert_ocean",
		node_top = "core:sand",
		depth_top = 1,
		node_filler = "core:sand",
		depth_filler = 3,
		node_riverbed = "core:sand",
		depth_riverbed = 2,
		vertical_blend = 1,
		y_max = 3,
		y_min = -112,
		heat_point = 40,
		humidity_point = 0,
	})

	-- Savanna

	minetest.register_biome({
		name = "savanna",
		node_top = "core:dirt_with_dry_grass",
		depth_top = 1,
		node_filler = "core:dirt",
		depth_filler = 1,
		node_riverbed = "core:sand",
		depth_riverbed = 2,
		y_max = upper_limit,
		y_min = 1,
		heat_point = 89,
		humidity_point = 42,
	})

	minetest.register_biome({
		name = "savanna_shore",
		node_top = "core:dirt",
		depth_top = 1,
		node_filler = "core:dirt",
		depth_filler = 3,
		node_riverbed = "core:sand",
		depth_riverbed = 2,
		y_max = 0,
		y_min = -1,
		heat_point = 89,
		humidity_point = 42,
	})

	minetest.register_biome({
		name = "savanna_ocean",
		node_top = "core:sand",
		depth_top = 1,
		node_filler = "core:sand",
		depth_filler = 3,
		node_riverbed = "core:sand",
		depth_riverbed = 2,
		vertical_blend = 1,
		y_max = -2,
		y_min = -112,
		heat_point = 89,
		humidity_point = 42,
	})

	-- Rainforest

	minetest.register_biome({
		name = "rainforest",
		node_top = "core:dirt_with_rainforest_litter",
		depth_top = 1,
		node_filler = "core:dirt",
		depth_filler = 3,
		node_riverbed = "core:sand",
		depth_riverbed = 2,
		y_max = upper_limit,
		y_min = 1,
		heat_point = 86,
		humidity_point = 65,
	})

	minetest.register_biome({
		name = "rainforest_swamp",
		node_top = "core:dirt",
		depth_top = 1,
		node_filler = "core:dirt",
		depth_filler = 3,
		node_riverbed = "core:sand",
		depth_riverbed = 2,
		y_max = 0,
		y_min = -1,
		heat_point = 86,
		humidity_point = 65,
	})

	minetest.register_biome({
		name = "rainforest_ocean",
		node_top = "core:sand",
		depth_top = 1,
		node_filler = "core:sand",
		depth_filler = 3,
		node_riverbed = "core:sand",
		depth_riverbed = 2,
		vertical_blend = 1,
		y_max = -2,
		y_min = -112,
		heat_point = 86,
		humidity_point = 65,
	})

	-- Underground

	minetest.register_biome({
		name = "underground",
		y_max = -113,
		y_min = -31000,
		heat_point = 50,
		humidity_point = 50,
	})
end


-- Biomes for floatlands

-- TODO Temporary simple biomes to be replaced by special floatland biomes later.

function core.register_floatland_biomes(floatland_level, shadow_limit)

	minetest.register_biome({
		name = "floatland_grassland",
		node_top = "core:dirt_with_grass",
		depth_top = 1,
		node_filler = "core:dirt",
		depth_filler = 1,
		y_max = 31000,
		y_min = floatland_level + 2,
		heat_point = 50,
		humidity_point = 25,
	})

	minetest.register_biome({
		name = "floatland_coniferous_forest",
		node_top = "core:dirt_with_coniferous_litter",
		depth_top = 1,
		node_filler = "core:dirt",
		depth_filler = 3,
		y_max = 31000,
		y_min = floatland_level + 2,
		heat_point = 50,
		humidity_point = 75,
	})

	minetest.register_biome({
		name = "floatland_ocean",
		node_top = "core:sand",
		depth_top = 1,
		node_filler = "core:sand",
		depth_filler = 3,
		y_max = floatland_level + 1,
		y_min = shadow_limit,
		heat_point = 50,
		humidity_point = 50,
	})
end


--
-- Register decorations
--

-- Mgv6

function core.register_mgv6_decorations()

	-- Papyrus

	minetest.register_decoration({
		name = "core:papyrus",
		deco_type = "simple",
		place_on = {"core:dirt_with_grass"},
		sidelen = 16,
		noise_params = {
			offset = -0.3,
			scale = 0.7,
			spread = {x = 100, y = 100, z = 100},
			seed = 354,
			octaves = 3,
			persist = 0.7
		},
		y_max = 1,
		y_min = 1,
		decoration = "core:papyrus",
		height = 2,
		height_max = 4,
		spawn_by = "core:water_source",
		num_spawn_by = 1,
	})

	-- Cacti

	minetest.register_decoration({
		name = "core:cactus",
		deco_type = "simple",
		place_on = {"core:desert_sand"},
		sidelen = 16,
		noise_params = {
			offset = -0.012,
			scale = 0.024,
			spread = {x = 100, y = 100, z = 100},
			seed = 230,
			octaves = 3,
			persist = 0.6
		},
		y_max = 30,
		y_min = 1,
		decoration = "core:cactus",
		height = 3,
	        height_max = 4,
	})

	-- Long grasses

	for length = 1, 5 do
		minetest.register_decoration({
			name = "core:grass_"..length,
			deco_type = "simple",
			place_on = {"core:dirt_with_grass"},
			sidelen = 16,
			noise_params = {
				offset = 0,
				scale = 0.007,
				spread = {x = 100, y = 100, z = 100},
				seed = 329,
				octaves = 3,
				persist = 0.6
			},
			y_max = 30,
			y_min = 1,
			decoration = "core:grass_"..length,
		})
	end

	-- Dry shrubs

	minetest.register_decoration({
		name = "core:dry_shrub",
		deco_type = "simple",
		place_on = {"core:desert_sand", "core:dirt_with_snow"},
		sidelen = 16,
		noise_params = {
			offset = 0,
			scale = 0.035,
			spread = {x = 100, y = 100, z = 100},
			seed = 329,
			octaves = 3,
			persist = 0.6
		},
		y_max = 30,
		y_min = 1,
		decoration = "core:dry_shrub",
		param2 = 4,
	})
end


-- All mapgens except mgv6

local function register_grass_decoration(offset, scale, length)
	minetest.register_decoration({
		name = "core:grass_" .. length,
		deco_type = "simple",
		place_on = {"core:dirt_with_grass"},
		sidelen = 16,
		noise_params = {
			offset = offset,
			scale = scale,
			spread = {x = 200, y = 200, z = 200},
			seed = 329,
			octaves = 3,
			persist = 0.6
		},
		biomes = {"grassland", "deciduous_forest", "floatland_grassland"},
		y_max = 31000,
		y_min = 1,
		decoration = "core:grass_" .. length,
	})
end

local function register_dry_grass_decoration(offset, scale, length)
	minetest.register_decoration({
		name = "core:dry_grass_" .. length,
		deco_type = "simple",
		place_on = {"core:dirt_with_dry_grass"},
		sidelen = 16,
		noise_params = {
			offset = offset,
			scale = scale,
			spread = {x = 200, y = 200, z = 200},
			seed = 329,
			octaves = 3,
			persist = 0.6
		},
		biomes = {"savanna"},
		y_max = 31000,
		y_min = 1,
		decoration = "core:dry_grass_" .. length,
	})
end

local function register_fern_decoration(seed, length)
	minetest.register_decoration({
		name = "core:fern_" .. length,
		deco_type = "simple",
		place_on = {"core:dirt_with_coniferous_litter"},
		sidelen = 16,
		noise_params = {
			offset = 0,
			scale = 0.2,
			spread = {x = 100, y = 100, z = 100},
			seed = seed,
			octaves = 3,
			persist = 0.7
		},
		biomes = {"coniferous_forest", "floatland_coniferous_forest"},
		y_max = 31000,
		y_min = 6,
		decoration = "core:fern_" .. length,
	})
end


function core.register_decorations()

	-- Apple tree and log

	minetest.register_decoration({
		name = "core:apple_tree",
		deco_type = "schematic",
		place_on = {"core:dirt_with_grass"},
		sidelen = 16,
		noise_params = {
			offset = 0.024,
			scale = 0.015,
			spread = {x = 250, y = 250, z = 250},
			seed = 2,
			octaves = 3,
			persist = 0.66
		},
		biomes = {"deciduous_forest"},
		y_max = 31000,
		y_min = 1,
		schematic = minetest.get_modpath("core") .. "/schematics/apple_tree.mts",
		flags = "place_center_x, place_center_z",
		rotation = "random",
	})

	minetest.register_decoration({
		name = "core:apple_log",
		deco_type = "schematic",
		place_on = {"core:dirt_with_grass"},
		place_offset_y = 1,
		sidelen = 16,
		noise_params = {
			offset = 0.0012,
			scale = 0.0007,
			spread = {x = 250, y = 250, z = 250},
			seed = 2,
			octaves = 3,
			persist = 0.66
		},
		biomes = {"deciduous_forest"},
		y_max = 31000,
		y_min = 1,
		schematic = minetest.get_modpath("core") .. "/schematics/apple_log.mts",
		flags = "place_center_x",
		rotation = "random",
		spawn_by = "core:dirt_with_grass",
		num_spawn_by = 8,
	})

	-- Emergent jungle tree
	-- Due to 32 node height, altitude is limited and prescence depends on chunksize

	local chunksize = tonumber(minetest.get_mapgen_setting("chunksize"))
	if chunksize >= 5 then
		minetest.register_decoration({
			name = "core:emergent_jungle_tree",
			deco_type = "schematic",
			place_on = {"core:dirt_with_rainforest_litter"},
			sidelen = 80,
			noise_params = {
				offset = 0.0,
				scale = 0.0025,
				spread = {x = 250, y = 250, z = 250},
				seed = 2685,
				octaves = 3,
				persist = 0.7
			},
			biomes = {"rainforest"},
			y_max = 32,
			y_min = 1,
			schematic = minetest.get_modpath("core") ..
					"/schematics/emergent_jungle_tree.mts",
			flags = "place_center_x, place_center_z",
			rotation = "random",
			place_offset_y = -4,
		})
	end

	-- Jungle tree and log

	minetest.register_decoration({
		name = "core:jungle_tree",
		deco_type = "schematic",
		place_on = {"core:dirt_with_rainforest_litter", "core:dirt"},
		sidelen = 80,
		fill_ratio = 0.1,
		biomes = {"rainforest", "rainforest_swamp"},
		y_max = 31000,
		y_min = -1,
		schematic = minetest.get_modpath("core") .. "/schematics/jungle_tree.mts",
		flags = "place_center_x, place_center_z",
		rotation = "random",
	})

	minetest.register_decoration({
		name = "core:jungle_log",
		deco_type = "schematic",
		place_on = {"core:dirt_with_rainforest_litter"},
		place_offset_y = 1,
		sidelen = 80,
		fill_ratio = 0.005,
		biomes = {"rainforest", "rainforest_swamp"},
		y_max = 31000,
		y_min = 1,
		schematic = minetest.get_modpath("core") .. "/schematics/jungle_log.mts",
		flags = "place_center_x",
		rotation = "random",
		spawn_by = "core:dirt_with_rainforest_litter",
		num_spawn_by = 8,
	})

	-- Taiga and temperate coniferous forest pine tree, small pine tree and log

	minetest.register_decoration({
		name = "core:pine_tree",
		deco_type = "schematic",
		place_on = {"core:dirt_with_snow", "core:dirt_with_coniferous_litter"},
		sidelen = 16,
		noise_params = {
			offset = 0.010,
			scale = 0.048,
			spread = {x = 250, y = 250, z = 250},
			seed = 2,
			octaves = 3,
			persist = 0.66
		},
		biomes = {"taiga", "coniferous_forest", "floatland_coniferous_forest"},
		y_max = 31000,
		y_min = 4,
		schematic = minetest.get_modpath("core") .. "/schematics/pine_tree.mts",
		flags = "place_center_x, place_center_z",
	})

	minetest.register_decoration({
		name = "core:small_pine_tree",
		deco_type = "schematic",
		place_on = {"core:dirt_with_snow", "core:dirt_with_coniferous_litter"},
		sidelen = 16,
		noise_params = {
			offset = 0.010,
			scale = -0.048,
			spread = {x = 250, y = 250, z = 250},
			seed = 2,
			octaves = 3,
			persist = 0.66
		},
		biomes = {"taiga", "coniferous_forest", "floatland_coniferous_forest"},
		y_max = 31000,
		y_min = 4,
		schematic = minetest.get_modpath("core") .. "/schematics/small_pine_tree.mts",
		flags = "place_center_x, place_center_z",
	})

	minetest.register_decoration({
		name = "core:pine_log",
		deco_type = "schematic",
		place_on = {"core:dirt_with_snow", "core:dirt_with_coniferous_litter"},
		place_offset_y = 1,
		sidelen = 80,
		fill_ratio = 0.0018,
		biomes = {"taiga", "coniferous_forest", "floatland_coniferous_forest"},
		y_max = 31000,
		y_min = 4,
		schematic = minetest.get_modpath("core") .. "/schematics/pine_log.mts",
		flags = "place_center_x",
		rotation = "random",
		spawn_by = {"core:dirt_with_snow", "core:dirt_with_coniferous_litter"},
		num_spawn_by = 8,
	})

	-- Acacia tree and log

	minetest.register_decoration({
		name = "core:acacia_tree",
		deco_type = "schematic",
		place_on = {"core:dirt_with_dry_grass"},
		sidelen = 16,
		noise_params = {
			offset = 0,
			scale = 0.002,
			spread = {x = 250, y = 250, z = 250},
			seed = 2,
			octaves = 3,
			persist = 0.66
		},
		biomes = {"savanna"},
		y_max = 31000,
		y_min = 1,
		schematic = minetest.get_modpath("core") .. "/schematics/acacia_tree.mts",
		flags = "place_center_x, place_center_z",
		rotation = "random",
	})

	minetest.register_decoration({
		name = "core:acacia_log",
		deco_type = "schematic",
		place_on = {"core:dirt_with_dry_grass"},
		place_offset_y = 1,
		sidelen = 16,
		noise_params = {
			offset = 0,
			scale = 0.001,
			spread = {x = 250, y = 250, z = 250},
			seed = 2,
			octaves = 3,
			persist = 0.66
		},
		biomes = {"savanna"},
		y_max = 31000,
		y_min = 1,
		schematic = minetest.get_modpath("core") .. "/schematics/acacia_log.mts",
		flags = "place_center_x",
		rotation = "random",
		spawn_by = "core:dirt_with_dry_grass",
		num_spawn_by = 8,
	})

	-- Aspen tree and log

	minetest.register_decoration({
		name = "core:aspen_tree",
		deco_type = "schematic",
		place_on = {"core:dirt_with_grass"},
		sidelen = 16,
		noise_params = {
			offset = 0.0,
			scale = -0.015,
			spread = {x = 250, y = 250, z = 250},
			seed = 2,
			octaves = 3,
			persist = 0.66
		},
		biomes = {"deciduous_forest"},
		y_max = 31000,
		y_min = 1,
		schematic = minetest.get_modpath("core") .. "/schematics/aspen_tree.mts",
		flags = "place_center_x, place_center_z",
	})

	minetest.register_decoration({
		name = "core:aspen_log",
		deco_type = "schematic",
		place_on = {"core:dirt_with_grass"},
		place_offset_y = 1,
		sidelen = 16,
		noise_params = {
			offset = 0.0,
			scale = -0.0008,
			spread = {x = 250, y = 250, z = 250},
			seed = 2,
			octaves = 3,
			persist = 0.66
		},
		biomes = {"deciduous_forest"},
		y_max = 31000,
		y_min = 1,
		schematic = minetest.get_modpath("core") .. "/schematics/aspen_log.mts",
		flags = "place_center_x",
		rotation = "random",
		spawn_by = "core:dirt_with_grass",
		num_spawn_by = 8,
	})

	-- Large cactus

	minetest.register_decoration({
		name = "core:large_cactus",
		deco_type = "schematic",
		place_on = {"core:desert_sand"},
		sidelen = 16,
		noise_params = {
			offset = -0.0003,
			scale = 0.0009,
			spread = {x = 200, y = 200, z = 200},
			seed = 230,
			octaves = 3,
			persist = 0.6
		},
		biomes = {"desert"},
		y_max = 31000,
		y_min = 4,
		schematic = minetest.get_modpath("core") .. "/schematics/large_cactus.mts",
		flags = "place_center_x, place_center_z",
		rotation = "random",
	})

	-- Cactus

	minetest.register_decoration({
		name = "core:cactus",
		deco_type = "simple",
		place_on = {"core:desert_sand"},
		sidelen = 16,
		noise_params = {
			offset = -0.0003,
			scale = 0.0009,
			spread = {x = 200, y = 200, z = 200},
			seed = 230,
			octaves = 3,
			persist = 0.6
		},
		biomes = {"desert"},
		y_max = 31000,
		y_min = 4,
		decoration = "core:cactus",
		height = 2,
		height_max = 5,
	})

	-- Papyrus

	minetest.register_decoration({
		name = "core:papyrus",
		deco_type = "schematic",
		place_on = {"core:dirt"},
		sidelen = 16,
		noise_params = {
			offset = -0.3,
			scale = 0.7,
			spread = {x = 200, y = 200, z = 200},
			seed = 354,
			octaves = 3,
			persist = 0.7
		},
		biomes = {"savanna_shore"},
		y_max = 0,
		y_min = 0,
		schematic = minetest.get_modpath("core") .. "/schematics/papyrus.mts",
	})

	-- Bush

	minetest.register_decoration({
		name = "core:bush",
		deco_type = "schematic",
		place_on = {"core:dirt_with_grass"},
		sidelen = 16,
		noise_params = {
			offset = -0.004,
			scale = 0.01,
			spread = {x = 100, y = 100, z = 100},
			seed = 137,
			octaves = 3,
			persist = 0.7,
		},
		biomes = {"grassland", "deciduous_forest",
			"floatland_grassland"},
		y_max = 31000,
		y_min = 1,
		schematic = minetest.get_modpath("core") .. "/schematics/bush.mts",
		flags = "place_center_x, place_center_z",
	})

	-- Blueberry bush

	minetest.register_decoration({
		name = "core:blueberry_bush",
		deco_type = "schematic",
		place_on = {"core:dirt_with_grass", "core:dirt_with_snow"},
		sidelen = 16,
		noise_params = {
			offset = -0.004,
			scale = 0.01,
			spread = {x = 100, y = 100, z = 100},
			seed = 697,
			octaves = 3,
			persist = 0.7,
		},
		biomes = {"grassland", "snowy_grassland"},
		y_max = 31000,
		y_min = 1,
		place_offset_y = 1,
		schematic = minetest.get_modpath("core") .. "/schematics/blueberry_bush.mts",
		flags = "place_center_x, place_center_z",
	})

	-- Acacia bush

	minetest.register_decoration({
		name = "core:acacia_bush",
		deco_type = "schematic",
		place_on = {"core:dirt_with_dry_grass"},
		sidelen = 16,
		noise_params = {
			offset = -0.004,
			scale = 0.01,
			spread = {x = 100, y = 100, z = 100},
			seed = 90155,
			octaves = 3,
			persist = 0.7,
		},
		biomes = {"savanna"},
		y_max = 31000,
		y_min = 1,
		schematic = minetest.get_modpath("core") .. "/schematics/acacia_bush.mts",
		flags = "place_center_x, place_center_z",
	})

	-- Pine bush

	minetest.register_decoration({
		name = "core:pine_bush",
		deco_type = "schematic",
		place_on = {"core:dirt_with_snow"},
		sidelen = 16,
		noise_params = {
			offset = -0.004,
			scale = 0.01,
			spread = {x = 100, y = 100, z = 100},
			seed = 137,
			octaves = 3,
			persist = 0.7,
		},
		biomes = {"taiga", "snowy_grassland"},
		y_max = 31000,
		y_min = 4,
		schematic = minetest.get_modpath("core") .. "/schematics/pine_bush.mts",
		flags = "place_center_x, place_center_z",
	})

	-- Grasses

	register_grass_decoration(-0.03,  0.09,  5)
	register_grass_decoration(-0.015, 0.075, 4)
	register_grass_decoration(0,      0.06,  3)
	register_grass_decoration(0.015,  0.045, 2)
	register_grass_decoration(0.03,   0.03,  1)

	-- Dry grasses

	register_dry_grass_decoration(0.01, 0.05,  5)
	register_dry_grass_decoration(0.03, 0.03,  4)
	register_dry_grass_decoration(0.05, 0.01,  3)
	register_dry_grass_decoration(0.07, -0.01, 2)
	register_dry_grass_decoration(0.09, -0.03, 1)

	-- Ferns

	register_fern_decoration(14936, 3)
	register_fern_decoration(801,   2)
	register_fern_decoration(5,     1)

	-- Junglegrass

	minetest.register_decoration({
		name = "core:junglegrass",
		deco_type = "simple",
		place_on = {"core:dirt_with_rainforest_litter"},
		sidelen = 80,
		fill_ratio = 0.1,
		biomes = {"rainforest"},
		y_max = 31000,
		y_min = 1,
		decoration = "core:junglegrass",
	})

	-- Dry shrub

	minetest.register_decoration({
		name = "core:dry_shrub",
		deco_type = "simple",
		place_on = {"core:desert_sand",
			"core:sand", "core:silver_sand"},
		sidelen = 16,
		noise_params = {
			offset = 0,
			scale = 0.02,
			spread = {x = 200, y = 200, z = 200},
			seed = 329,
			octaves = 3,
			persist = 0.6
		},
		biomes = {"desert", "sandstone_desert", "cold_desert"},
		y_max = 31000,
		y_min = 2,
		decoration = "core:dry_shrub",
		param2 = 4,
	})

	-- Marram grass

	minetest.register_decoration({
		name = "core:marram_grass",
		deco_type = "simple",
		place_on = {"core:sand"},
		sidelen = 4,
		noise_params = {
			offset = -0.4,
			scale = 3.0,
			spread = {x = 16, y = 16, z = 16},
			seed = 513337,
			octaves = 1,
			persist = 0.5,
			flags = "absvalue"
		},
		biomes = {"coniferous_forest_dunes", "grassland_dunes"},
		y_max = 6,
		y_min = 4,
		decoration = {
			"core:marram_grass_1",
			"core:marram_grass_2",
			"core:marram_grass_3",
		},
	})

	-- Tundra moss

	minetest.register_decoration({
		deco_type = "simple",
		place_on = {"core:permafrost_with_stones"},
		sidelen = 4,
		noise_params = {
			offset = -0.8,
			scale = 2.0,
			spread = {x = 100, y = 100, z = 100},
			seed = 53995,
			octaves = 3,
			persist = 1.0
		},
		biomes = {"tundra"},
		y_max = 50,
		y_min = 2,
		decoration = "core:permafrost_with_moss",
		place_offset_y = -1,
		flags = "force_placement",
	})

	-- Tundra patchy snow

	minetest.register_decoration({
		deco_type = "simple",
		place_on = {
			"core:permafrost_with_moss",
			"core:permafrost_with_stones",
			"core:stone",
			"core:gravel"
		},
		sidelen = 4,
		noise_params = {
			offset = 0,
			scale = 1.0,
			spread = {x = 100, y = 100, z = 100},
			seed = 172555,
			octaves = 3,
			persist = 1.0
		},
		biomes = {"tundra", "tundra_beach"},
		y_max = 50,
		y_min = 1,
		decoration = "core:snow",
	})

	-- Coral reef

	minetest.register_decoration({
		name = "core:corals",
		deco_type = "simple",
		place_on = {"core:sand"},
		place_offset_y = -1,
		sidelen = 4,
		noise_params = {
			offset = -4,
			scale = 4,
			spread = {x = 50, y = 50, z = 50},
			seed = 7013,
			octaves = 3,
			persist = 0.7,
		},
		biomes = {
			"desert_ocean",
			"savanna_ocean",
			"rainforest_ocean",
		},
		y_max = -2,
		y_min = -8,
		flags = "force_placement",
		decoration = {
			"core:coral_green", "core:coral_pink",
			"core:coral_cyan", "core:coral_brown",
			"core:coral_orange", "core:coral_skeleton",
		},
	})

	-- Kelp

	minetest.register_decoration({
		name = "core:kelp",
		deco_type = "simple",
		place_on = {"core:sand"},
		place_offset_y = -1,
		sidelen = 16,
		noise_params = {
			offset = -0.04,
			scale = 0.1,
			spread = {x = 200, y = 200, z = 200},
			seed = 87112,
			octaves = 3,
			persist = 0.7
		},
		biomes = {
			"taiga_ocean",
			"snowy_grassland_ocean",
			"grassland_ocean",
			"coniferous_forest_ocean",
			"deciduous_forest_ocean",
			"sandstone_desert_ocean",
			"cold_desert_ocean"},
		y_max = -5,
		y_min = -10,
		flags = "force_placement",
		decoration = "core:sand_with_kelp",
		param2 = 48,
		param2_max = 96,
	})
end


--
-- Detect mapgen, flags and parameters to select functions
--

-- Get setting or core
local mgv7_spflags = minetest.get_mapgen_setting("mgv7_spflags") or
	"mountains, ridges, nofloatlands, caverns"
local captures_float = string.match(mgv7_spflags, "floatlands")
local captures_nofloat = string.match(mgv7_spflags, "nofloatlands")

-- Get setting or core
-- Make global for mods to use to register floatland biomes
core.mgv7_floatland_level =
	minetest.get_mapgen_setting("mgv7_floatland_level") or 1280
core.mgv7_shadow_limit =
	minetest.get_mapgen_setting("mgv7_shadow_limit") or 1024

minetest.clear_registered_biomes()
minetest.clear_registered_ores()
minetest.clear_registered_decorations()

local mg_name = minetest.get_mapgen_setting("mg_name")

if mg_name == "v6" then
	core.register_mgv6_ores()
	core.register_mgv6_decorations()
-- Need to check for 'nofloatlands' because that contains
-- 'floatlands' which makes the second condition true.
elseif mg_name == "v7" and
		captures_float == "floatlands" and
		captures_nofloat ~= "nofloatlands" then
	-- Mgv7 with floatlands and floatland biomes
	core.register_biomes(core.mgv7_shadow_limit - 1)
	core.register_floatland_biomes(
		core.mgv7_floatland_level, core.mgv7_shadow_limit)
	core.register_ores()
	core.register_decorations()
else
	core.register_biomes(31000)
	core.register_ores()
	core.register_decorations()
end
