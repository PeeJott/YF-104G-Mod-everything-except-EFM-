start_custom_command   = 10000
local __count_custom = start_custom_command-1
local function __custom_counter()
	__count_custom = __count_custom + 1
	return __count_custom
end

Keys =
{
	ICommandHUDBrightnessDown	            = 747,

	PlaneGear                   			= 68,
	PlaneGearUp	               				= 430, 
	PlaneGearDown              				= 431,
	
	auto_HUD_brightness_down				= __custom_counter(),
	

}

start_command   = 3000
local __count = start_command-1
local function __counter()
	__count = __count + 1
	return __count
end

device_commands =
{
Gear                        = __counter(),
LndGear               		= __counter(),

}
