local pipe = {
    south = {
        filename = "__pyhightech__/graphics/entity/kicalk-plantation/bottom.png",
        priority = "extra-high",
        width = 229,
        height = 235,
    }
}

RECIPE {
    type = "recipe",
    name = "kicalk-plantation",
    energy_required = 2,
    enabled = false,
    ingredients = {
        {"botanical-nursery", 2},
        {"storage-tank", 1}, --replace py-tank-5000
        {"classifier", 1},

    },
    results = {
        {"kicalk-plantation", 1}
    }
}:add_unlock("coal-processing-1")

ITEM {
    type = "item",
    name = "kicalk-plantation",
    icon = "__pyhightech__/graphics/icons/kicalk-plantation.png",
    icon_size = 32,
    flags = {},
    subgroup = "py-hightech-buildings",
    order = "b",
    place_result = "kicalk-plantation",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "kicalk-plantation",
    icon = "__pyhightech__/graphics/icons/kicalk-plantation.png",
	icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "kicalk-plantation"},
    fast_replaceable_group = "kicalk-plantation",
    max_health = 100,
    corpse = "big-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-3.2, -3.2}, {3.2, 3.2}},
    selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
    match_animation_speed_to_activity = false,
    module_specification = {
        module_slots = 1
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    crafting_categories = {"kicalk"},
    crafting_speed = 2,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = -25,
    },
    energy_usage = "450kW",
    ingredient_count = 20,
    animation = {
        layers = {
            {
                filename = "__pyhightech__/graphics/entity/kicalk-plantation/kicalk-plantation.png",
				priority = "extra-high",
                width = 229,
                height = 235,
                line_length = 8,
                frame_count = 50,
                animation_speed = 0.4,
                shift = util.by_pixel(0, -5),
            },
            {
                filename = "__pyhightech__/graphics/entity/kicalk-plantation/shadow.png",
				priority = "extra-high",
                width = 253,
                height = 242,
                line_length = 8,
                frame_count = 50,
                animation_speed = 0.4,
                shift = util.by_pixel(18, -1),
                draw_as_shadow = true,
            }
        }
    },
    fluid_boxes = {
        --1
        {
            production_type = "input",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.1, -4.1}, nil, nil, pipe),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {0.0, 4.0}}}
        },
        {
            production_type = "input",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.1, -4.1}, nil, nil, pipe),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {0.0, -4.0}}}
        },
        {
            production_type = "output",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.1, -4.1}, nil, nil, pipe),
            pipe_covers = DATA.Pipes.covers(false, false, true, true),
            base_level = 1,
            pipe_connections = {{type = "output", position = {-4.0, 0.0}}}
        },
        {
            production_type = "output",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.1, -4.1}, nil, nil, pipe),
            pipe_covers = DATA.Pipes.covers(false, false, true, true),
            base_level = 1,
            pipe_connections = {{type = "output", position = {4.0, 0.0}}}
        },
        off_when_no_fluid_recipe = true
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pyhightech__/sounds/kicalk-plantation.ogg", volume = 1.5},
        idle_sound = {filename = "__pyhightech__/sounds/kicalk-plantation.ogg", volume = 0.9},
        apparent_volume = 2.5
    }
}
