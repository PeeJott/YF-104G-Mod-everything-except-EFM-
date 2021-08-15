dofile(LockOn_Options.script_path.."command_defs.lua")
dofile(LockOn_Options.script_path.."utils.lua")

local dev = GetSelf()

local update_time_step = 0.05  --20 time per second
make_default_activity(update_time_step)

local sensor_data = get_base_data()

--I've just thrown that A4-Stuff in here to have something there...I don't think we need all that stuff....
dev:listen_command(Keys.GunsightElevationInc)
dev:listen_command(Keys.GunsightElevationDec)
dev:listen_command(Keys.GunsightElevationStartUp)
dev:listen_command(Keys.GunsightElevationStartDown)
dev:listen_command(Keys.GunsightElevationStop)
--dev:listen_command(Keys.GunsightBrightnessInc)
--dev:listen_command(Keys.GunsightBrightnessDec)
--dev:listen_command(Keys.GunsightBrightnessStartUp)
--dev:listen_command(Keys.GunsightBrightnessStartDown)
--dev:listen_command(Keys.GunsightBrightnessStop)
--dev:listen_command(Keys.GunsightDayNightToggle)

local maximum_gunsight_angle = 360 --In mils
local MIL_TO_RADIAN = 9.817477042e-4

function SetCommand(command,value)

    local nightbright = 0.25 --brightness reduction factor when night switch is engaged

    if (command == device_commands.GunsightKnob) then
        -- print_message_to_user("gunsight:"..tostring(value))
        --[[
        reflector_pos=reflector_pos+value
        if (reflector_pos<0) then
            reflector_pos=0
        end
        if (reflector_pos>1) then
            reflector_pos=1
        end
        --]]
        local gunsight_mil=(1-value)*380
        gunsight_mil=1000*(math.atan(gunsight_mil/1000.0)) -- correction for larger angles (y-movement to angle)
        gunsight_mil=math.floor(gunsight_mil*1000)/1000.0  -- restrict to 3 decimal places
        gunsight_mil_param:set(gunsight_mil)
        reflector_pos=1-value
        gunsight_elevation_pos = value
    elseif (command == device_commands.GunsightElevationControl_AXIS) then
        local normalisedValue = ( ( value + 1 ) / 2 ) * 1.0 -- normalised {-1 to 1} to {0 - 1.0}
        dev:performClickableAction(device_commands.GunsightKnob, normalisedValue, false)
    elseif (command == device_commands.GunsightDayNight) then
        daynight = value -- value 0=day, 1=night
        adjusted_brightness = (daynight==1) and (brightness * nightbright) or (brightness)
        --gunsight_daynight_param:set(adjusted_brightness)
    elseif (command == device_commands.GunsightBrightness) then
        gunsight_brightness_pos = value
        -- off from 0 to 45deg, brighter from 45 to 135deg, brightest from 135 to 170 deg  (bulb 1)
        -- off from 170deg to 225 deg, brighter until 315 deg, brightest until 350deg, then off  (bulb 2)
        brightness=0
        if (value>=(45/360) and value<(135/360)) then
            brightness = (value - (45/360) ) / ( (135/360) - (45/360) )
        elseif (value>=(135/360) and value<(170/360)) then
            brightness=1
        elseif (value>=(225/360) and value<(315/360)) then
            brightness = (value - (225/360) ) / ( (315/360) - (225/360) )
        elseif (value>=(315/360) and value<(350/360)) then
            brightness=1
        end
        adjusted_brightness = (daynight==1) and (brightness * nightbright) or (brightness)
        --gunsight_daynight_param:set(adjusted_brightness)
    end
