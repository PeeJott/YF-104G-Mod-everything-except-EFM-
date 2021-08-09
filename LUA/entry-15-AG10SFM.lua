self_ID = "VSN_F104G"
declare_plugin(self_ID,
{
image     	 = "FC3.bmp",
installed 	 = true, -- if false that will be place holder , or advertising
dirName	  	 = current_mod_path,
displayName  = _("VSN_F104G"),
developerName = _("VSN"),

fileMenuName = _("VSN_F104G"),
update_id        = "VSN_F104G",
version		 = "2.5.6",
state		 = "installed",
info		 = _("Lockheed F-104 Starfighter war ein einstrahliges Kampfflugzeug der Lockheed Corporation, Burbank (USA). Ab 1956 bauten Lockheed und spaeter auch kanadische und europaeische Lizenznehmer das Modell in grosser Stueckzahl. Die F-104 gehoerte zur sogenannten Century-Reihe (F-100 bis F-110) und war als reiner Tag- und Abfangjaeger konzipiert, optimiert fuer hohe Geschwindigkeiten und Steigleistung."),

Skins	=
	{
		{
		    name	= _("VSN_F104G"),
			dir		= "Theme"
		},
	},
Missions =
	{
		{
			name		    = _("VSN_F104G"),
			dir			    = "Missions",
  		},
	},
LogBook =
	{
		{
			name		= _("VSN_F104G"),
			type		= "VSN_F104G",
		},
		{
			name		= _("VSN_F104G_AG"),
			type		= "VSN_F104G_AG",
		},
		{
			name		= _("VSN_F104S"),
			type		= "VSN_F104S",
		},
		{
			name		= _("VSN_F104S_AG"),
			type		= "VSN_F104S_AG",
		},
	},	
		
InputProfiles =
	{
		["VSN_F104G"] = current_mod_path .. '/Input/VSN_F104G',
		["VSN_F104G_AG"] = current_mod_path .. '/Input/VSN_F104G_AG',
		["VSN_F104S"] = current_mod_path .. '/Input/VSN_F104S',
		["VSN_F104S_AG"] = current_mod_path .. '/Input/VSN_F104S_AG',
	},
	
})
----------------------------------------------------------------------------------------
mount_vfs_model_path	(current_mod_path.."/Shapes")
mount_vfs_liveries_path (current_mod_path.."/Liveries")
mount_vfs_texture_path  (current_mod_path.."/Textures/VSN_F104G")
mount_vfs_texture_path  (current_mod_path.."/Textures/VSN_F104G_Skins")
mount_vfs_texture_path  (current_mod_path.."/Textures/DEVRiM_DCS_SU-27_EnglishGrayCockpitMod")
-------------------------------------------------------------------------------------
dofile(current_mod_path.."/Views_F15Pit.lua")
make_view_settings('VSN_F104G', ViewSettings, SnapViews)
make_flyable('VSN_F104G',current_mod_path..'/Cockpit/KneeboardRight/',{nil, old = 6}, current_mod_path..'/comm.lua')--SFM
-------------------------------------------------------------------------------------
dofile(current_mod_path.."/Views_A10Pit.lua")
make_view_settings('VSN_F104G_AG', ViewSettings, SnapViews)
make_flyable('VSN_F104G_AG',current_mod_path..'/Cockpit/KneeboardRight/',{nil, old = 17}, current_mod_path..'/comm.lua')--SFM
-------------------------------------------------------------------------------------
dofile(current_mod_path.."/Views_F15Pit.lua")
make_view_settings('VSN_F104S', ViewSettings, SnapViews)
make_flyable('VSN_F104S',current_mod_path..'/Cockpit/KneeboardRight/',{nil, old = 6}, current_mod_path..'/comm.lua')--SFM
-------------------------------------------------------------------------------------
dofile(current_mod_path.."/Views_A10Pit.lua")
make_view_settings('VSN_F104S_AG', ViewSettings, SnapViews)
make_flyable('VSN_F104S_AG',current_mod_path..'/Cockpit/KneeboardRight/',{nil, old = 17}, current_mod_path..'/comm.lua')--SFM
-------------------------------------------------------------------------------------
dofile(current_mod_path..'/VSN_F104G.lua')
dofile(current_mod_path..'/VSN_F104G_AG.lua')
dofile(current_mod_path..'/VSN_F104S.lua')
dofile(current_mod_path..'/VSN_F104S_AG.lua')
-------------------------------------------------------------------------------------
plugin_done()
