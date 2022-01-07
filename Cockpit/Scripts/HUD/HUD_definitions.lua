dofile(LockOn_Options.common_script_path.."elements_defs.lua")

local HUD_TEXTURES_PATH        = LockOn_Options.script_path .. "Textures/" 
 
SetScale(METERS) --das setzt eine Betrachtungsweise/Scala für die Maßangaben. Anderer Möglichkeiten in (FOV) oder (MILLYRADIENS) gem. elements_defs.lua im Installationsordner 

materials = {}
materials["GUN_PIPPER_ORANGE"]	=	{255.0, 139.0, 50.0, 255.0}

-------Einmal eine Konvertierung-Funktionen-Liste, weil es nicht schaden kann----------
DEGREE_TO_MRAD = 17.4532925199433
DEGREE_TO_RAD  = 0.0174532925199433
RAD_TO_DEGREE  = 57.29577951308233
MRAD_TO_DEGREE = 0.05729577951308233

---------Das hier ist wichtig, weil es die Render-Level des Cockpit-Krams setzt------
HUD_DEFAULT_LEVEL = 2                               
HUD_DEFAULT_NOCLIP_LEVEL  = HUD_DEFAULT_LEVEL - 1  
-------------------------------------------------------------------------------------

HUD_GUNPIPPER_TEXT = MakeMaterial(HUD_TEXTURES_PATH.."VSN_F104_CPT_GUN_C.dds", GUN_PIPPER_ORANGE)

----------diese Local-Funktion ist der default-generator für einen Kasten durch Indices(triangles)---
local box_indices =
{
	0,1,2;0,2,3
}

function hud_texture_box (UL_X,UL_Y,W,H, texture_size_x, texture_size_y)
local ux = UL_X / texture_size_x
local uy = UL_Y / texture_size_y
local w  = W / texture_size_x
local h  = H / texture_size_y
return {{ux	    ,uy},
		{ux + w ,uy},
		{ux + w ,uy + h},
		{ux	 	,uy + h}}
end



function create_HUD_texture(HUD_material, UL_X,UL_Y,DR_X,DR_Y, sale,CENTER_X,CENTER_Y)

if sale == nil then
	sale = 1.4
end

local mils_per_pixel =  sale/512
local W 	   		 = DR_X - UL_X
local H 	   		 = DR_Y - UL_Y
local cx		     = (UL_X + 0.5 * W)
local cy		     = (UL_Y + 0.5 * H)

local CENTER_X 		 = CENTER_X or cx
local CENTER_Y 		 = CENTER_Y or cy
local dcx 		 	 = mils_per_pixel * (CENTER_X - cx)
local dcy 		     = mils_per_pixel * (CENTER_Y - cy)

local half_x 		 = 0.49 * W * mils_per_pixel
local half_y 		 = 0.49 * H * mils_per_pixel


local object = CreateElement "ceTexPoly"
	  object.material 	=  HUD_material
 	  object.vertices 	=  {{-half_x - dcx, half_y + dcy},
						   { half_x - dcx, half_y + dcy},
						   { half_x - dcx,-half_y + dcy},
						   {-half_x - dcx,-half_y + dcy}}
	  object.tex_coords = hud_texture_box(UL_X,UL_Y,W,H, 1024, 1024) -- You will need this function hud_texture_box
	  object.indices	= box_indices
	  return object
end

function AddHudElement(object)
	object.h_clip_relation  = h_clip_relations.COMPARE	--INCREASE_IF_LEVEL  
	object.level  		 	= HUD_DEFAULT_LEVEL 
    object.use_mipfilter    = true
	object.additive_alpha   = true
    object.collimated       = true
	object.blend_mode 		=  blend_mode.IBM_REGULAR_ADDITIVE_ALPHA
    Add(object)
end


