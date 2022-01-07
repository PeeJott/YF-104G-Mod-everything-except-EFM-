dofile(LockOn_Options.script_path.."clickable_defs.lua")
dofile(LockOn_Options.script_path.."command_defs.lua")
dofile(LockOn_Options.script_path.."devices.lua")

elements = {}

-- LANDING GEAR
elements["GEAR_083"] = default_2_position_tumb("Landing Gear (Up/Down)",                         devices.GEAR,    device_commands.Gear,        083)
elements["GEAR_083"].arg_value = {1, -1}
