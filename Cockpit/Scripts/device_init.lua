dofile(LockOn_Options.script_path.."devices.lua")
dofile(LockOn_Options.common_script_path.."tools.lua")
dofile(LockOn_Options.common_script_path.."KNEEBOARD/declare_kneeboard_device.lua")

-- set panel
layoutGeometry = {}

mount_vfs_texture_archives("Bazar/Textures/AvionicsCommon")

attributes = {
	"support_for_cws",--wird benötigt, damit man nicht die Avionic des FC3-Moduls verliert wenn man "Mainpanel.lua" definiert.
	-- "avNightVisionGoggles",
}
---------------------------------------------
MainPanel = {"ccMainPanel",LockOn_Options.script_path.."mainpanel_init.lua"}

creators = {}

creators[devices.DARKEN_HUD_SYSTEM] 			={"avLuaDevice"			,LockOn_Options.script_path.."Systems/DARKEN_HUD_System.lua"}
creators[devices.HUD]							={"avLuaDevice"			,LockOn_Options.script_path.."Systems/HUD/HUD_System.lua"}


-- Indicators
-- Old one: indicators = {}
-- NEW one
	indicators[#indicators + 1] = {"ccIndicator", LockOn_Options.script_path.."HUD/init.lua",	--init script
 nil, 
    {
		{"ILS_PLASHKA_DOWN", "ILS_PLASHKA_RIGHT", "ILS_PLASHKA_CENTER", "ILS_PLASHKA_UP"},	-- initial geometry anchor , triple of connector names. 
		{sx_l =  0,  -- center position correction in meters (+forward , -backward)
		 sy_l =  0,  -- center position correction in meters (+up , -down)
		 sz_l =  0,  -- center position correction in meters (-left , +right)
		 sh   =  0,  -- half height correction 
		 sw   =  0,  -- half width correction 
		 rz_l =  0,  -- rotation corrections  
		 rx_l =  0,
		 ry_l =  0}
	}	
}

---------------------------------------------
dofile(LockOn_Options.common_script_path.."KNEEBOARD/declare_kneeboard_device.lua")
---------------------------------------------
