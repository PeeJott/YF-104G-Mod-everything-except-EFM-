dofile(LockOn_Options.script_path.."devices.lua")
dofile(LockOn_Options.common_script_path.."tools.lua")
dofile(LockOn_Options.common_script_path.."KNEEBOARD/declare_kneeboard_device.lua") --//vielleicht nicht zwei mal, oder?
--dofile(LockOn_Options.script_path.."materials.lua")--//erstmal testen und alles raus was keine Miete zahlt

-- set panel
layoutGeometry = {}

--mount_vfs_texture_archives("Bazar/Textures/AvionicsCommon") mal auskommentiert, da es immer zu einem "Fehler" im LOG kam

attributes = {
	"support_for_cws",--wird benötigt, damit man nicht die Avionic des FC3-Moduls verliert wenn man "Mainpanel.lua" definiert.
	-- "avNightVisionGoggles",
}
---------------------------------------------
MainPanel = {"ccMainPanel",LockOn_Options.script_path.."mainpanel_init.lua"}

creators = {}

creators[devices.DARKEN_HUD_SYSTEM] 			={"avLuaDevice"			,LockOn_Options.script_path.."Systems/DARKEN_HUD_System.lua"}
creators[devices.HUD]							={"avLuaDevice"			,LockOn_Options.script_path.."HUD/HUD_System.lua"}


-- Indicators
-- Old one: indicators = {}
-- NEW one
	indicators[#indicators + 1] = {"ccIndicator", LockOn_Options.script_path.."HUD/init.lua",	--init script
 nil, 
    {
		{"ILS-PLASHKA-CENTER", "ILS-PLASHKA-DOWN", "ILS-PLASHKA-RIGHT"},	-- initial geometry anchor , triple of connector names. Mal zunächst nur 3 statt 4 ILS-PLASHKE-UP mal ausgelassen
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
