if (place_meeting(x - h_speed_default, y, oSwR))
    {  while (!place_meeting(x-sign(h_speed_default),y, oSwR)) {
        x-=sign(h_speed_default)
        }
        image_index=0   
        h_speed_sign = 1;
        input_enabled = false;
        alarm[0] = 15;         
    }

    
if (place_meeting(x + h_speed_default, y, oSwR))
    {  while (!place_meeting(x+sign(h_speed_default),y, oSwR)) {
        x+=sign(h_speed_default)
        }
       image_index=0  
        h_speed_sign = -1;
        input_enabled = false;
        alarm[0] = 15; 
    }
    
if (place_meeting(x, y + dy, oSwR))
    { while (!place_meeting(x, y + sign(dy), oSwR)) {
      y += sign(dy)
      }
    image_index=0  
    v_speed_sign *= -1;     
    }    
    
if (place_meeting(x - h_speed_default, y, oSwG))
    { while (!place_meeting(x-sign(h_speed_default),y, oSwG)) {
      x-=sign(h_speed_default)
      }
    image_index=1   
    h_speed_sign = 1;
    input_enabled = false;
    alarm[0] = 15;         
    }
    
if (place_meeting(x + h_speed_default, y, oSwG))
    { while (!place_meeting(x+sign(h_speed_default),y, oSwG)) {
      x+=sign(h_speed_default)
      }
    image_index=1    
    h_speed_sign = -1;
    input_enabled = false;
    alarm[0] = 15; 
    }
    
if (place_meeting(x, y + dy, oSwG))
    { while (!place_meeting(x, y + sign(dy), oSwG)) {
     y += sign(dy)
    }
    image_index=1 
    v_speed_sign *= -1;     
}
