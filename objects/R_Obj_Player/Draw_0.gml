draw_set_color(c_white)
draw_self();


//Cooldown Bar
draw_set_color(c_green);

draw_rectangle(384,832,672,736,false);

var _coolDownRectangle = clamp(288*(hitCooldown/OtherhitCooldownConst),-1,289)

draw_set_color(c_red);
draw_rectangle(384,832,384 +_coolDownRectangle,736,false);

// Other Hit Dely Bar
//if curretState == "Charge"
//{
	draw_set_color(c_white);
	draw_rectangle(1184,832,1472,736,false);
	draw_set_color(c_purple);
	draw_rectangle(1184,832,1184 + (288*(OtherhitDely/OtherhitDelyConst)),736,false);
//}


draw_set_color(c_white);