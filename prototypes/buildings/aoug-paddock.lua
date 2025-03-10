RECIPE {
    type = "recipe",
    name = "auog-paddock",
    energy_required = 2,
    enabled = true,
    ingredients = {
        {"stone", 100},
        {"soil", 300},
        {"iron-plate", 80}
    },
    results = {
        {"auog-paddock", 1}
    }
}

ITEM {
    type = "item",
    name = "auog-paddock",
    icon = "__pyhightech__/graphics/icons/auog-paddock.png",
    icon_size = 32,
    flags = {},
    subgroup = "py-hightech-buildings",
    order = "c",
    place_result = "auog-paddock",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "auog-paddock",
    icon = "__pyhightech__/graphics/icons/auog-paddock.png",
	icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "auog-paddock"},
    fast_replaceable_group = "auog-paddock",
    max_health = 100,
    corpse = "medium-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-3.6, -3.6}, {3.6, 3.6}},
    selection_box = {{-4.0, -4.0}, {4.0, 4.0}},
    match_animation_speed_to_activity = false,
    module_specification = {
        module_slots = 1
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    crafting_categories = {"auog"},
    crafting_speed = 1,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = -25,
    },
    energy_usage = "50kW",
    ingredient_count = 10,
    animation = {
        layers = {
            {
                filename = "__pyhightech__/graphics/entity/auog-paddock/left.png",
                width = 128,
                height = 256,
                line_length = 16,
                frame_count = 128,
                animation_speed = 0.3,
                shift = util.by_pixel(-64, 0)
            },
            {
                filename = "__pyhightech__/graphics/entity/auog-paddock/right.png",
                width = 128,
                height = 256,
                line_length = 16,
                frame_count = 128,
                animation_speed = 0.3,
                shift = util.by_pixel(64, 0)
            }
        }
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pyhightech__/sounds/auog-paddock.ogg", volume = 1.5},
        idle_sound = {filename = "__pyhightech__/sounds/auog-paddock.ogg", volume = 1.1},
        apparent_volume = 2.5
    }
}
