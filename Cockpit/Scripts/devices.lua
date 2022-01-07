local count = 0
local function counter()
	count = count + 1
	return count
end
-------DEVICE ID----------
devices = {}
devices["DARKEN_HUD_SYSTEM"]			= counter() --Nummer 1
--devices["GUN_PIPPER"]				= counter() --Nummer 2
devices["HUD"] 					= counter() -- Nummer 3 wenn es Nummer 2 wieder gibt 
devices["GEAR"]					= counter() --Nummer 4
