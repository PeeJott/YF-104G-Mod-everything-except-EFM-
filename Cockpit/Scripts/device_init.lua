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

creators[devices.HUD_SYSTEM] 			={"avLuaDevice"			,LockOn_Options.script_path.."Systems/HUD_System.lua"}
--creators[devices.GUN_PIPPER]			={"avLuaDevice"			,LockOn_Options.script_path.."Systems/GUN_PIPPER.lua"}
creators[devices.ELECTRIC_SYSTEM]		={"avSimpleElectricSystem",LockOn_Options.script_path.."Systems/electric_system.lua"}
creators[devices.WEAPON_SYSTEM]         ={"avSimpleWeaponSystem",LockOn_Options.script_path.."Systems/weapon_system.lua"}



-- Indicators
indicators = {}	
---------------------------------------------
dofile(LockOn_Options.common_script_path.."KNEEBOARD/declare_kneeboard_device.lua")
---------------------------------------------
