//Checks inputs
EXinput = keyboard_check(ord("D")) - keyboard_check(ord("A"))
EYinput = keyboard_check(ord("S")) - keyboard_check(ord("W"))

//Movement code
isMovingX = moveX != 0;
isMovingY = moveY != 0;

isColliding = place_meeting(x, y, E_obj_Collision)

moveX = EXinput * moveSpeed;
if(!global.camStopped){
x += moveX + global.camMoveSpeed;}
else{x += moveX;}

moveY = EYinput * moveSpeed;
global.playerYLocation = y;
y += moveY;

divideSpeed = isMovingX && isMovingY;
if(divideSpeed){
	moveSpeed = 4 / 1.3;}
else{moveSpeed = 4;}

//Shooting
if(image_index = 9){
image_index = 0;
image_speed = 0;}

if(image_index = 0){
if(Shooting){
image_speed = 1;
instance_create_depth(x + 47, y + 25, depth - 1, E_obj_Player_Lazer)
global.currentAmmo -= 1;}}

if(global.currentAmmo <= 0 && !Reloading){
Shooting = false;
Reloading = true;
alarm[3] = reloadSpeed;}

//Health, being hit, IFrames
if(global.playerHealth <= 0){game_end();}

//This isnt the best way to go about this, but i will figure something out later lol
if(global.IFrames = true && global.IFramesInvis){
	image_alpha = 0.5
	alarm[0] = 15;
	global.IFramesInvis = false;}
else if(!global.IFrames){
	global.IFramesInvis = false;
	image_alpha = 1;}