-- support for i18n
local S = armor_i18n.gettext

if armor.materials.nether then
	armor:register_armor("3d_armor:helmet_nether", {
		description = S("Nether Helmet"),
		inventory_image = "3d_armor_inv_helmet_nether.png",
		groups = {armor_head=1, armor_heal=0, armor_use=300, flammable=1},
		armor_groups = {fleshy=5},
		damage_groups = {cracky=3, snappy=2, choppy=3, crumbly=2, level=1},
	})
	armor:register_armor("3d_armor:chestplate_nether", {
		description = S("Nether Chestplate"),
		inventory_image = "3d_armor_inv_chestplate_nether.png",
		groups = {armor_torso=1, armor_heal=0, armor_use=300, flammable=1},
		armor_groups = {fleshy=10},
		damage_groups = {cracky=3, snappy=2, choppy=3, crumbly=2, level=1},
	})
	armor:register_armor("3d_armor:leggings_nether", {
		description = S("Nether Leggings"),
		inventory_image = "3d_armor_inv_leggings_nether.png",
		groups = {armor_legs=1, armor_heal=0, armor_use=300, flammable=1},
		armor_groups = {fleshy=10},
		damage_groups = {cracky=3, snappy=2, choppy=3, crumbly=2, level=1},
	})
	armor:register_armor("3d_armor:boots_nether", {
		description = S("Nether Boots"),
		inventory_image = "3d_armor_inv_boots_nether.png",
		armor_groups = {fleshy=5},
		damage_groups = {cracky=3, snappy=2, choppy=3, crumbly=2, level=1},
		groups = {armor_feet=1, armor_heal=0, armor_use=300, flammable=1},
	})
end

for k, v in pairs(armor.materials) do
	minetest.register_craft({
		output = "3d_armor:helmet_"..k,
		recipe = {
			{v, v, v},
			{v, "", v},
			{"", "", ""},
		},
	})
	minetest.register_craft({
		output = "3d_armor:chestplate_"..k,
		recipe = {
			{v, "", v},
			{v, v, v},
			{v, v, v},
		},
	})
	minetest.register_craft({
		output = "3d_armor:leggings_"..k,
		recipe = {
			{v, v, v},
			{v, "", v},
			{v, "", v},
		},
	})
	minetest.register_craft({
		output = "3d_armor:boots_"..k,
		recipe = {
			{v, "", v},
			{v, "", v},
		},
	})
end
