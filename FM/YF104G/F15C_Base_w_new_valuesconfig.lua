-- BEGIN -- this part of the file is not intended for an end-user editing
--[[ --------------------------------------------------------------- ]]--

-- damage_omega = 30.0, -- (deg?) speed threshold of jamming during impact of rotation limiter
-- state_angle_0 = 6.131341662, -- (deg?) designed angle of retracted gear with horizontal axis of plane
-- state_angle_1 = -2.995164152, -- (deg?) designed angle of released gear with vertical axis of plane
-- mount_pivot_x = -0.274, -- (m) X-coordinate of attachment to fuselage in body-axis system
-- mount_post_radius = 0.657, -- (m) distance from strut-axis to attachment point of piston to gear stand
-- mount_length = 0.604555117, -- (m) What is the difference between this and the post_radius? length of angle brace in retracted configuration
-- mount_angle_1 = -3.138548523, -- (deg?) length of Position (vector) from attaxhment point
-- post_length = 1.748, -- (m) distance from rotation-axis of strut to wheel-axis
-- wheel_axle_offset = 0.05, -- (m) displacement wheel axis relative to strut
-- self_attitude = false, -- true if gear is self-oriented (Alba or Yak-52 example)

-- amortizer_min_length = 0.0, -- (m) rate of (minimum spring lenght / minimum length of damper)
-- amortizer_max_length = 0.397, -- (m) same as previous but max length
-- amortizer_basic_length = 0.397, -- (m) rate of (spring length in free (without load) condition / damper length in free (without load) condition)
-- amortizer_spring_force_factor = 1.6e+13, -- (??) spring tension factor (see k Wik)
-- amortizer_spring_force_factor_rate = 20.0, -- (??) Степень probably not full comment
-- amortizer_static_force = 80000.0, -- (N?) static reaction force of damper
-- amortizer_reduce_length = 0.377, -- (m) total suspension compression distance in non-load condition
-- amortizer_direct_damper_force_factor = 45000.0, -- (??) damper of positive movement
-- amortizer_back_damper_force_factor = 15000.0, -- (??) damper of negative (reversed) movement

-- wheel_radius = 0.308, -- (m) Tire radius
-- wheel_static_friction_factor = 0.65 , -- (unitless) Static friction factor when wheel not moves
-- wheel_roll_friction_factor = 0.025, -- (unitless) Rolling friction factor when wheel not moves
-- wheel_damage_force_factor = 250.0, --wheel cover (tire) strength force (not sure)
-- wheel_brake_moment_max = 15000, -- (N-m) Max braking moment torque

-- moment_od_inertia (old) =  {38912  ,254758,223845,-705},--Ix,Iy,Iz,Ixy

