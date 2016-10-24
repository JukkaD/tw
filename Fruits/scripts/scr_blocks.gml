//green
if (place_meeting(x, y + dy, oGreen))
{ while (!place_meeting(x, y + sign(dy), oGreen)) {
    y += sign(dy)
    }
    v_speed_sign *= -1;     
}

if (!place_meeting(x + h_speed_default*h_speed_sign, y, oGreen)) 
{ 
    x += h_speed_default*h_speed_sign; 
}  

if (place_meeting(x - h_speed_default, y, oGreen))
    {  while (!place_meeting(x-sign(h_speed_default),y, oGreen)) {
        x-=sign(h_speed_default)
        }
        h_speed_sign = 1;
        input_enabled = false;
        alarm[0] = 15; 
    }
    
if (place_meeting(x + h_speed_default, y, oGreen))
    {  while (!place_meeting(x+sign(h_speed_default),y, oGreen)) {
        x+=sign(h_speed_default)
        }
        h_speed_sign = -1;
        input_enabled = false;
        alarm[0] = 15; 
    }
    
    
//red
if (place_meeting(x, y + dy, oRed))
{ while (!place_meeting(x, y + sign(dy), oRed)) {
    y += sign(dy)
    }
    v_speed_sign *= -1;     
}

if (!place_meeting(x + h_speed_default*h_speed_sign, y, oRed)) 
{ 
    x += h_speed_default*h_speed_sign; 
}  

if (place_meeting(x - h_speed_default, y, oRed))
    {  while (!place_meeting(x-sign(h_speed_default),y, oRed)) {
        x-=sign(h_speed_default)
        }
        h_speed_sign = 1;
        input_enabled = false;
        alarm[0] = 15; 
    }
    
if (place_meeting(x + h_speed_default, y, oRed))
    {  while (!place_meeting(x+sign(h_speed_default),y, oRed)) {
        x+=sign(h_speed_default)
        }
        h_speed_sign = -1;
        input_enabled = false;
        alarm[0] = 15; 
    }
