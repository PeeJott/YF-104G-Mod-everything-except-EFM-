shape_name   	   = "Cockpit_VSN_F104G"
is_EDM			   = true
new_model_format   = true



external_model_canopy_arg	 = 38

use_external_views = false

local  aircraft = get_aircraft_type()

local controllers = LoRegisterPanelControls()

-- RudderPedals						= CreateGauge()
-- RudderPedals.arg_number				= 500
-- RudderPedals.input					= {-100,100}
-- RudderPedals.output					= {-1,1}
-- RudderPedals.controller				= controllers.base_gauge_RudderPosition

-- StickPitch							= CreateGauge()
-- StickPitch.arg_number				= 1001
-- StickPitch.input					= {-100, 100}
-- StickPitch.output					= {-1, 1}
-- StickPitch.controller				= controllers.base_gauge_StickRollPosition

-- StickRoll							= CreateGauge()
-- StickRoll.arg_number				= 1002
-- StickRoll.input						= {-100, 100}
-- StickRoll.output					= {-1, 1}
-- StickRoll.controller				= controllers.base_gauge_StickPitchPosition

-- ThrottleL							= CreateGauge()
-- ThrottleL.arg_number				= 104
-- ThrottleL.input						= {0, 100}
-- ThrottleL.output					= {0, 1}
-- ThrottleL.controller				= controllers.base_gauge_ThrottleLeftPosition

-- ThrottleR							= CreateGauge()
-- ThrottleR.arg_number				= 105
-- ThrottleR.input						= {0, 100}
-- ThrottleR.output					= {0, 1}
-- ThrottleR.controller				= controllers.base_gauge_ThrottleRightPosition

-- mirrors_data = {
--     center_point          = {0.0,0.0,0}, 
--     width                 = 0.8, --integrated (keep in mind that mirrors can be none planar )
--     aspect                = 5.0,
--     rotation              = math.rad(-4);
--     animation_speed       = 4.0;
--     near_clip             = 0.1;
--     middle_clip           = 40;
--     far_clip              = 60000;
--     flaps                 = 
--     {
--         "PNT_MIRROR_CTR",
--         "PNT_L_MIRROR",
--         "PNT_R_MIRROR",
--     }
-- }
-- mirrors_draw                        = CreateGauge()
-- mirrors_draw.arg_number                = 1000
-- mirrors_draw.input                   = {0,1}
-- mirrors_draw.output                   = {1,0}
-- mirrors_draw.controller             = controllers.mirrors_draw
--need_to_be_closed = true
-- need_to_be_closed = false