YF104G = {
center_of_mass		= {-0.172  ,  -0.6,	   0},--x,y,z
moment_of_inertia 	= {4811 , 80900, 79465,-350},--Ix,Iy,Iz,Ixy// Ixy geschätzt
suspension 			= {
	  { -- NOSE WHEEL
		  wheel_axle_offset 					= 0.0,
		  self_attitude     					= false,--zuvor war es true
		  --amortizer_min_length     			= 0.0,
		  amortizer_max_length     				= 0.37,
		  amortizer_basic_length     			= 0.37,
		  amortizer_spring_force_factor   		= 4000000.0, -- force = spring_force_factor * pow(reduce_length, amortizer_spring_force_factor_rate
		  amortizer_spring_force_factor_rate  	= 3,
		  amortizer_static_force     			= 500.0,
		  amortizer_reduce_length     			= 0.36,
		  amortizer_direct_damper_force_factor 	= 20000,
		  amortizer_back_damper_force_factor  	= 12000,

		  anti_skid_installed 				= false,
		  filter_yaw						= false,--NEU eingefügt aus F16C
		  yaw_limit							= math.rad(32.0),--NEU eingefügt zum limitieren des Bugradwinkels

		  wheel_radius      					= 0.377, -- changed back
		  wheel_static_friction_factor  		= 0.65 ,
		  wheel_side_friction_factor    		= 0.65 ,
		  wheel_roll_friction_factor    		= 0.1 ,
		  wheel_glide_friction_factor   		= 0.30 ,
		  wheel_damage_force_factor     		= 450.0, --war 450
		  wheel_damage_speedX					= 250.0,--NEU übernommen von F16
		  wheel_damage_delta_speedX				= 25.0,--NEU übernommen von F16


		  arg_post     							= 0,
		  arg_amortizer    						= 1,
		  arg_wheel_rotation 					= 101,
		  arg_wheel_damage   					= 134
	  },
	  { -- LEFT WHEEL
		  --amortizer_min_length     			= 0.0,
		  amortizer_max_length     				= 0.228,
		  amortizer_basic_length     			= 0.228,
		  amortizer_spring_force_factor   		= 18000000.0,--war 11000000 -- force = spring_force_factor * pow(reduce_length, amortizer_spring_force_factor_rate
		  amortizer_spring_force_factor_rate  	= 3,
		  amortizer_static_force     			= 15000.0,--hier von 8000.0 erhöht auf 15k, jetzt 12
		  amortizer_reduce_length     			= 0.21,
		  amortizer_direct_damper_force_factor 	= 50000.0,
		  amortizer_back_damper_force_factor  	= 35000.0,
		  allowable_hard_contact_length			= 0.20,--NEU eingefügt

		  anti_skid_installed 					= true,

		  wheel_radius      					= 0.486, -- changed back
		  wheel_static_friction_factor  		= 0.75 ,
		  wheel_side_friction_factor    		= 0.85 ,
		  wheel_roll_friction_factor    		= 0.08 ,
		  wheel_glide_friction_factor   		= 0.65 ,
		  wheel_damage_force_factor     		= 500.0,--war 450
		  wheel_damage_speedX					= 250,--NEU; F16 übernommen
		  wheel_damage_delta_speedX				= 25.0,--NEU F16 übernommen
		  wheel_brake_moment_max				= 15000.0,

		  arg_post     							= 5,
		  arg_amortizer    						= 6,
		  arg_wheel_rotation 					= 102,
		  arg_wheel_damage   					= 136
	  },
	  {  -- RIGHT WHEEL
		  --amortizer_min_length     			= 0.0,
		  amortizer_max_length    		 		= 0.228,
		  amortizer_basic_length     			= 0.228,
		  amortizer_spring_force_factor   		= 18000000.0,--war 11000000.0 -- 10000 -- force = spring_force_factor * pow(reduce_length, amortizer_spring_force_factor_rate
		  amortizer_spring_force_factor_rate  	= 3,
		  amortizer_static_force     			= 15000.0,--von 15k auf 12k
		  amortizer_reduce_length     			= 0.21,
		  amortizer_direct_damper_force_factor 	= 50000.0,
		  amortizer_back_damper_force_factor  	= 35000.0,
		  allowable_hard_contact_length			= 0.20,--NEU eingefügt

		  anti_skid_installed = true,

		  wheel_radius      			= 0.486, -- changed back
		  wheel_static_friction_factor  = 0.75 ,
		  wheel_side_friction_factor    = 0.85 ,
		  wheel_roll_friction_factor    = 0.08 ,
		  wheel_glide_friction_factor   = 0.65 ,
		  wheel_damage_force_factor     = 450.0,--war 450
		  wheel_damage_speedX			= 250, --NEU F16 übernommen
		  wheel_damage_delta_speedX		= 25.0,--NEU F16 übernommen
		  wheel_brake_moment_max		= 15000.0,

		  arg_post     					= 3,
		  arg_amortizer    				= 4,
		  arg_wheel_rotation 			= 103,
		  arg_wheel_damage   			= 135
	  }
	}, -- gears

disable_built_in_oxygen_system	= true,
--[[ ------------------------------------------------------------- ]]--
-- END -- this part of the file is not intended for an end-user editing

-- view shake amplitude
cs_shakeAoA0 				=   10, -- shake0 start at AoA 17° NEW//NEW 13° // NEW 10
cs_shakeAoA1 				= 	14, -- shake1 start at AoA 19° NEW// NEW 16° // NEW 14
cs_shakeNy0 				= 	5.5, -- shake0 start bei 6,5 Gs NEW//NEW 5,5 Gs
cs_shakeNy1 				= 	6.5, -- shake1 start at 7,5 Gs NEW//NEW 6,5 Gs
cs_shakeAmpl 				=   0.7, -- shake amplitude NEW // NEW 0.7
cs_shakeFreq 				= 	3, -- shake frequency NEW // NEW 5

minor_shake_ampl = 0.40, --was 0.21
major_shake_ampl = 0.75, --was 0.5

-- debug
debugLine = "{M}:%1.3f {IAS}:%4.1f {AoA}:%2.1f {ny}:%2.1f {nx}:%1.2f {AoS}:%2.1f {mass}:%2.1f {Fy}:%2.1f {Fx}:%2.1f {wx}:%.1f {wy}:%.1f {wz}:%.1f {Vy}:%2.1f {dPsi}:%2.1f",
record_enabled = false,
}
