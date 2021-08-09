
VSN_F104S =  {
      
		Name 			= 'YF104S',--AG
		DisplayName		= _('YF-104S'),--AG
        Picture 		= "YF104G.png",
        Rate 			= "50",
        Shape			= "YF104S",--AG	
        WorldID			=  WSTYPE_PLACEHOLDER, 
        
	shape_table_data 	= 
	{
		{
			file  	 	= 'YF104S';--AG
			life  	 	= 20; -- lifebar
			vis   	 	= 3; -- visibility gain.
			desrt    	= 'VSN_F104G-oblomok'; -- Name of destroyed object file name
			fire  	 	= { 300, 2}; 			-- Fire on the ground after destoyed: 300sec 2m
			username	= 'YF104S';--AG
			index       =  WSTYPE_PLACEHOLDER;
			classname   = "lLandPlane";
			positioning = "BYNORMAL";
		},
		{
			name  		= "VSN_F104G-oblomok";
			file  		= "VSN_F104G-oblomok";
			fire  		= { 240, 2};
		},
	},
	
	LandRWCategories = 
        {
        [1] = 
        {
			Name = "AircraftCarrier",
        },
        [2] = 
        {
            Name = "AircraftCarrier With Catapult",
        }, 
        [3] = 
        {
            Name = "AircraftCarrier With Tramplin",
        }, 
    }, -- end of LandRWCategories
        TakeOffRWCategories = 
        {
        [1] = 
        {
			Name = "AircraftCarrier",
        },
        [2] = 
        {
            Name = "AircraftCarrier With Catapult",
        }, 
        [3] = 
        {
            Name = "AircraftCarrier With Tramplin",
        }, 
    }, -- end of TakeOffRWCategories
	
	mapclasskey 		= "P0091000024",
	attribute  			= {wsType_Air, wsType_Airplane, wsType_Fighter, WSTYPE_PLACEHOLDER, "Fighters", "Refuelable", "Datalink", "Link16"},
	Categories= {"{78EFB7A2-FD52-4b57-A6A6-3BF0E1D6555F}", "Interceptor",},
	
		M_empty						=	13380,	-- kg  with pilot and nose load, F15
		M_nominal					=	19000,	-- kg (Empty Plus Full Internal Fuel)
		M_max						=	30845,	-- kg (Maximum Take Off Weight)
		M_fuel_max					=	6103,	-- kg (Internal Fuel Only)
		H_max						=	18300,	-- m  (Maximum Operational Ceiling)
		average_fuel_consumption	=	0.271,
		CAS_min						=	58,		-- Minimum CAS speed (m/s) (for AI)
		V_opt						=	220,	-- Cruise speed (m/s) (for AI)
		V_take_off					=	61,		-- Take off speed in m/s (for AI)
		V_land						=	71,		-- Land speed in m/s (for AI)
		has_afteburner				=	true,
		has_speedbrake				=	true,
		radar_can_see_ground		=	true,

		nose_gear_pos 				                = {3.672, -1.810, 0},   -- {3.146,	-1.563,	0},
	    nose_gear_amortizer_direct_stroke   		=  0,  -- down from nose_gear_pos !!!
	    nose_gear_amortizer_reversal_stroke  		=  0,  -- up 
	    nose_gear_amortizer_normal_weight_stroke 	=  0,   -- up 
	    nose_gear_wheel_diameter 	                =  0.377, -- in m
	
	    main_gear_pos 						 	    = {-0.80, -1.823, 1.270}, --{-0.846,	-1.579,	1.187},
	    main_gear_amortizer_direct_stroke	 	    =   0, --  down from main_gear_pos !!!
	    main_gear_amortizer_reversal_stroke  	    =   0, --  up 
	    main_gear_amortizer_normal_weight_stroke    =   0,-- down from main_gear_pos
	    main_gear_wheel_diameter 				    =   0.486, -- in m

		AOA_take_off				=	0.16,	-- AoA in take off (for AI)
		stores_number				=	12,
		bank_angle_max				=	60,		-- Max bank angle (for AI)
		Ny_min						=	-3,		-- Min G (for AI)
		Ny_max						=	8,		-- Max G (for AI)
		V_max_sea_level				=	403,	-- Max speed at sea level in m/s (for AI)
		V_max_h						=	736.11,	-- Max speed at max altitude in m/s (for AI)
		wing_area					=	56.5,	-- wing area in m2
		thrust_sum_max				=	13347,	-- thrust in kgf (64.3 kN)
		thrust_sum_ab				=	21952,	-- thrust in kgf (95.1 kN)
		Vy_max						=	275,	-- Max climb speed in m/s (for AI)
		flaps_maneuver				=	1,
		Mach_max					=	2.5,	-- Max speed in Mach (for AI)
		range						=	2540,	-- Max range in km (for AI)
		RCS							=	5,		-- Radar Cross Section m2
		Ny_max_e					=	8,		-- Max G (for AI)
		detection_range_max			=	250,
		IR_emission_coeff			=	0.91,	-- Normal engine -- IR_emission_coeff = 1 is Su-27 without afterburner. It is reference.
		IR_emission_coeff_ab		=	4,		-- With afterburner
		tand_gear_max				=	3.73,--XX  1.732 FA18 3.73, 
		tanker_type					=	0,--F14=2/S33=4/ M29=0/S27=0/F15=1/ F16=1/To=0/F18=2/A10A=1/ M29K=4/F4=0/
		wing_span					=	7.1,	--XX  wing spain in m
		wing_type 					= 	0,		-- 0=FIXED_WING/ 1=VARIABLE_GEOMETRY/ 2=FOLDED_WING/ 3=ARIABLE_GEOMETRY_FOLDED
		length						=	19.43,
		height						=	5.63,
		crew_size					=	1, --XX
		engines_count				=	1, --XX
		wing_tip_pos 				= 	{-3.304,	-0.30,	3.549},
		
		--EPLRS 						= true,--?
		TACAN_AA					= true,--?
		mechanimations = "Default",
		
		engines_nozzles = 
		{
			[1] = 
			{
					pos = 	{-6.40,	0.75,	0},
				elevation	=	2.1,--1.550
				diameter	=	1.0,
				exhaust_length_ab	=	5.4,
				exhaust_length_ab_K	=	0.60,
				smokiness_level     = 	0.6, 
			}, -- end of [1]
		}, -- end of engines_nozzles
		crew_members = 
		{
			[1] = 
			{
				ejection_seat_name	=	17,
				pilot_name			= 	19,
				drop_canopy_name	=	"vsn_f104g_fonar";
				pos = 	{5.050,	0.52,	0},
			}, -- end of [1]
		}, -- end of crew_members
		brakeshute_name	=	3,--Mig29=3/Su27=4/
		is_tanker	=	false,
		air_refuel_receptacle_pos = 	{-0.051,	0.911,	0},
		fires_pos = 
		{
			[1] = 	{-0.707,	0.553,	-0.213},
			[2] = 	{-0.037,	0.285,	1.391},
			[3] = 	{-0.037,	0.285,	-1.391},
			[4] = 	{-0.82,	0.265,	2.774},
			[5] = 	{-0.82,	0.265,	-2.774},
			[6] = 	{-0.82,	0.255,	4.274},
			[7] = 	{-0.82,	0.255,	-4.274},
			[8] = 	{-5.003,	0.261,	0},
			[9] = 	{-5.003,	0.261,	0},
			[10] = 	{-0.707,	0.453,	1.036},
			[11] = 	{-0.707,	0.453,	-1.036},
		}, -- end of fires_pos
		
		effects_presets = {
			{effect = "OVERWING_VAPOR", file = current_mod_path.."/Effects/VSN_F104G_overwingVapor.lua"},
		},
		
		chaff_flare_dispenser = 
		{
			[1] = 
			{
				dir = 	{0,	-1,	0},
				pos = 	{-1.185,	-1.728,	-0.878},
			}, -- end of [1]
			[2] = 
			{
				dir = 	{0,	-1,	0},
				pos = 	{-1.185,	-1.728,	0.878},
			}, -- end of [2]
		}, -- end of chaff_flare_dispenser

        -- Countermeasures
passivCounterm 		= {
CMDS_Edit 			= true,
SingleChargeTotal 	= 60,
chaff 				= {default = 30, increment = 30, chargeSz = 1},
flare 				= {default = 15, increment = 15, chargeSz = 2}
 },
	
	
        CanopyGeometry 	= {
            azimuth 	= {-145.0, 145.0},-- pilot view horizontal (AI)
            elevation 	= {-50.0, 90.0}-- pilot view vertical (AI)
        },

Sensors = {
RADAR 			= "AN/APG-63",--F15
RWR 			= "Abstract RWR"--F15
},
Countermeasures = {
ECM 			= "AN/ALQ-135"--F15
},
	Failures = {
			{ id = 'asc', 		label = _('ASC'), 		enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'autopilot', label = _('AUTOPILOT'), enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'hydro',  	label = _('HYDRO'), 	enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'l_engine',  label = _('L-ENGINE'), 	enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'r_engine',  label = _('R-ENGINE'), 	enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'radar',  	label = _('RADAR'), 	enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
		  --{ id = 'eos',  		label = _('EOS'), 		enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
		  --{ id = 'helmet',  	label = _('HELMET'), 	enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'mlws',  	label = _('MLWS'), 		enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'rws',  		label = _('RWS'), 		enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'ecm',   	label = _('ECM'), 		enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'hud',  		label = _('HUD'), 		enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'mfd',  		label = _('MFD'), 		enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },		
	},
	HumanRadio = {
		frequency 		= 127.5,  -- Radio Freq
		editable 		= true,
		minFrequency	= 100.000,
		maxFrequency 	= 156.000,
		modulation 		= MODULATION_AM
	},

Guns = {gun_mount("M_61", { count = 725 },{muzzle_pos = {7.95000, -0.2530000, -0.381000}})--  X, Z, Y
--1 × sechsläufige 20-mm-Gatling-Maschinenkanone General Electric T171 (M61) Vulcan mit 725 Schuss Munition

},

pylons_enumeration = {1, 11, 10, 2, 3, 9, 4, 8, 5, 7, 6},

	Pylons =     {

        pylon(1, 0, 0, 0, 0,
            {
                use_full_connector_position = true,
				arg 	  	  = 308,
				arg_increment = 0,
            },
            {
                --
            }
        ),
        pylon(2, 0, -1.200, 0.000, -3.47000,
            {
                use_full_connector_position = true,
				arg 	  	  = 309,
				arg_increment = 1,
            },
            {
                --{ CLSID = "{40EF17B7-F508-45de-8566-6FFECC0C1AB8}", arg_value = 0.5},	-- AIM-120C
                --{ CLSID = "{8D399DDA-FF81-4F14-904D-099B34FE7918}", arg_value = 0.5},	-- AIM-7M
                { CLSID	=	"{6CEB49FC-DED8-4DED-B053-E1F033FF72D3}", arg_value = 0.5}, -- AIM-9M
				{ CLSID	= "{A4BCC903-06C8-47bb-9937-A30FEDB4E741}", arg_value = 0.5}, --Smokewinder - red
			    { CLSID	= "{A4BCC903-06C8-47bb-9937-A30FEDB4E742}", arg_value = 0.5}, --Smokewinder - green
			    { CLSID	= "{A4BCC903-06C8-47bb-9937-A30FEDB4E743}", arg_value = 0.5}, --Smokewinder - blue
			    { CLSID	= "{A4BCC903-06C8-47bb-9937-A30FEDB4E744}", arg_value = 0.5}, --Smokewinder - white
			    { CLSID	= "{A4BCC903-06C8-47bb-9937-A30FEDB4E745}", arg_value = 0.5}, --Smokewinder - yellow
				{ CLSID = "{VSN_F104G_L_PTB}", arg_value = 0.8,attach_point_position = {0.0, 0.0 , 0.0 } },
            }
         ),
		 pylon(3, 0, -0.881000, -0.504000, -2.624000,
            {
                use_full_connector_position = true,
				arg 	  	  = 310,
				arg_increment = 1,
            },
            {
                -- -- F-104S
				--{ CLSID = "{40EF17B7-F508-45de-8566-6FFECC0C1AB8}", arg_value = 0.0},	-- AIM-120C
                { CLSID	= "{8D399DDA-FF81-4F14-904D-099B34FE7918}", arg_value = 0.0},	-- AIM-7M
				--{ CLSID = "{444BA8AE-82A7-4345-842E-76154EFCCA46}", arg_value = 0.0 }, -- AGM-65D-LAU-117
				{ CLSID = "{B06DD79A-F21E-4EB9-BD9D-AB3844618C93}", arg_value = 0.0 },--AGM-88C
				{ CLSID = "{7210496B-7B81-4B52-80D6-8529ECF847CD}", arg_value = 0.0 },--Kormoran
         		{ CLSID = "{7B8DCEB4-820B-4015-9B48-1028A4195692}", arg_value = 0.0},	-- AGM-119 
				{ CLSID = "{0D33DDAE-524F-4A4E-B5B8-621754FE3ADE}", arg_value = 0.0 },
				{ CLSID = "{BCE4E030-38E9-423E-98ED-24BE3DA87C32}", arg_value = 0.0 },--Mk-82
				{ CLSID = "{ADD3FAE1-EBF6-4EF9-8EFC-B36B5DDF1E6B}", arg_value = 0.0  },	--MK-20
				--{ CLSID = "{51F9AAE5-964F-4D21-83FB-502E3BFE5F8A}", arg_value = 0.0 },	--GBU-10
				{ CLSID	= "{08164777-5E9C-4B08-B48E-5AA7AFB246E2}" ,arg_value = 0.0},	--BL755
				--{ CLSID	= "{5335D97A-35A5-4643-9D9B-026C75961E52}" ,arg_value = 0.0},	--CBU-97
				{ CLSID = "{F72F47E5-C83A-4B85-96ED-D3E46671EE9A}" ,arg_value = 0.35},--B-8M1 - 20 S-8KOM
				{ CLSID = "{3858707D-F5D5-4bbb-BDD8-ABB0530EBC7C}" ,arg_value = 0.35},--S-24B	
				{ CLSID = "B-8M1 - 20 S-8OFP2"					   ,arg_value = 0.35},
				{ CLSID = "{3DFB7320-AB0E-11d7-9897-000476191836}" ,arg_value = 0.35},-- S-8TsM
                { CLSID = "{DB434044-F5D0-4F1F-9BA9-B73027E18DD3}", arg_value = 0.0},	-- AIM-9M x2
                { CLSID	= "{6CEB49FC-DED8-4DED-B053-E1F033FF72D3}", arg_value = 0.0}, -- AIM-9M
            }
        ),
		 pylon(4, 0, -0.800, -0.310, -1.900,
            {
                use_full_connector_position = true,
				arg 	  	  = 311,
				arg_increment = 1,
            },
            {
				--{ CLSID = "{40EF17B7-F508-45de-8566-6FFECC0C1AB8}", arg_value = 0.0},	-- AIM-120C
                --{ CLSID	= "{8D399DDA-FF81-4F14-904D-099B34FE7918}", arg_value = 0.0},	-- AIM-7M
				--{ CLSID = "{444BA8AE-82A7-4345-842E-76154EFCCA46}", arg_value = 0.0 }, -- AGM-65D-LAU-117
				--{ CLSID = "{B06DD79A-F21E-4EB9-BD9D-AB3844618C93}", arg_value = 0.0 },--AGM-88C
				--{ CLSID = "{7210496B-7B81-4B52-80D6-8529ECF847CD}", arg_value = 0.0 },--Kormoran
         		--{ CLSID = "{7B8DCEB4-820B-4015-9B48-1028A4195692}", arg_value = 0.0},	-- AGM-119 
				{ CLSID = "{0D33DDAE-524F-4A4E-B5B8-621754FE3ADE}", arg_value = 0.0 },
				{ CLSID = "{BCE4E030-38E9-423E-98ED-24BE3DA87C32}", arg_value = 0.0 },--Mk-82
				{ CLSID = "{ADD3FAE1-EBF6-4EF9-8EFC-B36B5DDF1E6B}", arg_value = 0.0  },	--MK-20
				--{ CLSID = "{51F9AAE5-964F-4D21-83FB-502E3BFE5F8A}", arg_value = 0.0 },	--GBU-10
				{ CLSID	= "{08164777-5E9C-4B08-B48E-5AA7AFB246E2}" ,arg_value = 0.0},	--BL755
				--{ CLSID	= "{5335D97A-35A5-4643-9D9B-026C75961E52}" ,arg_value = 0.0},	--CBU-97
				{ CLSID = "{F72F47E5-C83A-4B85-96ED-D3E46671EE9A}" ,arg_value = 0.35},--B-8M1 - 20 S-8KOM
				{ CLSID = "{3858707D-F5D5-4bbb-BDD8-ABB0530EBC7C}" ,arg_value = 0.35},--S-24B	
				{ CLSID = "B-8M1 - 20 S-8OFP2"					   ,arg_value = 0.35},
				{ CLSID = "{3DFB7320-AB0E-11d7-9897-000476191836}" ,arg_value = 0.35},-- S-8TsM
                --{ CLSID = "{DB434044-F5D0-4F1F-9BA9-B73027E18DD3}", arg_value = 0.0},	-- AIM-9M x2
                --{ CLSID	= "{6CEB49FC-DED8-4DED-B053-E1F033FF72D3}", arg_value = 0.0}, -- AIM-9M
				{ CLSID = "{VSN_F104G_PTB}", arg_value = 0.0,attach_point_position = {0.0, 0.0 , 0.0 } },
            }
         ),
        pylon(5, 0, 0, 0, 0,
            {
                use_full_connector_position = true,
				arg 	  	  = 312,
				arg_increment = 1,
            },
            {
               -- F-104S
			   { CLSID	=	"{6CEB49FC-DED8-4DED-B053-E1F033FF72D3}", arg_value = 0.0}, -- AIM-9M
            }
        ),
		pylon(6, 0, 0, 0, 0,
            {
                use_full_connector_position = true,
				arg 	  	  = 313,
				arg_increment = 1,
            },
            {
				{ CLSID = "{0519A264-0AB6-11d6-9193-00A0249B6F00}",attach_point_position = {0, 0.65 ,0 } },-- ELINT
				{ CLSID	=	"{6CEB49FC-DED8-4DED-B053-E1F033FF72D3}", arg_value = 0.0}, -- AIM-9M
				{ CLSID = "{0D33DDAE-524F-4A4E-B5B8-621754FE3ADE}", arg_value = 0.0 },
				{ CLSID = "{BCE4E030-38E9-423E-98ED-24BE3DA87C32}", arg_value = 0.0 },--Mk-82
				{ CLSID = "{ADD3FAE1-EBF6-4EF9-8EFC-B36B5DDF1E6B}", arg_value = 0.0  },	--MK-20
				--{ CLSID = "{51F9AAE5-964F-4D21-83FB-502E3BFE5F8A}", arg_value = 0.0 },	--GBU-10
				{ CLSID	= "{08164777-5E9C-4B08-B48E-5AA7AFB246E2}" ,arg_value = 0.0},	--BL755
				--{ CLSID	= "{5335D97A-35A5-4643-9D9B-026C75961E52}" ,arg_value = 0.0},	--CBU-97
				
            }
        ),
		pylon(7, 0, 0, 0, 0,
            {
                use_full_connector_position = true,
				arg 	  	  = 312,
				arg_increment = 1,
            },
            {
               -- F-104S
			   { CLSID	=	"{6CEB49FC-DED8-4DED-B053-E1F033FF72D3}", arg_value = 0.0}, -- AIM-9M
            }
        ),
		pylon(8, 0, -0.800, -0.310, 1.900,
            {
                use_full_connector_position = true,
				arg 	  	  = 315,
				arg_increment = 1,
            },
            {
				--{ CLSID = "{40EF17B7-F508-45de-8566-6FFECC0C1AB8}", arg_value = 0.0},	-- AIM-120C
                { CLSID	= "{8D399DDA-FF81-4F14-904D-099B34FE7918}", arg_value = 0.0},	-- AIM-7M
				--{ CLSID = "{444BA8AE-82A7-4345-842E-76154EFCCA46}", arg_value = 0.0 }, -- AGM-65D-LAU-117
				{ CLSID = "{B06DD79A-F21E-4EB9-BD9D-AB3844618C93}", arg_value = 0.0 },--AGM-88C
				{ CLSID = "{7210496B-7B81-4B52-80D6-8529ECF847CD}", arg_value = 0.0 },--Kormoran
				--{ CLSID = "{7B8DCEB4-820B-4015-9B48-1028A4195692}", arg_value = 0.0},	-- AGM-119
				{ CLSID = "{0D33DDAE-524F-4A4E-B5B8-621754FE3ADE}", arg_value = 0.0 },
				{ CLSID = "{BCE4E030-38E9-423E-98ED-24BE3DA87C32}", arg_value = 0.0 },--Mk-82
				{ CLSID = "{ADD3FAE1-EBF6-4EF9-8EFC-B36B5DDF1E6B}", arg_value = 0.0  },	--MK-20
				{ CLSID = "{51F9AAE5-964F-4D21-83FB-502E3BFE5F8A}", arg_value = 0.0 },	--GBU-10
            	{ CLSID	= "{08164777-5E9C-4B08-B48E-5AA7AFB246E2}" ,arg_value = 0.0},	--BL755
				--{ CLSID	= "{5335D97A-35A5-4643-9D9B-026C75961E52}" ,arg_value = 0.0},	--CBU-97
				{ CLSID = "{F72F47E5-C83A-4B85-96ED-D3E46671EE9A}" ,arg_value = 0.35},--B-8M1 - 20 S-8KOM
				{ CLSID = "{3858707D-F5D5-4bbb-BDD8-ABB0530EBC7C}" ,arg_value = 0.35},--S-24B	
				{ CLSID = "B-8M1 - 20 S-8OFP2"					   ,arg_value = 0.35},
				{ CLSID = "{3DFB7320-AB0E-11d7-9897-000476191836}" ,arg_value = 0.35},-- S-8TsM
                { CLSID = "{DB434044-F5D0-4F1F-9BA9-B73027E18DD3}", arg_value = 0.0},	-- AIM-9M x2
                { CLSID	= "{6CEB49FC-DED8-4DED-B053-E1F033FF72D3}", arg_value = 0.0}, -- AIM-9M
				{ CLSID = "{VSN_F104G_PTB}", arg_value = 0.0,attach_point_position = {0.0, 0.0 , 0.0 } },
            }
        ),
		pylon(9, 0, -0.918000, -0.498000, 2.663000,
            {
                use_full_connector_position = true,
				arg 	  	  = 316,
				arg_increment = 1,
            },
            {
                -- F-104S
				--{ CLSID = "{40EF17B7-F508-45de-8566-6FFECC0C1AB8}", arg_value = 0.0},	-- AIM-120C
                { CLSID	= "{8D399DDA-FF81-4F14-904D-099B34FE7918}", arg_value = 0.0},	-- AIM-7M
				--{ CLSID = "{444BA8AE-82A7-4345-842E-76154EFCCA46}", arg_value = 0.0 }, -- AGM-65D-LAU-117
				{ CLSID = "{B06DD79A-F21E-4EB9-BD9D-AB3844618C93}", arg_value = 0.0 },--AGM-88C
				{ CLSID = "{7210496B-7B81-4B52-80D6-8529ECF847CD}", arg_value = 0.0 },--Kormoran
         		--{ CLSID = "{7B8DCEB4-820B-4015-9B48-1028A4195692}", arg_value = 0.0},	-- AGM-119 
				{ CLSID = "{0D33DDAE-524F-4A4E-B5B8-621754FE3ADE}", arg_value = 0.0 },
				{ CLSID = "{BCE4E030-38E9-423E-98ED-24BE3DA87C32}", arg_value = 0.0 },--Mk-82
				{ CLSID = "{ADD3FAE1-EBF6-4EF9-8EFC-B36B5DDF1E6B}", arg_value = 0.0  },	--MK-20
				{ CLSID = "{51F9AAE5-964F-4D21-83FB-502E3BFE5F8A}", arg_value = 0.0 },	--GBU-10
				{ CLSID	= "{08164777-5E9C-4B08-B48E-5AA7AFB246E2}" ,arg_value = 0.0},	--BL755
				--{ CLSID	= "{5335D97A-35A5-4643-9D9B-026C75961E52}" ,arg_value = 0.0},	--CBU-97
				{ CLSID = "{F72F47E5-C83A-4B85-96ED-D3E46671EE9A}" ,arg_value = 0.35},--B-8M1 - 20 S-8KOM
				{ CLSID = "{3858707D-F5D5-4bbb-BDD8-ABB0530EBC7C}" ,arg_value = 0.35},--S-24B	
				{ CLSID = "B-8M1 - 20 S-8OFP2"					   ,arg_value = 0.35},
				{ CLSID = "{3DFB7320-AB0E-11d7-9897-000476191836}" ,arg_value = 0.35},-- S-8TsM
                { CLSID = "{DB434044-F5D0-4F1F-9BA9-B73027E18DD3}", arg_value = 0.0},	-- AIM-9M x2
                { CLSID	= "{6CEB49FC-DED8-4DED-B053-E1F033FF72D3}", arg_value = 0.0}, -- AIM-9M
            }
        ),
		pylon(10, 0, -1.200, 0.00, 3.47000,
            {
                use_full_connector_position = true,
				arg 	  	  = 317,
				arg_increment = 1,
            },
            {
                --{ CLSID = "{40EF17B7-F508-45de-8566-6FFECC0C1AB8}", arg_value = 0.5},	-- AIM-120C
                { CLSID = "{8D399DDA-FF81-4F14-904D-099B34FE7918}", arg_value = 0.5},	-- AIM-7M
                { CLSID	=	"{6CEB49FC-DED8-4DED-B053-E1F033FF72D3}", arg_value = 0.5}, -- AIM-9M
				{ CLSID	= "{A4BCC903-06C8-47bb-9937-A30FEDB4E741}", arg_value = 0.5}, --Smokewinder - red
			    { CLSID	= "{A4BCC903-06C8-47bb-9937-A30FEDB4E742}", arg_value = 0.5}, --Smokewinder - green
			    { CLSID	= "{A4BCC903-06C8-47bb-9937-A30FEDB4E743}", arg_value = 0.5}, --Smokewinder - blue
			    { CLSID	= "{A4BCC903-06C8-47bb-9937-A30FEDB4E744}", arg_value = 0.5}, --Smokewinder - white
			    { CLSID	= "{A4BCC903-06C8-47bb-9937-A30FEDB4E745}", arg_value = 0.5}, --Smokewinder - yellow
				{ CLSID = "{VSN_F104G_R_PTB}", arg_value = 0.8,attach_point_position = {0.0, 0.0 , 0.0 } },
            }
        ),
		pylon(11, 0, 0, 0, 0,
            {
                use_full_connector_position = true,
				arg 	  	  = 318,
				arg_increment = 0,
            },
            {
                --
            }
        ),
},
	
	Tasks = {
        aircraft_task(CAP),
     	aircraft_task(Escort),
      	aircraft_task(FighterSweep),
		aircraft_task(Intercept),
		aircraft_task(Reconnaissance),
    	aircraft_task(GroundAttack),
     	aircraft_task(CAS),
        --aircraft_task(AFAC),
	    aircraft_task(RunwayAttack),
    	aircraft_task(AntishipStrike),
    },	
	DefaultTask = aircraft_task(FighterSweep),

	SFM_Data = {
	aerodynamics = --F15
		{
			Cy0	=	0,
			Mzalfa	=	6,
			Mzalfadt	=	1,
			kjx = 2.95,
			kjz = 0.00125,
			Czbe = -0.016,
			cx_gear = 0.0268,
			cx_flap = 0.06,
			cy_flap = 0.4,
			cx_brk = 0.06,
			table_data = 
			{
			--      M	 Cx0		 Cya		 B		 B4	      Omxmax	Aldop	Cymax
				{0.0,	0.0215,		0.055,		0.08,		0.22,	0.65,	25.0,	1.2 	},
				{0.2,	0.0215,		0.055,		0.08,		0.22,	1.80,	25.0,	1.2     },
				{0.4,	0.0215,		0.055,		0.08,	   	0.22,	3.00,	25.0,	1.2     },
				{0.6,	0.0215,		0.055,		0.05,		0.28,	4.20,	25.0,	1.2     },
				{0.7,	0.0215,		0.055,		0.05,		0.28,	4.20,	23.0,	1.15    },
				{0.8,	0.0215,		0.055,		0.05,		0.28,	4.20,	21.7,	1.1     },
				{0.9,	0.0230,		0.058,		0.09,		0.20,	4.20,	20.1,	1.07    },
				{1.0,	0.0320,		0.062,		0.17,		0.15,	4.20,	18.9,	1.04    },
				{1.1,	0.0430,		0.062,	   	0.235,		0.09,	3.78,	17.4,	1.02    },
				{1.2,	0.0460,		0.062,	   	0.285,		0.08,	2.94,	17.0,	1.00 	},		
				{1.3,	0.0470,		0.06,	   	0.29,		0.10,	2.10,	16.0,	0.92 	},				
				{1.4,	0.0470,		0.056,	   	0.3,		0.136,	1.80,	15.0,	0.80 	},					
				{1.6,	0.0470,		0.052,	   	0.34,		0.21,	1.08,	13.0,	0.7 	},					
				{1.8,	0.0460,		0.042,	   	0.34,		2.43,	0.96,	12.0,	0.55 	},		
				{2.2,	0.0420,		0.037,	   	0.49,		3.5,	0.84,	 10.0,	0.37 	},					
				{2.5,	0.0420,		0.033,		0.6,		4.7,	0.84,	 9.0,	0.3 	},		
				{3.9,	0.0400,		0.023,		0.9,		6.0,	0.84,	 7.0,	0.2		},
			}, -- end of table_data
		}, -- end of aerodynamics
		engine = 
		{
			Nmg		=	67.5,
			MinRUD	=	0,
			MaxRUD	=	1,
			MaksRUD	=	0.85,
			ForsRUD	=	0.91,
			type	=	"TurboJet",
			hMaxEng	=	19.5,
			dcx_eng	=	0.0114,
			cemax	=	1.24,
			cefor	=	2.56,
			dpdh_m	=	6000,
			dpdh_f	=	14000.0,
			table_data = {
			--   M		Pmax		 Pfor
				{0.0,	115000,		212000},
				{0.2,	 94000,		200000},
				{0.4,	 92000,		205000},
				{0.6,	103000,		207000},
				{0.7,	105000,		210000},
				{0.8,	105000,		220000},
				{0.9,	105000,		235000},
				{1.0,	107000,		250000},
				{1.1,	103000,		258000},
				{1.2,	 94000,		268000},
				{1.3,	 84000,		285000},
				{1.4,	 71000,		300000},
				{1.6,	 34000,		318000},
				{1.8,	 19000,		337000},
				{2.2,	 17000,		370000},
				{2.5,	 19000,		390000},
				{3.9,	 82000,		310000},
			}, -- end of table_data
		}, -- end of engine
	},


	--damage , index meaning see in  Scripts\Aircrafts\_Common\Damage.lua
	Damage = {
	[0]  = {critical_damage = 5,  args = {146}},
	[1]  = {critical_damage = 3,  args = {296}},
	[2]  = {critical_damage = 3,  args = {297}},
	[3]  = {critical_damage = 8, args = {65}},
	[4]  = {critical_damage = 2,  args = {298}},
	[5]  = {critical_damage = 2,  args = {301}},
	[7]  = {critical_damage = 2,  args = {249}},
	[8]  = {critical_damage = 3,  args = {265}},
	[9]  = {critical_damage = 3,  args = {154}},
	[10] = {critical_damage = 3,  args = {153}},
	[11] = {critical_damage = 1,  args = {167}},
	[12] = {critical_damage = 1,  args = {161}},
	[13] = {critical_damage = 2,  args = {169}},
	[14] = {critical_damage = 2,  args = {163}},
	[15] = {critical_damage = 2,  args = {267}},
	[16] = {critical_damage = 2,  args = {266}},
	[17] = {critical_damage = 2,  args = {168}},
	[18] = {critical_damage = 2,  args = {162}},
	[20] = {critical_damage = 2,  args = {183}},
	[23] = {critical_damage = 5, args = {223}},
	[24] = {critical_damage = 5, args = {213}},
	[25] = {critical_damage = 2,  args = {226}},
	[26] = {critical_damage = 2,  args = {216}},
	[29] = {critical_damage = 5, args = {224}, deps_cells = {23, 25}},
	[30] = {critical_damage = 5, args = {214}, deps_cells = {24, 26}},
	[35] = {critical_damage = 6, args = {225}, deps_cells = {23, 29, 25, 37}},
	[36] = {critical_damage = 6, args = {215}, deps_cells = {24, 30, 26, 38}}, 
	[37] = {critical_damage = 2,  args = {228}},
	[38] = {critical_damage = 2,  args = {218}},
	[39] = {critical_damage = 2,  args = {244}, deps_cells = {53}}, 
	[40] = {critical_damage = 2,  args = {241}, deps_cells = {54}}, 
	[43] = {critical_damage = 2,  args = {243}, deps_cells = {39, 53}},
	[44] = {critical_damage = 2,  args = {242}, deps_cells = {40, 54}}, 
	[51] = {critical_damage = 2,  args = {240}}, 
	[52] = {critical_damage = 2,  args = {238}},
	[53] = {critical_damage = 2,  args = {248}},
	[54] = {critical_damage = 2,  args = {247}},
	[56] = {critical_damage = 2,  args = {158}},
	[57] = {critical_damage = 2,  args = {157}},
	[59] = {critical_damage = 3,  args = {148}},
	[61] = {critical_damage = 2,  args = {147}},
	[82] = {critical_damage = 2,  args = {152}},
	},
	
	DamageParts = 
	{  
		[1] = "VSN_F104G-oblomok-wing-r", -- wing R
		[2] = "VSN_F104G-oblomok-wing-l", -- wing L
	},
-- VSN DCS World\Scripts\Aircrafts\_Common\Lights.lua

	lights_data = { typename = "collection", lights = {
	
    [1] = { typename = "collection", -- WOLALIGHT_STROBES
					lights = {	
						--{typename  = "natostrobelight",	argument_1  = 199, period = 1.2, color = {0.8,0,0}, connector = "RESERV_BANO_1"},--R
						--{typename  = "natostrobelight",	argument_1  = 199, period = 1.2, color = {0.8,0,0}, connector = "RESERV1_BANO_1"},--L
						--{typename  = "natostrobelight",	argument_1  = 199, period = 1.2, color = {0.8,0,0}, connector = "RESERV2_BANO_1"},--H
						--{typename  = "natostrobelight",	argument_1  = 195, period = 1.2, color = {0.8,0,0}, connector = "WHITE_BEACON L"},--195
						--{typename  = "natostrobelight",	argument_1  = 196, period = 1.2, color = {0.8,0,0}, connector = "WHITE_BEACON R"},--196
						--{typename  = "natostrobelight",	argument_1  = 192, period = 1.2, color = {0.8,0,0}, connector = "BANO_0_BACK"},
						--{typename  = "natostrobelight",	argument_1  = 195, period = 1.2, color = {0.8,0,0}, connector = "RED_BEACON L"},
						--{typename  = "natostrobelight",	argument_1  = 196, period = 1.2, color = {0.8,0,0}, connector = "RED_BEACON R"},
							}
			},
	[2] = { typename = "collection",
					lights = {-- 1=Landing light -- 2=Landing/Taxi light
						{typename = "spotlight", connector = "MAIN_SPOT_PTR", argument = 209, dir_correction = {elevation = math.rad(-1)}},--"MAIN_SPOT_PTR_02","RESERV_SPOT_PTR"
						{typename = "spotlight", connector = "MAIN_SPOT_PTR", argument = 208, dir_correction = {elevation = math.rad(3)}},--"MAIN_SPOT_PTR_01","RESERV_SPOT_PTR","MAIN_SPOT_PTL",
							}
			},
	[3]	= {	typename = "collection",
					lights = {
							-- Left Position Light (red)
						{typename = "omnilight",connector = "BANO_1",color = {0.99, 0.11, 0.3},pos_correction  = {0.1, 0, -0.2},argument  = 190},
							-- Right Position Light (green)
						{typename = "omnilight",connector = "BANO_2",color = {0, 0.894, 0.6},pos_correction = {0.1, 0, 0.2},argument  = 191},
							-- Tail Position Light (white)
						{typename = "omnilight",connector = "BANO_0",color = {1, 1, 1},pos_correction  = {0, 0, 0},argument  = 192}}
			},				
	[4] = { typename = "collection", -- formation_lights_default
					lights = {
						{typename  = "argumentlight" ,argument  = 200,},--formation_lights_tail_1 = 200;
						{typename  = "argumentlight" ,argument  = 201,},--formation_lights_tail_2 = 201;
						{typename  = "argumentlight" ,argument  = 202,},--formation_lights_left   = 202;
						{typename  = "argumentlight" ,argument  = 203,},--formation_lights_right  = 203;
						{typename  = "argumentlight" ,argument  =  88,},--old aircraft arg 
							}
			},
--[[			
	[5] = { typename = "collection", -- strobe_lights_default
					lights = {
						{typename  = "strobelight",connector =  "RED_BEACON"  ,argument = 193, color = {0.8,0,0}},-- Arg 193, 83,
						{typename  = "strobelight",connector =  "RED_BEACON_2",argument = 194, color = {0.8,0,0}},-- (-1"RESERV_RED_BEACON")
						{typename  = "strobelight",connector =  "RED_BEACON"  ,argument =  83, color = {0.8,0,0}},-- Arg 193, 83,
							}
			},
--]]			
	}},
}

add_aircraft(VSN_F104S) --AG
