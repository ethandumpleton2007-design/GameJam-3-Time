//Checks inputs
var EXinput, EYinput;

EXinput = keyboard_check(ord("D")) - keyboard_check(ord("A"))
EYinput = keyboard_check(ord("S")) - keyboard_check(ord("W"))
//Movement code
isMovingX = moveX != 0;
isMovingY = moveY != 0;

moveX = EXinput * moveSpeed;
x += moveX;

moveY = EYinput * moveSpeed;
y += moveY

divideSpeed = isMovingX && isMovingY;
if(divideSpeed){
	moveSpeed = 4 / 1.3;}
else{moveSpeed = 4;}

//Shoot animation
if(image_index = 3){
image_index = 0;
image_speed = 0;}