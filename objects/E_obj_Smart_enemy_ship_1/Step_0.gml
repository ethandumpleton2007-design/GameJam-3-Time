if(activated){
x += global.camMoveSpeed;

if(global.playerYLocation < y){
canShoot = false;
y -= verticalSpeed;}
if(global.playerYLocation > y){
canShoot = false;
y += verticalSpeed;}
if(global.playerYLocation == y){
canShoot = true;}

if(isHit && !alphaCooldown){
alphaCooldown = true;
alarm[2] = 15;}
else if(isHit = false){
halfVis = false;}

if(halfVis){image_alpha = 0.5;}
else{image_alpha = 1;}

if(objectHealth <= 0){
	global.futureScore += 5
	instance_destroy();}
if(shoot = false && canShoot){
	shoot = true;
	instance_create_depth(x + 12, y + 19.5, depth - 1, E_obj_enemy_laser);
	alarm[1] = shootCooldown;}}