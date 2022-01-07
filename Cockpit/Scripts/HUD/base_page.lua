dofile(LockOn_Options.script_path.."HUD/HUD_definitions.lua")
dofile(LockOn_Options.common_script_path.."devices_defs.lua")
dofile(LockOn_Options.common_script_path .. "elements_defs.lua")

local ClippingMaskGlobal 	= MakeMaterial (nil{232,51,0,255}) --Lachsfarben und Vollton {R,G,B,H}
local ClippingMaskSpecial 	= MakeMaterial (nil{0,159,229,255})--hellblau-türkis und Vollton 
local SHOW_MASKS 			= true

local hud_offset_x = 0.0
local hud_offset_y = 0.0


--hier geht die Hud-Glass Clipping-Mask los---------------------------
hud_glass_clipping_mask					= CreateElement "ceMeshPoly"
hud_glass_clipping_mask.name			= create_guid_string()
hud_glass_clipping_mask.primitivetype	=	"triangles"

--Edges of the HUD-Glass from Center-Connector (+=right -=left , +=up -=down)
--Maßangabe habe ich in der HUD_definitions.lua auf "METERS" gesetzt, also Meter vom zentralen Konnektor aus
--distances from center connector             #0            #1              #2              #3              #4           #5
hud_glass_clipping_mask.vertices		= {{-0.025, 0.05}, {-0.029, 0.045}, {-0.029, -0.045}, {0.029, -0.045}, {0.029, 0.045}, {0.025, 0.05},}

--triangles to be drawn from vertices (points) to fill the HUD-Glass
--die Nummerierung folgt aus der Angabe der Vertices oben, wobei der erste Eintrag #0!!!!! ist...#1 ist erst der zweite Eintrag!!!!
hud_glass_clipping_mask.indices			= {0,1,5,  1,4,5,  1,2,3,  1,3,4}
hud_glass_clipping_mask.init_pos		= {0.0, 0.0, 0.0} --init direkt auf dem connector
hud_glass_clipping_mask.material		= ClippingMaskSpecial
hud_glass_clipping_mask.h_clip_relation	= h_clip_relations.REWRITE_LEVEL --das ist h_clip_level Nr. 2
hud_glass_clipping_mask.level			= HUD_DEFAULT_LEVEL - 1 --das HUD_DEFAULT_LEVEL wird in der HUD_definitions.lua gesetzt!!!
hud_glass_clipping_mask.change_opacity	= false
hud_glass_clipping_mask.collimated		= false
hud_glass_clipping_mask.isvisible		= true --einmal zum testen, wenn es passt auf false setzen
Add(hud_glass_clipping_mask)

------------------------hud_glass_clipping_mask ist fertig und durch "Add" auch zugefügt als Objekt---------

--------------jetzt kommt die globale clipping mask die ein Level von der Speziellen clipping Mask zurückgesetzt ist-----------
cockpit_base_clipping_mask					= CreateElement"ceMeshPoly"
cockpit_base_clipping_mask.name				= create_guid_string()
cockpit_base_clipping_mask.primitivetype	= "triangles"
cockpit_base_clipping_mask.vertices			= {{-0.5, 0.5}, {-0.5, -0.5}, {0.5, -0.5}, {0.5, 0.5},}
cockpit_base_clipping_mask.indices			= {0,1,3,  1,2,3}
cockpit_base_clipping_mask.init_pos			= {0.0, 0.0, 0.0}
cockpit_base_clipping_mask.material			= ClippingMaskGlobal
cockpit_base_clipping_mask.h_clip_relation	= h_clip_relations.INCREASE_IF_LEVEL
cockpit_base_clipping_mask.level			= HUD_DEFAULT_LEVEL - 1
cockpit_base_clipping_mask.change_opacity	= false
cockpit_base_clipping_mask.collimated		= false
cockpit_base_clipping_mask.isvisible		= true --erstmal zum testen, dann auf false
Add(cockpit_base_clipping_mask)
---------------------------globale Clipping-Mask zugefügt------------------------------------------------------------------------

dofile(LockOn_Options.script_path.."HUD/HUD_indication_page.lua")

 
