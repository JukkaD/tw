if (place_meeting(x - h_speed_default, y, oSwR))
    {  while (!place_meeting(x-sign(h_speed_default),y, oSwR)) {
        x-=sign(h_speed_default)
        }
        ball_color=c_red   
        h_speed_sign = 1;
        input_enabled = false;
        alarm[0] = 15;         
    }

    
if (place_meeting(x + h_speed_default, y, oSwR))
    {  while (!place_meeting(x+sign(h_speed_default),y, oSwR)) {
        x+=sign(h_speed_default)
        }
        ball_color=c_red  
        h_speed_sign = -1;
        input_enabled = false;
        alarm[0] = 15; 
    }
    
if (place_meeting(x, y + dy, oSwR))
    { while (!place_meeting(x, y + sign(dy), oSwR)) {
      y += sign(dy)
      }
    ball_color=c_red  
    v_speed_sign *= -1;     
    }    
    
if (place_meeting(x - h_speed_default, y, oSwG))
    { while (!place_meeting(x-sign(h_speed_default),y, oSwG)) {
      x-=sign(h_speed_default)
      }
    ball_color=c_green   
    h_speed_sign = 1;
    input_enabled = false;
    alarm[0] = 15;         
    }
    
if (place_meeting(x + h_speed_default, y, oSwG))
    { while (!place_meeting(x+sign(h_speed_default),y, oSwG)) {
      x+=sign(h_speed_default)
      }
    ball_color=c_green   
    h_speed_sign = -1;
    input_enabled = false;
    alarm[0] = 15; 
    }
    
if (place_meeting(x, y + dy, oSwG))
    { while (!place_meeting(x, y + sign(dy), oSwG)) {
     y += sign(dy)
    }
    ball_color=c_green
    v_speed_sign *= -1;     
}
