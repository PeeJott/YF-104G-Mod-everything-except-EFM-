
--dofile("Scripts/Database/Weapons/warheads.lua")

--local GALLON_TO_KG = 3.785 * 0.8


local function YF104G_L_PTB(clsid, center)
	local data = {
		category	= CAT_FUEL_TANKS,
		CLSID		= clsid,
		attribute	=  {wsType_Air,wsType_Free_Fall,wsType_FuelTank,WSTYPE_PLACEHOLDER},
		Picture		= "PTB.png",
		displayName	= _("Fuel Tank"),
		Weight_Empty	= 132,
		Weight			= 132 + 500,	-- 330 gallons, 6.8 lb/gal// 645l * 0,75 
		Cx_pil		= 0.00141885432,		--1.2*0.001313754,			-- TODO
		shape_table_data = 
		{
			{
				name	= "YF104GL-ptb";
				file	= "YF104GL-ptb";
				life	= 1;
				fire	= { 0, 1};
				username	= "YF104GL-ptb";
				index	= WSTYPE_PLACEHOLDER;
			},
		},
		Elements	= 
		{
			{
				ShapeName	= "YF104GL-ptb",
			}, 
		}, 
	}
	declare_loadout(data)
end

YF104G_L_PTB("{YF104G_L_PTB}")

local function YF104G_R_PTB(clsid, center)
	local data = {
		category	= CAT_FUEL_TANKS,
		CLSID		= clsid,
		attribute	=  {wsType_Air,wsType_Free_Fall,wsType_FuelTank,WSTYPE_PLACEHOLDER},
		Picture		= "PTB.png",
		displayName	= _("Fuel Tank"),
		Weight_Empty	= 132,
		Weight			= 132 + 500,	-- 330 gallons, 6.8 lb/gal 
		Cx_pil		= 0.00141885432,		--1.2*0.001313754,			-- TODO
		shape_table_data = 
		{
			{
				name	= "YF104GR-ptb";
				file	= "YF104GR-ptb";
				life	= 1;
				fire	= { 0, 1};
				username	= "YF104GR-ptb";
				index	= WSTYPE_PLACEHOLDER;
			},
		},
		Elements	= 
		{
			{
				ShapeName	= "YF104GR-ptb",
			}, 
		}, 
	}
	declare_loadout(data)
end

YF104G_R_PTB("{YF104G_R_PTB}")

local function YF104G_PTB(clsid, center)
	local data = {
		category	= CAT_FUEL_TANKS,
		CLSID		= clsid,
		attribute	=  {wsType_Air,wsType_Free_Fall,wsType_FuelTank,WSTYPE_PLACEHOLDER},
		Picture		= "PTB.png",
		displayName	= _("Fuel Tank"),
		Weight_Empty	= 132,
		Weight			= 132 + 500,	-- 330 gallons, 6.8 lb/gal //645l * 0,75
		Cx_pil		= 0.00141885432,		--1.2*0.001313754,			-- TODO
		shape_table_data = 
		{
			{
				name	= "YF104G-ptb";
				file	= "YF104G-ptb";
				life	= 1;
				fire	= { 0, 1};
				username	= "YF104G-ptb";
				index	= WSTYPE_PLACEHOLDER;
			},
		},
		Elements	= 
		{
			{
				ShapeName	= "YF104G-ptb",
			}, 
		}, 
	}
	declare_loadout(data)
end

YF104G_PTB("{YF104G_PTB}")
