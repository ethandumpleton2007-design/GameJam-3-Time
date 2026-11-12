if(activated){
x += objectSpeed;

if(objectHealth <= 0){
	global.futureScore += 75
	instance_destroy();}
if(shoot = false){
	shoot = true;
	instance_create_depth(x + 12, y + 19.5, depth - 1, E_obj_enemy_laser);
	alarm[1] = 90;}}
if(!activated){x += -objectSpeed}