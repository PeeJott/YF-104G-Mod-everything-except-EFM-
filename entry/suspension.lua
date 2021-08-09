suspension		= {
    { -- NOSE WHEEL
    damage_element = 0,

    self_attitude     		 = true,
    damper_coeff			= 100.0,
    yaw_limit				= math.rad(29.0),
    amortizer_max_length     = 0.1279,
    amortizer_basic_length   = 0.1279,
    amortizer_spring_force_factor   = 3000000, -- force = spring_force_factor * pow(reduce_length, amortizer_spring_force_factor_rate)
    amortizer_spring_force_factor_rate   = 2,
    amortizer_static_force     			 = 7000 * 9.81 * 0.13 * 1.0,
    amortizer_reduce_length     		 = 0.12,
    amortizer_direct_damper_force_factor = 20000,
    amortizer_back_damper_force_factor   = 40000,
    
    wheel_moment_of_inertia			= 0.6,
    wheel_radius					= 0.2794,
    wheel_static_friction_factor	= 0.75,
    wheel_side_friction_factor		= 0.85,
    wheel_roll_friction_factor		= 0.04,
    wheel_glide_friction_factor		= 0.65,

    arg_post     = 0,
    arg_amortizer    = 1,
    arg_wheel_rotation = 101
    },
{-- LEFT WHEEL
    damage_element = 5,

      amortizer_min_length					= 0.0,
      amortizer_max_length     				= 0.238, 
      amortizer_basic_length   				= 0.238,
      amortizer_spring_force_factor   		= 70000000.0, -- force = spring_force_factor * pow(reduce_length, amortizer_spring_force_factor_rate)
      amortizer_spring_force_factor_rate		= 3,
      amortizer_static_force	   				= 7000 * 9.81 * 0.435 * 1.0,
      amortizer_reduce_length    				= 0.23,
      amortizer_direct_damper_force_factor	= 20000.0,
      amortizer_back_damper_force_factor		= 10000.0,

    wheel_kz_factor					= 0.2,
    wheel_moment_of_inertia			= 2.65,
    wheel_radius					= 0.3302,
    wheel_static_friction_factor	= 0.75,
    wheel_side_friction_factor		= 0.85,
    wheel_roll_friction_factor		= 0.04,
    wheel_glide_friction_factor		= 0.65,
    --wheel_damage_force_factor		= 250.0,
    wheel_damage_speed				= 150.0,
    wheel_brake_moment_max			= 4517.0,

    anti_skid_installed = true,

    arg_post     = 5,
      arg_amortizer    = 6,
    arg_wheel_rotation = 103
},
{-- RIGHT WHEEL
    damage_element = 3,

    amortizer_min_length					= 0.0,
    amortizer_max_length     				= 0.238, 
    amortizer_basic_length   				= 0.238,
    amortizer_spring_force_factor   		= 70000000.0, -- force = spring_force_factor * pow(reduce_length, amortizer_spring_force_factor_rate)
    amortizer_spring_force_factor_rate		= 3,
    amortizer_static_force	   				= 7000 * 9.81 * 0.435 * 1.0,
    amortizer_reduce_length    				= 0.23,
    amortizer_direct_damper_force_factor	= 20000.0,
    amortizer_back_damper_force_factor		= 10000.0,

    wheel_kz_factor					= 0.2,
    wheel_moment_of_inertia			= 2.65,
    wheel_radius					= 0.3302,
    wheel_static_friction_factor	= 0.75,
    wheel_side_friction_factor		= 0.85,
    wheel_roll_friction_factor		= 0.04,
    wheel_glide_friction_factor		= 0.65,
    --wheel_damage_force_factor		= 250.0,
    wheel_damage_speed				= 150.0,
    wheel_brake_moment_max			= 4517.0,

    anti_skid_installed = true,

    arg_post     = 3,
      arg_amortizer    = 4,
    arg_wheel_rotation = 102
}
}