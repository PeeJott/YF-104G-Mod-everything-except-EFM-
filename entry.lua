self_ID = "YF104G"

-- local support_cockpit = current_mod_path..'/Cockpit/Scripts/' -- path for human cockpit// newly inserted

declare_plugin(self_ID,
{
image     	 = "FC3.bmp",
installed 	 = true, -- if false that will be place holder , or advertising
dirName	  	 = current_mod_path,
displayName  = _("YF104G"),
developerName = _("VSN"),

fileMenuName = _("YF104G"),
update_id        = "YF104G",
version		 = "2.7.4",
state		 = "installed",
info		 = _("Lockheed F-104 Starfighter war ein einstrahliges Kampfflugzeug der Lockheed Corporation, Burbank (USA). Ab 1956 bauten Lockheed und spaeter auch kanadische und europaeische Lizenznehmer das Modell in grosser Stueckzahl. Die F-104 gehoerte zur sogenannten Century-Reihe (F-100 bis F-110) und war als reiner Tag- und Abfangjaeger konzipiert, optimiert fuer hohe Geschwindigkeiten und Steigleistung."),

Skins	=
	{
		{
		    name	= _("F104G"),
			dir		= "Theme"
		},
	},
Missions =
	{
		{
			name		    = _("YF104G"),
			dir			    = "Missions",
  		},
	},
LogBook =
	{
		{
			name		= _("YF104G"),
			type		= "YF104G",
		},
		{
			name		= _("YF104G_AG"),
			type		= "YF104G_AG",
		},
	},	
		
InputProfiles =
	{
		["YF104G"] = current_mod_path .. '/Input/YF104G',
		["YF104G_AG"] = current_mod_path .. '/Input/YF104G_AG',
	},
	
binaries = {
"YF104G",
},

})
----------------------------------------------------------------------------------------
mount_vfs_model_path	(current_mod_path.."/Shapes")
mount_vfs_liveries_path (current_mod_path.."/Liveries")
--mount_vfs_texture_path  (current_mod_path.."/Textures/YF104G")
mount_vfs_texture_path  (current_mod_path.."/Textures/YF104G_cpt")
--mount_vfs_texture_path  (current_mod_path.."/Textures/YF104G_Skins")
--mount_vfs_texture_path  (current_mod_path.."/Textures/DEVRiM_DCS_SU-27_EnglishGrayCockpitMod")
-------------------------------------------------------------------------------------
local cfg_path = current_mod_path ..  "/FM/YF104G/config.lua"
dofile(cfg_path)
YF104G[1]             = self_ID
YF104G[2]             = 'YF104G'
YF104G.config_path     = cfg_path
YF104G.old             = 6 -- SU27-3, SU33-4, F-15-6, SU25-54

dofile(current_mod_path.."/Views_F104Pit.lua")
make_view_settings('YF104G', ViewSettings, SnapViews)
make_flyable('YF104G',current_mod_path..'/Cockpit/KneeboardRight/', YF104G, current_mod_path..'/comm.lua')--EFM
--make_flyable('YF104G',current_mod_path..'/Cockpit/Scripts/', YF104G, current_mod_path..'/comm.lua')--EFM
-------------------------------------------------------------------------------------
local cfg_path = current_mod_path ..  "/FM/YF104G/config.lua"
dofile(cfg_path)
YF104G[1]             = self_ID
YF104G[2]             = 'YF104G'
YF104G.config_path     = cfg_path
YF104G.old             = 54 -- SU27-3, SU33-4, F-15-6, SU25-54

dofile(current_mod_path.."/Views_F104Pit.lua")
make_view_settings('YF104G_AG', ViewSettings, SnapViews)
make_flyable('YF104G_AG',current_mod_path..'/Cockpit/KneeboardRight/', YF104G, current_mod_path..'/comm.lua')--EFM
-------------------------------------------------------------------------------------

dofile(current_mod_path..'/YF104G.lua')
dofile(current_mod_path..'/YF104G_AG.lua')

--dofile(current_mod_path..'/Get_System_info_new.lua') --NEW integratet
--dofile(current_mod_path..'/Get_System_info_init.lua')----2nd NEW entry
--dofile(current_mod_path..'/Get_System_info_Lo.lua') --first try LoGet im gleichen Ordner
-------------------------------------------------------------------------------------
plugin_done()
