--dofile(current_mod_path..'/Get_System_info_Lo_TEST.lua') --first try LoGet im gleichen Ordner

dofile(current_mod_path..'/Weapons.lua')

YF_104GAG =  {
      
		Name 			= 'YF104G_AG',--AG
		DisplayName		= _('YF-104G Starfighter AG'),--AG
        Picture 		= "YF104G.png",
        Rate 			= "50",
        Shape			= "YF104G_AG",--AG	
        WorldID			=  WSTYPE_PLACEHOLDER, 
        
	shape_table_data 	= 
	{
		{
			file  	 	= 'YF104G_AG';--AG
			life  	 	= 18; -- lifebar
			vis   	 	= 3; -- visibility gain.
			desrt    	= 'YF104G-oblomok'; -- Name of destroyed object file name
			fire  	 	= { 300, 2}; 			-- Fire on the ground after destoyed: 300sec 2m
			username	= 'YF104G_AG';--AG
			index       =  WSTYPE_PLACEHOLDER;
			classname   = "lLandPlane";
			positioning = "BYNORMAL";
		},
		{
			name  		= "YF104G-oblomok";
			file  		= "YF104G-oblomok";
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
	
		M_empty						=	6350,	-- kg  with pilot and nose load, F104 changed
		M_nominal					=	7393,	-- kg (Empty Plus Full Internal Fuel) F104 changed
		M_max						=	13170,	-- kg (Maximum Take Off Weight) F104 changed
		M_fuel_max					=	2641,	-- kg (Internal Fuel Only) F104 changed
		H_max						=	15000,	-- m  (Maximum Operational Ceiling) F104 changed
		average_fuel_consumption	=	0.41,   -- just speculation, and a good guess F104 changed
		CAS_min						=	50,		-- Minimum CAS speed (m/s) (for AI) F104 changed
		V_opt						=	253,	-- Cruise speed (m/s) (for AI) F104 changed
		V_take_off					=	104,	-- Take off speed in m/s (for AI) F104 changed
		V_land						=	113,	-- Land speed in m/s (for AI) F104 changed
		has_afteburner				=	true,
		has_speedbrake				=	true,
		radar_can_see_ground		=	true,

		nose_gear_pos 				                = {3.672, -1.810, 0},   -- position of gear and hight airplane of the ground (Y +for,-aft/ Z +up, -down / x #left, -right)changed back
	    nose_gear_amortizer_direct_stroke   		=  0,  -- down from nose_gear_pos !!!
	    nose_gear_amortizer_reversal_stroke  		=  0,  -- up 
	    nose_gear_amortizer_normal_weight_stroke 	=  0,   -- up 
	    nose_gear_wheel_diameter 	                =  0.377, -- in m changed back
	
	    main_gear_pos 						 	    = {-0.8, -1.823, 1.270}, -- changed back
	    main_gear_amortizer_direct_stroke	 	    =   0, --  down from main_gear_pos !!!
	    main_gear_amortizer_reversal_stroke  	    =   0, --  up 
	    main_gear_amortizer_normal_weight_stroke    =   0,-- down from main_gear_pos
	    main_gear_wheel_diameter 				    =   0.486, -- in m changed back

		AOA_take_off				=	0.17,	-- AoA in take off (for AI) changed F104
		stores_number				=	12,
		bank_angle_max				=	60,		-- Max bank angle (for AI)
		Ny_min						=	-2.8,	-- Min G (for AI) changed F104
		Ny_max						=	7.33,	-- Max G (for AI) changed F104
		V_max_sea_level				=	408,	-- Max speed at sea level in m/s (for AI) changed F104
		V_max_h						=	649,	-- Max speed at max altitude in m/s (for AI) changed F104
		wing_area					=	18.22,	-- wing area in m2 changed F104
		thrust_sum_max				=	5394,	-- thrust in kgf (52.9 kN) changed F104 (52.9 kN ist -17A Phantom 2) (46.5 kN ist -J1K Stafighter G)
		thrust_sum_ab				=	8086,	-- thrust in kgf (79.3 kN) changed F104 (79.3 kN ist -17A Phantom II) (70.9 kN ist -J1K Strafighter G)
		Vy_max						=	206,	-- Max climb speed in m/s (for AI) changed F104
		flaps_maneuver				=	0.5,	-- 0.5 stage 1 1 stage 2 flaps changed F104
		Mach_max					=	2.35,	-- Max speed in Mach (for AI) changed F104
		range						=	2623,	-- Max range in km (for AI) changed F104
		RCS							=	3.38,	-- Radar Cross Section m2 changed F104
		Ny_max_e					=	7.33,	-- Max G (for AI) changed F104
		detection_range_max			=	150,		-- changed F104 and changed to max AN/APQ-159
		IR_emission_coeff			=	0.5,	-- Normal engine -- IR_emission_coeff = 1 is Su-27 without afterburner. It is reference. changed F104
		IR_emission_coeff_ab		=	2,		-- With afterburner changed F104
		tand_gear_max				=	2.747,	--XX  1.732 FA18 3.73, changed F104
		tanker_type					=	0,		--F14=2/S33=4/ M29=0/S27=0/F15=1/ F16=1/To=0/F18=2/A10A=1/ M29K=4/F4=0/
		wing_span					=	6.36,	--XX  wing spain in m changed F104
		wing_type 					= 	0,		-- 0=FIXED_WING/ 1=VARIABLE_GEOMETRY/ 2=FOLDED_WING/ 3=ARIABLE_GEOMETRY_FOLDED
		length						=	16.66, -- changed ti f104
		height						=	4.09, -- changed to f104
		crew_size					=	1, --XX
		engines_count				=	1, --XX
		wing_tip_pos 				= 	{-1.268,	-0.69, 4.014}, -- changed F104
		
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
				drop_canopy_name	=	"YF104G_fonar";
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
			{effect = "OVERWING_VAPOR", file = current_mod_path.."/Effects/YF104G_overwingVapor.lua"},
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
RADAR 			= "AN/APQ-159",-- angepasst F104G und verändert auf F-5E adv.
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
		frequency 		= 251.0,  -- Radio Freq angepasst F104
		editable 		= true,
		minFrequency	= 225.000, -- angepasst F104
		maxFrequency 	= 399.979, -- angepasst F104
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
				DisplayName = " ",
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
				DisplayName = "1",
            },
            {
                --NoAim120 { CLSID = "{40EF17B7-F508-45de-8566-6FFECC0C1AB8}", arg_value = 0.5},	-- AIM-120C
                --NoAim7{ CLSID = "{8D399DDA-FF81-4F14-904D-099B34FE7918}", arg_value = 0.5},	-- AIM-7M
                { CLSID	=	"{6CEB49FC-DED8-4DED-B053-E1F033FF72D3}", arg_value = 0.5}, -- AIM-9M
				{ CLSID	= "{A4BCC903-06C8-47bb-9937-A30FEDB4E741}", arg_value = 0.5}, --Smokewinder - red
			    { CLSID	= "{A4BCC903-06C8-47bb-9937-A30FEDB4E742}", arg_value = 0.5}, --Smokewinder - green
			    { CLSID	= "{A4BCC903-06C8-47bb-9937-A30FEDB4E743}", arg_value = 0.5}, --Smokewinder - blue
			    { CLSID	= "{A4BCC903-06C8-47bb-9937-A30FEDB4E744}", arg_value = 0.5}, --Smokewinder - white
			    { CLSID	= "{A4BCC903-06C8-47bb-9937-A30FEDB4E745}", arg_value = 0.5}, --Smokewinder - yellow
				{ CLSID = "{YF104G_L_PTB}", arg_value = 0.8,attach_point_position = {0.0, 0.0 , 0.0 } },
            }
         ),
		 pylon(3, 0, -0.881000, -0.504000, -2.624000,
            {
                use_full_connector_position = true,
				arg 	  	  = 310,
				arg_increment = 1,
				DisplayName = " ",
            },
            {
                -- -- F-104S
            }
        ),
		 pylon(4, 0, -0.800, -0.310, -1.900,
            {
                use_full_connector_position = true,
				arg 	  	  = 311,
				arg_increment = 1,
				DisplayName = "2",
            },
            {
				--NoAim120{ CLSID = "{40EF17B7-F508-45de-8566-6FFECC0C1AB8}", arg_value = 0.0},	-- AIM-120C
                --NoAim7{ CLSID	= "{8D399DDA-FF81-4F14-904D-099B34FE7918}", arg_value = 0.0},	-- AIM-7M
				--NoMaverick{ CLSID = "{444BA8AE-82A7-4345-842E-76154EFCCA46}", arg_value = 0.0 }, -- AGM-65D-LAU-117
				--NoHarm{ CLSID = "{B06DD79A-F21E-4EB9-BD9D-AB3844618C93}", arg_value = 0.0 },--AGM-88C
				{ CLSID = "{7210496B-7B81-4B52-80D6-8529ECF847CD}", arg_value = 0.0 },--Kormoran
         		{ CLSID = "{7B8DCEB4-820B-4015-9B48-1028A4195692}", arg_value = 0.0},	-- AGM-119 
				{ CLSID = "{0D33DDAE-524F-4A4E-B5B8-621754FE3ADE}", arg_value = 0.0 },
				{ CLSID = "{BCE4E030-38E9-423E-98ED-24BE3DA87C32}", arg_value = 0.0 },--Mk-82
				{ CLSID = "{ADD3FAE1-EBF6-4EF9-8EFC-B36B5DDF1E6B}", arg_value = 0.0  },	--MK-20
				{ CLSID = "{51F9AAE5-964F-4D21-83FB-502E3BFE5F8A}", arg_value = 0.0 },	--GBU-10
				{ CLSID	= "{08164777-5E9C-4B08-B48E-5AA7AFB246E2}" ,arg_value = 0.0},	--BL755
				--NoSmartCluster{ CLSID	= "{5335D97A-35A5-4643-9D9B-026C75961E52}" ,arg_value = 0.0},	--CBU-97
				{ CLSID = "{F72F47E5-C83A-4B85-96ED-D3E46671EE9A}" ,arg_value = 0.35},--B-8M1 - 20 S-8KOM
				{ CLSID = "{3858707D-F5D5-4bbb-BDD8-ABB0530EBC7C}" ,arg_value = 0.35},--S-24B	
				{ CLSID = "B-8M1 - 20 S-8OFP2"					   ,arg_value = 0.35},
				{ CLSID = "{3DFB7320-AB0E-11d7-9897-000476191836}" ,arg_value = 0.35},-- S-8TsM
				{ CLSID = "{Mk82SNAKEYE}", 							arg_value = 0.0 }, -- Mk-82 SnakeEye
				{ CLSID = "{7A44FF09-527C-4B7E-B42B-3F111CFE50FB}", arg_value = 0.0 }, -- MK-83
				{ CLSID = "{A021F29D-18AB-4d3e-985C-FC9C60E35E9E}", arg_value = 0.0 }, -- LAU-68 7xHE Rockets
				{ CLSID = "{FD90A1DC-9147-49FA-BF56-CB83EF0BD32B}", arg_value = 0.0 }, -- LAU-61 19xHE Rockets
                { CLSID = "{DB434044-F5D0-4F1F-9BA9-B73027E18DD3}", arg_value = 0.0},	-- AIM-9M x2
                { CLSID	= "{6CEB49FC-DED8-4DED-B053-E1F033FF72D3}", arg_value = 0.0}, -- AIM-9M
				{ CLSID = "{YF104G_PTB}", arg_value = 0.0,attach_point_position = {0.0, 0.0 , 0.0 } },
            }
         ),
        pylon(5, 0, 0, 0, 0,
            {
                use_full_connector_position = true,
				arg 	  	  = 312,
				arg_increment = 1,
				DisplayName = "3",
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
				DisplayName = "4",
            },
            {
				--NoLighntingpod{ CLSID = "{0519A264-0AB6-11d6-9193-00A0249B6F00}",attach_point_position = {0, 0.65 ,0 } },-- ELINT
				{ CLSID	=	"{6CEB49FC-DED8-4DED-B053-E1F033FF72D3}", arg_value = 0.0}, -- AIM-9M
				{ CLSID = "{Mk82SNAKEYE}", 							arg_value = 0.0 }, -- Mk-82 SnakeEye
				{ CLSID = "{7A44FF09-527C-4B7E-B42B-3F111CFE50FB}", arg_value = 0.0 }, -- MK-83
				{ CLSID = "{BCE4E030-38E9-423E-98ED-24BE3DA87C32}", arg_value = 0.0 }, -- MK-82 slick
            }
        ),
		pylon(7, 0, 0, 0, 0,
            {
                use_full_connector_position = true,
				arg 	  	  = 312,
				arg_increment = 1,
				DisplayName = "5",
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
				DisplayName = "6",
            },
            {
				--NoAim120{ CLSID = "{40EF17B7-F508-45de-8566-6FFECC0C1AB8}", arg_value = 0.0},	-- AIM-120C
                --NoAim7{ CLSID	= "{8D399DDA-FF81-4F14-904D-099B34FE7918}", arg_value = 0.0},	-- AIM-7M
				--NoMaverick{ CLSID = "{444BA8AE-82A7-4345-842E-76154EFCCA46}", arg_value = 0.0 }, -- AGM-65D-LAU-117
				--NoHarm{ CLSID = "{B06DD79A-F21E-4EB9-BD9D-AB3844618C93}", arg_value = 0.0 },--AGM-88C
				{ CLSID = "{7210496B-7B81-4B52-80D6-8529ECF847CD}", arg_value = 0.0 },--Kormoran
				{ CLSID = "{7B8DCEB4-820B-4015-9B48-1028A4195692}", arg_value = 0.0},	-- AGM-119
				{ CLSID = "{0D33DDAE-524F-4A4E-B5B8-621754FE3ADE}", arg_value = 0.0 },
				{ CLSID = "{BCE4E030-38E9-423E-98ED-24BE3DA87C32}", arg_value = 0.0 },--Mk-82
				{ CLSID = "{ADD3FAE1-EBF6-4EF9-8EFC-B36B5DDF1E6B}", arg_value = 0.0  },	--MK-20
				{ CLSID = "{51F9AAE5-964F-4D21-83FB-502E3BFE5F8A}", arg_value = 0.0 },	--GBU-10
            	{ CLSID	= "{08164777-5E9C-4B08-B48E-5AA7AFB246E2}" ,arg_value = 0.0},	--BL755
				--NoSmartCluster{ CLSID	= "{5335D97A-35A5-4643-9D9B-026C75961E52}" ,arg_value = 0.0},	--CBU-97
				{ CLSID = "{F72F47E5-C83A-4B85-96ED-D3E46671EE9A}" ,arg_value = 0.35},--B-8M1 - 20 S-8KOM
				{ CLSID = "{3858707D-F5D5-4bbb-BDD8-ABB0530EBC7C}" ,arg_value = 0.35},--S-24B	
				{ CLSID = "B-8M1 - 20 S-8OFP2"					   ,arg_value = 0.35},
				{ CLSID = "{3DFB7320-AB0E-11d7-9897-000476191836}" ,arg_value = 0.35},-- S-8TsM
				{ CLSID = "{Mk82SNAKEYE}", 							arg_value = 0.0 }, -- Mk-82 SnakeEye
				{ CLSID = "{7A44FF09-527C-4B7E-B42B-3F111CFE50FB}", arg_value = 0.0 }, -- MK-83
				{ CLSID = "{A021F29D-18AB-4d3e-985C-FC9C60E35E9E}", arg_value = 0.0 }, -- LAU-68 7xHE Rockets
				{ CLSID = "{FD90A1DC-9147-49FA-BF56-CB83EF0BD32B}", arg_value = 0.0 }, -- LAU-61 19xHE Rockets
                { CLSID = "{DB434044-F5D0-4F1F-9BA9-B73027E18DD3}", arg_value = 0.0},	-- AIM-9M x2
                { CLSID	= "{6CEB49FC-DED8-4DED-B053-E1F033FF72D3}", arg_value = 0.0}, -- AIM-9M
				{ CLSID = "{YF104G_PTB}", arg_value = 0.0,attach_point_position = {0.0, 0.0 , 0.0 } },
            }
        ),
		pylon(9, 0, -0.918000, -0.498000, 2.663000,
            {
                use_full_connector_position = true,
				arg 	  	  = 316,
				arg_increment = 1,
				DisplayName = " ",
            },
            {
                -- F-104S
            }
        ),
		pylon(10, 0, -1.200, 0.00, 3.47000,
            {
                use_full_connector_position = true,
				arg 	  	  = 317,
				arg_increment = 1,
				DisplayName = "7",
            },
            {
                --NoAim120{ CLSID = "{40EF17B7-F508-45de-8566-6FFECC0C1AB8}", arg_value = 0.5},	-- AIM-120C
                --NoAim7{ CLSID = "{8D399DDA-FF81-4F14-904D-099B34FE7918}", arg_value = 0.5},	-- AIM-7M
                { CLSID	=	"{6CEB49FC-DED8-4DED-B053-E1F033FF72D3}", arg_value = 0.5}, -- AIM-9M
				{ CLSID	= "{A4BCC903-06C8-47bb-9937-A30FEDB4E741}", arg_value = 0.5}, --Smokewinder - red
			    { CLSID	= "{A4BCC903-06C8-47bb-9937-A30FEDB4E742}", arg_value = 0.5}, --Smokewinder - green
			    { CLSID	= "{A4BCC903-06C8-47bb-9937-A30FEDB4E743}", arg_value = 0.5}, --Smokewinder - blue
			    { CLSID	= "{A4BCC903-06C8-47bb-9937-A30FEDB4E744}", arg_value = 0.5}, --Smokewinder - white
			    { CLSID	= "{A4BCC903-06C8-47bb-9937-A30FEDB4E745}", arg_value = 0.5}, --Smokewinder - yellow
				{ CLSID = "{YF104G_R_PTB}", arg_value = 0.8,attach_point_position = {0.0, 0.0 , 0.0 } },
            }
        ),
		pylon(11, 0, 0, 0, 0,
            {
                use_full_connector_position = true,
				arg 	  	  = 318,
				arg_increment = 0,
				DisplayName = " ",
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
--hier kommt entweder die Funktion rein, die die Höhe/AoA oder was ich gerne haben möchte, abgreift, oder es wird die Datei hier gerufen, in der die Funktion drin ist, die die Höhe oder was auch immer abgreift.
	SFM_Data = {
	aerodynamics = --changed to F104T Data via BGDam_Sample SFM
		{
			Cy0			    =	0,
			Mzalfa		  =	5, -- changed to 1.8 / rechanged due to strange elevator behavior to 5
			Mzalfadt	  =	1.2, -- changed to 1.2 / rechanged due to strange elevator behavior to 1 and changed back to 1.2
			kjx 		  = 2.150, -- changed and corrected
			kjz 		  = 0.0011, -- changed
			Czbe 		  = -0.06, -- changed
			cx_gear 	  = 0.0268, -- left unchanged
			cx_flap 	  = 0.184, -- changed
			cy_flap 	  = 0.37, -- changed
			cx_brk 		  = 0.026, -- changed was 0.014
			table_data  = 
			{--									changed							   changed
			--      M	 Cx0		 Cya		 B		 	B4	      Omxmax		Aldop		Cymax
				{0,	    0.015,		0.025,		0.010,		0.057,		0.5,		16,			0.1}, -- changed + B4 added + Cya from 0.009 to 0.025 + Cymax from 1.17 to 0.1 + Aldop from 15 
				{0.1,	0.015,		0.038,		0.015,		0.037,		1.011,		16,			0.45}, -- added (eyeballed) + B4 added + Cya from 0.015 to 0.038 + Omxmax from 1.511 to 1.011 + Cymax from 1.17 to 0.45 + Aldop from 15
				{0.2,	0.015,		0.051,		0.025,		0.025,		2.511,		17,			0.88}, -- changed + B4 added + Cya from 0.043 to 0.051 + Omxmax from 3.197 to 2.511 + Cymax from 1.17 to 0.88+ Aldop was 15
				{0.4,	0.015,		0.064,		0.055,		0.025,		3.014,		18,			0.932}, -- changed + B4 added + Aldop was 15
				{0.6,	0.015,		0.065,		0.175,		0.025,		2.687,		18,			0.901}, -- changed and corrected and recorrected + Cymax from 0.854 to 0.901 + Aldop was 15
				{0.7,	0.015,		0.071,		0.175,		0.025,		2.242,		20,			0.714}, -- changed + B4 added + Cymax from 0.845 to 0.714
				{0.8,	0.015,		0.072,		0.175,		0.025,		2.580,		22,			0.732}, -- changed + B4 added + Cymax from 0.865 to 0,732
				{0.9,	0.018,		0.078,		0.175,		0.025,		2.923,		22,			0.807}, -- changed + B4 added + Cymax from 0.985 to 0.807
				{1	,	0.045,		0.089,		0.175,		0.025,		3.161,		22,			1.028}, -- changed + B4 added + Cymax 1.185 to 1.028
				{1.05,	0.046,		0.087,		0.189,		0.077,		3.049,		21,			1.185}, -- changed + B4 added
				{1.1,	0.047,		0.086,		0.204,		0.138,		2.937,		21,			1.185}, -- changed + B4 added
				{1.2,	0.047,		0.080,		0.218,		0.196,		3.209,		21,			1}, -- changed + B4 added
				{1.3,	0.048,		0.074,		0.235,		0.250,		2.055,		21,			1}, -- changed + B4 added
				{1.5,	0.050,		0.063,		0.278,		0.336,		2.179,		20,			1}, -- changed + B4 added
				{1.7,	0.04,	  	0.051,		0.339,		0.414,		2.113,		19,			0.8}, -- changed + B4 added
				{1.8,	0.035,		0.046,		0.381,		2.051,		2.218,		18,			0.7}, -- changed + B4 added + B4eyeball
				{2,	    0.025,		0.034,		0.506,		3.855,		2.399,		17,			0.6}, -- changed + B4 added + B4eyeball
				{2.1,	0.02,		0.029,		0.606,		4.010,		2.47,		16,			0.6}, -- changed + B4 added + B4eyeball
				{2.2,	0.0385,		0.023,		0.755,		5.551,		2.136,		11,			0.6}, -- changed + B4 added + B4eyeball
				{2.5,	0.042,		0.021,		0.885,		6.055,		1.572,		10,			0.6},-- added with approx. values see below 	
				{3.9,	0.065,		0.019,		0.950,		6.555,		0.7,		 9,			0.6}, -- changed + B4 added + B4eyeball
			}, -- end of table_data
			-- M - Mach number
			-- Cx0 - Coefficient, drag, profile, of the airplane
			-- Cya - Normal force coefficient of the wing and body of the aircraft in the normal direction to that of flight. Inversely proportional to the available G-loading at any Mach value. (lower the Cya value, higher G available) per 1 degree AOA
			-- B - Polar quad coeff
			-- B4 - Polar 4th power coeff
			-- Omxmax - roll rate, rad/s conversion from Degree/s is multiplied by  0,0174533
			-- Aldop - Alfadop Max AOA at current M - departure threshold
			-- Cymax - Coefficient, lift, maximum possible (ignores other calculations if current Cy > Cymax)
			-- B4 is Cdi (coefficient of induced drag, with Cl^4 instead of Cl^2; beginning at M 1,05 + supersonic LE) to be approved by flight-testing 
		-- die obige Tabelle wird ersetzt durch die erste Tabelle für SeaLevel, dann kommt die Tabelle für 15kft, dann für 35kft, dann für 45kft und dann die für 55kft
		
--[[		extended = 
    {
      Cx0 = -- Interpolierung von Cx0 bei Geschwindikeit M und HÃ¶he H
      {-- minimum Cx0 ist xxx maximum Cx0 ist yyy
        M       = {0, 0.2, 0.4, 0.6, 0.7, 0.8, 0.9, 1, 1.05, 1.1, 1.2, 1.3, 1.5, 1.7, 1.8, 2, 2.1, 2.2, 3.9},--Machnumber as above
        H       = {0, 4572, 10668, 13716, 16764}, --HÃ¶he = SeaLevel, 15kft, 35kft, 45kft, 55kft
        Cdmin   = {--M    0     0.2     0.4     0.6     0.7     0.8     0.9     1       1.05    1.1     1.2     1.3     1.5     1.7     1.8       2      2.1     2.2     3.9
                   {    0.015,  0.5,    0.04,   0.019, 0.018,  0.015,  0.018,  0.045,   0.048,  0.05,   0.048,  0.047,  0.046,  0.046,  0.046,   0.046,  0.046,  0.046,  0.046,}, --SeaLevel 0
                   {    0.015,  0.015,  0.1,    0.027, 0.02,   0.019,  0.02,   0.045,   0.048,  0.05,   0.048,  0.047,  0.046,  0.046,  0.046,   0.046,  0.046,  0.046,  0.046,},-- 15kft
                   {    0.015,  0.015,  0.015,  0.12,  0.08,   0.04,   0.035,  0.05,    0.055,  0.06,   0.065,  0.06,   0.05,   0.04,   0.035,   0.025,  0.02,   0.015,  0.015,},-- 35kft
                   {    0.015,  0.015,  0.015,  0.015, 0.12,   0.1,    0.07,   0.075,   0.077,  0.08,   0.075,  0.07,   0.055,  0.05,   0.049,   0.0475, 0.045,  0.035,  0.031,},-- 45kft
                   {    0.015,  0.015,  0.015,  0.015, 0.05,   0.09,   0.11,   0.14,    0.13,   0.12,   0.1,    0.09,   0.07,   0.06,   0.055,   0.05,   0.0475, 0.042,  0.035,},-- 55kft
                  },
      },
    }, -- end of Cx0
    
    { 
      Cya = -- Interpolierung des Lift-Coeffizient Ã¼ber Geschwindigkeit M und bei HÃ¶he H
      {
        M       = {0, 0.2, 0.4, 0.6, 0.7, 0.8, 0.9, 1, 1.05, 1.1, 1.2, 1.3, 1.5, 1.7, 1.8, 2, 2.1, 2.2, 3.9},--Machnumber as above
        H       = {0, 4572, 10668, 13716, 16764}, --HÃ¶he = SeaLevel, 15kft, 35kft, 45kft, 55kft
        Cla     = {--M    0     0.2     0.4     0.6     0.7     0.8     0.9     1       1.05    1.1     1.2     1.3     1.5     1.7     1.8       2     2.1     2.2     3.9
                   {    0.009, 0.044,   0.068,  0.073,  0.073, 0.070,  0.070,  0.089,  0.087,  0.086,  0.080,  0.074,  0.063,  0.051,  0.046,   0.034, 0.031,  0.023,  0.019,}, --SeaLevel 0
                   {    0.007, 0.039,   0.059,  0.073,  0.073, 0.070,  0.077,  0.089,  0.087,  0.086,  0.080,  0.074,  0.063,  0.051,  0.046,   0.034, 0.031,  0.023,  0.019,},-- 15kft
                   {    0.004, 0.029,   0.038,  0.049,  0.066, 0.077,  0.087,  0.089,  0.087,  0.086,  0.080,  0.074,  0.063,  0.051,  0.046,   0.034, 0.029,  0.023,  0.019,},-- 35kft
                   {    0.002, 0.019,   0.032,  0.042,  0.066, 0.077,  0.087,  0.089,  0.087,  0.086,  0.080,  0.074,  0.063,  0.051,  0.046,   0.034, 0.029,  0.023,  0.019,},-- 45kft
                   {    0.002, 0.019,   0.032,  0.042,  0.066, 0.077,  0.087,  0.089,  0.087,  0.086,  0.080,  0.074,  0.063,  0.051,  0.046,   0.034, 0.029,  0.023,  0.019,},-- 55kft
                  }, 
      },
    }, --end of Cya
    
    {-- Omxmax extended
      Omxmax = --Interpolierung wie zuvor
        {
        M        = {0, 0.2, 0.4, 0.6, 0.7, 0.8, 0.9, 1, 1.05, 1.1, 1.2, 1.3, 1.5, 1.7, 1.8, 2, 2.1, 2.2, 3.9},--Machnumber as above
        H        = {0, 4572, 10668, 13716, 16764}, --HÃ¶he = SeaLevel, 15kft, 35kft, 45kft, 55kft
        Rollrate = {--M    0     0.2     0.4     0.6     0.7     0.8     0.9     1     1.05    1.1     1.2     1.3     1.5     1.7     1.8     2     2.1     2.2     3.9
                    {     0.5,  2.087,  1.865,  2.648,  3.289,  3.759,  3.972, 4.020, 3.910,  3.805,  3.800,  3.750,  3.750, 3.750,  3.750,  3.750, 3.750,  3.750,  3.750,},--SeaLevel
                    {     0.5,  1.8,    3.014,  1.911,  2.243,  2.580,  2.923, 3.161, 3.050,  2.938,  3.210,  3.210,  3.210, 3.210,  3.210,  3.210, 3.210,  3.210,  3.210,},--15kft
                    {     0.5,  1.8,    2.323,  4.383,  2.155,  1.663,  1.708, 1.925, 1.970,  1.994,  2.025,  2.056,  2.180, 2.113,  2.219,  2.400, 2.471,  2.525,  3.010,},--35kft
                    {     0.5,  1.8,    2.323,  3.462,  1.705,  1.318,  1.357, 1.533, 1.553,  1.593,  1.623,  1.654,  1.768, 1.731,  1.826,  1.996, 2.067,  2.124,  3.005,},--45kft
                    {     0.5,  1.8,    2.323,  2.729,  1.346,  1.042,  1.074, 1.215, 1.246,  1.265,  1.292,  1.320,  1.420, 1.401,  1.485,  1.638, 1.704,  1.760,  2.548,},--55kft
                  }
        }
    }]]-- end of Omxmayx
    
    }, -- end of aerodynamics
		engine = 
		{
			Nmg		=	67.5, --rpm at idle
			MinRUD	=	0,    -- min state of throttle
			MaxRUD	=	1,    -- max state of throttle
			MaksRUD	=	0.85, -- mil power state of throttle
			ForsRUD	=	0.91, -- AB state of throttle
			type	=	"TurboJet",
			hMaxEng	=	22.86, -- changed to F104G specs
			dcx_eng	=	0.0085, -- changed to F104G specs
			cemax	=	0.85, -- changed to F-104G specs
			cefor	=	1.112, -- changed to F-104G specs
			dpdh_m	=	2250, -- changed to F-104G specs
			dpdh_f	=	7000, -- changed to F-104G specs and corrected to 7000
			table_data = {
			--   M		Pmax		 Pfor
				{0,	    55227,		85976},	-- changed and corrected +49/25%
				{0.2,	50227,		84720}, -- changed and corrected +49/25%
				{0.4,	46919,		86763},	-- changed and corrected +49/25%
				{0.6,	48412,		93186},	-- changed and corrected +49/25%
				{0.7,	46745,		98684},	-- changed and corrected +49/25%
				{0.8,	47610,		110545},	-- changed and corrected +49/25%// von 105345 zu 110545
				{0.9,	48699,		125441},	-- changed and corrected +49/25%//von 106441 zu 125441
				{1,	    47711,		123384},	-- changed and corrected +49/25%//von 109384 zu 123384
				{1.1,	44357,		129721}, -- changed and corrected +49/25%//von 109721 zu 129721
				{1.2,	44305,		123014}, -- changed and corrected +49/25%//von 115514 zu 123014
				{1.3,	44490,		138879}, -- changed and corrected +49/25%// von 121879 zu 138879
				{1.5,	44571,		144333}, -- changed and corrected +49/25%//von 136444 zu 144333
				{1.8,	43834,		145223}, -- changed and corrected +49/25%//von 136823 zu 145223
				{2,	    42010,		136524}, -- changed and corrected +49/25% 
				{2.1,	17688,		136524}, -- changed and corrected +49/25%
				{2.5,	17068,		34750}, -- changed and corrected +49/25%
				{3,	    15517,		34750}, -- changed and corrected +49/25%
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
		[1] = "YF104G-oblomok-wing-r", -- wing R
		[2] = "YF104G-oblomok-wing-l", -- wing L
		--[3] = "YF104G-oblomok-noise", -- nose
		--[4] = "YF104G-oblomok-tail-r", -- tail
		--[5] = "YF104G-oblomok-tail-l", -- tail
	},


	lights_data = {
		typename = "collection",
		lights = {
			-- STROBES
			[WOLALIGHT_STROBES] = { 
					typename = "collection",
					lights = {	
						--{typename  = "natostrobelight",	argument_1  = 199, period = 1.2, color = {0.8,0,0}, connector = "RESERV_BANO_1"},--R
						--{typename  = "natostrobelight",	argument_1  = 199, period = 1.2, color = {0.8,0,0}, connector = "RESERV1_BANO_1"},--L
						--{typename  = "natostrobelight",	argument_1  = 199, period = 1.2, color = {0.8,0,0}, connector = "RESERV2_BANO_1"},--H
						--{typename  = "natostrobelight",	argument_1  = 195, period = 1.2, color = {0.8,0,0}, connector = "WHITE_BEACON L"},--195
						--{typename  = "natostrobelight",	argument_1  = 196, period = 1.2, color = {0.8,0,0}, connector = "WHITE_BEACON R"},--196
						--{typename  = "natostrobelight",	argument_1  = 192, period = 1.2, color = {0.8,0,0}, connector = "BANO_0_BACK"},
						--{typename  = "natostrobelight",	argument_1  = 195, period = 1.2, color = {0.8,0,0}, connector = "RED_BEACON L"},
						--{typename  = "natostrobelight",	argument_1  = 196, period = 1.2, color = {0.8,0,0}, connector = "RED_BEACON R"},
						--{typename = "argnatostrobelight", argument = 195, period = 1.2, phase_shift = 0},-- beacon lights
						--{typename = "argnatostrobelight", argument = 196, period = 1.2, phase_shift = 0},-- beacon lights
						{typename = "natostrobelight", argument = 193, period = 1.2, phase_shift = 0, color = {0.9, 1, 0.7}, connector = "BANO_0",intensity_max = 35},
					}
			},
			-- SPOTS
			[WOLALIGHT_LANDING_LIGHTS] = { 
					typename = "collection",
					lights = {
						{ typename  = "argumentlight",	argument  = 208, },
					},
			},
			[WOLALIGHT_TAXI_LIGHTS] = { 
					typename = "collection",
					lights = {
						{ typename  = "argumentlight",	argument  = 209, },
					},
			},
			-- NAVLIGHTS
			[WOLALIGHT_NAVLIGHTS]	= {	
					typename = "collection", -- nav_lights_default
					lights = {
						{typename = "argumentlight",argument = 190}, -- Left Position(red)
						{typename = "argumentlight",argument = 191}, -- Right Position(green)
						{typename = "argumentlight",argument = 192}, -- Tail Position white)
					},
			},
			-- FORMATION
			[WOLALIGHT_FORMATION_LIGHTS] = { 
					typename = "collection",
					lights = {
						{typename  = "argumentlight" ,argument  = 200,},--formation_lights_tail_1 = 200;
						--{typename  = "argumentlight" ,argument  =  88,},--old aircraft arg 
					},
			},
	[WOLALIGHT_REFUEL_LIGHTS]	= {},-- REFUEL
	[WOLALIGHT_BEACONS]	= {},-- STROBE / ANTI-COLLISION
	[WOLALIGHT_CABIN_NIGHT]	= {},--
	}},
}

add_aircraft(YF_104GAG) --AG
