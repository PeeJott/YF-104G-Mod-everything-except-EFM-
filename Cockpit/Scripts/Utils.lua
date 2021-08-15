function startup_print(...)
    print(...)
end

-- rounds the number 'num' to the number of decimal places in 'idp'
--
-- print(round(107.75, -1))     : 110.0
-- print(round(107.75, 0))      : 108.0
-- print(round(107.75, 1))      : 107.8
function round(num, idp)
    local mult = 10^(idp or 0)
    return math.floor(num * mult + 0.5) / mult
end

--die clamp-function und die ganz oben "startu_print"funktion werden gebraucht, der Rest eher aktuell nicht.
function clamp(value, minimum, maximum)
	return math.max(math.min(value,maximum),minimum)
end

--[[function pointFromVector( px, py, pz, hdg, slantangle, radius )
    local x = px + (radius * math.cos(hdg) * math.cos(slantangle))
    local z = pz + (radius * math.sin(-hdg) * math.cos(slantangle))  -- pi/2 radians is west
    local y = py + (radius * math.sin(slantangle))

    return x,y,z
end

-- return GCD of m,n
function gcd(m, n)
    while m ~= 0 do
        m, n = math.fmod(n, m), m;
    end
    return n;
end


function LinearTodB(value)
    return math.pow(value, 3)
end

--einfach mal zur Sicherheit von A4/Scripts/Utils.lua übernommen
function find_lua_device_ptr(device)
  str_ptr = string.sub(tostring(device.link),10)
  return str_ptr
end

function bearing_to_vec2d(brg)
	brg = math.rad(brg)
	vec = {
		x = math.cos(brg),
		z = math.sin(brg)
	}
	
	return vec
end

function vec2d_to_bearing(vec)
	angle = math.deg(math.atan2(vec.z,vec.x))
	
	if angle < 0 then
		angle = 360 + angle
	end
	
	return angle
end

function normalize_vec2d(vec)
	mag = math.sqrt(vec.x^2 + vec.z^2)
	new_vec = {
		x = vec.x / mag,
		z = vec.z / mag
	}
	return new_vec
end]]