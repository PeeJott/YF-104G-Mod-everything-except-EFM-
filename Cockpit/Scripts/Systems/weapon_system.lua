dofile(LockOn_Options.script_path.."Systems/electric_system_api.lua")
dofile(LockOn_Options.script_path.."command_defs.lua")

local dev = GetSelf()

local update_time_step = 0.05
make_default_activity(update_time_step)

local sensor_data = get_base_data()


--dev:

dev:listen_command(Keys.pickle_on)
dev:listen_command(Keys.pickle_off)
dev:listen_command(Keys.trigger_on)
dev:listen_command(Keys.trigger_off)

local ir_missile_lock_param = get_param_handle("WS_IR_MISSILE_LOCK")
local ir_missile_az_param = get_param_handle("WS_IR_MISSILE_TARGET_AZIMUTH")
local ir_missile_el_param = get_param_handle("WS_IR_MISSILE_TARGET_ELEVATION")
local ir_missile_des_az_param = get_param_handle("WS_IR_MISSILE_SEEKER_DESIRED_AZIMUTH")
local ir_missile_des_el_param = get_param_handle("WS_IR_MISSILE_SEEKER_DESIRED_ELEVATION")

local current_station = 1

function keys_pickle_on(value)
    dev:drop_flare(1, 1)
    local info = dev:get_station_info(current_station)
    --print_message_to_user("Station "..tostring(current_station).." "..tostring(info.count))
    
    dev:launch_station(current_station)
    current_station = (current_station + 1) % 11
end

function keys_trigger_on(value)
    if electric_system_api:get_AC() then
        dispatch_action(nil, Keys.iCommandPlaneFire)
    end
end

function keys_trigger_off(value)
    dispatch_action(nil, Keys.iCommandPlaneFireOff)
end


command_table = {
    [Keys.pickle_on] = keys_pickle_on,
    [Keys.trigger_on] = keys_trigger_on,
    [Keys.trigger_off] = keys_trigger_off,
}

function SetCommand(command, value)

    if command_table[command] then
        command_table[command](value)
    end
end


function post_initialize()
    dev:select_station(current_station)

end


function update()

    if ir_lock:get() > 0 then
        print_message_to_user("Missile Lock")
    end

end

need_to_be_closed = false