

minetest.register_node("diamond_arts:fake_diamond_block", {
	description = "fake diamond block",
	tiles = {"diamond_arts-block.png"},
		is_ground_content = false,
		groups = {cracky=3, stone=4}
})
minetest.register_craft({
	type = "shapeless",
	output = "diamond_arts:fake_diamond_block 1",
	recipe = {
		"dye:blue",
		"dye:black",
		"dye:blue",
		"default:pine_wood ",
		"default:pine_wood ",
		"default:pine_wood ",
		"default:pine_wood ",
		"default:pine_wood ",
		"default:pine_wood ",
	},
})
minetest.register_node("diamond_arts:fake_diamond_glass", {
	description = "fake diamond glass",
	drawtype = "glasslike",
	paramtype = "light",
	tiles = {"diamond_arts-glassblock.png"},
	is_ground_content = false,
	sunlight_propagates = true,
	-- sounds = default.node_sound_glass_defaults(),
	groups = {cracky=3,oddly_breakable_by_hand=3},
})
minetest.register_craft({
	type = "cooking",
	output = "diamond_arts:fake_diamond_glass",
	recipe = "diamond_arts:fake_diamond_block",
	cooktime = 4,
})

minetest.register_node("diamond_arts:fake_diamond_ladder", {
	description = "fake diamond ladder",
	drawtype = "signlike",
	tiles = {"diamond_arts-ladder.png"},
	inventory_image = "diamond_arts-ladder.png",
	wield_image = "diamond_arts_fake-diamond-ladder.png",
	paramtype = "light",
	paramtype2 = "wallmounted",
	sunlight_propagates = true,
	walkable = false,
	climbable = true,
	is_ground_content = false,
	selection_box = {
		type = "wallmounted",
		--wall_top = = <default>
		--wall_bottom = = <default>
		--wall_side = = <default>
	},
	groups = {choppy = 2, oddly_breakable_by_hand = 3, flammable = 2},
	legacy_wallmounted = true,
	-- sounds = default.node_sound_wood_defaults(),
})
minetest.register_craft({
	type=shaped,
	output = "diamond_arts:fake_diamond_ladder",
	recipe = {{"diamond_arts:fake_diamond_block",""                               ,"diamond_arts:fake_diamond_block"},
		  {"diamond_arts:fake_diamond_block","diamond_arts:fake_diamond_block","diamond_arts:fake_diamond_block"},
		  {"diamond_arts:fake_diamond_block",""                               ,"diamond_arts:fake_diamond_block"}}
})
