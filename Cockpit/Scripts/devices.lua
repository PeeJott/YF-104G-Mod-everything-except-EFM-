local count = 0
local function counter()
	count = count + 1
	return count
end
-------DEVICE ID----------
devices = {}
devices["HUD_SYSTEM"]			= counter() --Nummer 1
devices["GUN_PIPPER"]			= counter() --Nummer 2

