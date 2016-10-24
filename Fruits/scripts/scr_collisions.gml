var inst1 = instance_place(x, y + sign(dy), oBlock)
var inst2 = instance_place(x-sign(h_speed_default),y, oBlock)
var inst3 = instance_place(x+sign(h_speed_default),y, oBlock)
block_color = oBlock.image_index
ball_color = oPlayer.image_index

//wall
if (place_meeting(x, y+dy, oWall))
{ while (!place_meeting(x, y + sign(dy), oWall)) {
    y += sign(dy)
    }
    v_speed_sign *= -1;     
}


if (!place_meeting(x + h_speed_default*h_speed_sign, y, oWall)) 
{ 
    x += h_speed_default*h_speed_sign; 
}  

if (place_meeting(x - h_speed_default, y, oWall))
    {  while (!place_meeting(x-sign(h_speed_default),y, oWall)) {
        x-=sign(h_speed_default)
        }
        h_speed_sign = 1;
        input_enabled = false;
        alarm[0] = 15; 
    }
    
if (place_meeting(x + h_speed_default, y, oWall))
    {  while (!place_meeting(x+sign(h_speed_default),y, oWall)) {
        x+=sign(h_speed_default)
        }
        h_speed_sign = -1;
        input_enabled = false;
        alarm[0] = 15; 
    }
    
    
//block
if (instance_place(x, y + dy, oBlock))
{ while (!inst1) {
    y += sign(dy)
    } if (ball_color = block_color) {
    v_speed_sign *= -1;  
    with(inst1) {instance_destroy()   } 
    } else {
    v_speed_sign *= -1;  
    }
}

if (instance_place(x - h_speed_default, y, oBlock))
    {  while (!inst2) {
        x-=sign(h_speed_default)
        } if (ball_color = block_color) {
        h_speed_sign = 1;
        input_enabled = false;
        alarm[0] = 15;
        with(inst2){ instance_destroy() }
        } else {
        h_speed_sign = 1;
        input_enabled = false;
        alarm[0] = 15;
        }  
    }
    
if (instance_place(x + h_speed_default, y, oBlock))
    {  while (!inst3) {
        x+=sign(h_speed_default)
        }  if (ball_color = block_color) {
        h_speed_sign = -1;
        input_enabled = false;
        alarm[0] = 15; 
        with(inst3) {instance_destroy()}
        } else {
        h_speed_sign = -1;
        input_enabled = false;
        alarm[0] = 15;
        } 
    }
