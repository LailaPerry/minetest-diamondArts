
minetest.register_node("diamond_arts:fake_diamond_block", {
	description = "Faux Diamond Block",
	tiles = {"diamond_arts-block.png"},
	is_ground_content = false,
	groups = {cracky = 3},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_craft({
	output = "diamond_arts:fake_diamond_block 4",
	recipe = {
		{"default:glass", "default:stone", "default:glass"},
		{"default:stone", "dye:cyan", "default:stone"},
		{"default:glass", "default:stone", "default:glass"},
	}
})


minetest.register_node("diamond_arts:fake_diamond_glass", {
        description = ("Faux Diamond Glass"),
	drawtype = "glasslike_framed_optional",
	tiles = {"diamond_arts-glassblock.png", "diamond_arts-glassblock-detail.png"},
	use_texture_alpha = "clip", 
	paramtype = "light",
	sunlight_propagates = true,
	is_ground_content = false,
	groups = {cracky = 3, oddly_breakable_by_hand = 3},
	sounds = default.node_sound_glass_defaults(),
})
minetest.register_craft({
	type = "cooking",
	output = "diamond_arts:fake_diamond_glass",
	recipe = "diamond_arts:fake_diamond_block",
	cooktime = 4,
})

minetest.register_node("diamond_arts:fake_diamond_ladder", {
	description = "Faux Diamond Ladder",
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
	groups = {cracky = 3, oddly_breakable_by_hand = 3, flammable = 2},
	legacy_wallmounted = true,
	sounds = default.node_sound_stone_defaults(),
})
minetest.register_craft({
	type=shaped,
	output = "diamond_arts:fake_diamond_ladder 5",
	recipe = {{"diamond_arts:fake_diamond_block",""                               ,"diamond_arts:fake_diamond_block"},
		  {"diamond_arts:fake_diamond_block","diamond_arts:fake_diamond_block","diamond_arts:fake_diamond_block"},
		  {"diamond_arts:fake_diamond_block",""                               ,"diamond_arts:fake_diamond_block"}}
})
