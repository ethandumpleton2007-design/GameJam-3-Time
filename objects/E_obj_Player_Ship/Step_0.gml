if(!global.futureLevelComplete && !gameOver)

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


//SOUND: engine loops while the ship is moving
var _shipMoving = (EXinput != 0 || EYinput != 0) && !global.futureLevelComplete && global.playerHealth > 0;
if (_shipMoving && !audio_is_playing(spaceEngine_003)){
	audio_play_sound(spaceEngine_003, 5, true, 0.4);}
else if (!_shipMoving && audio_is_playing(spaceEngine_003)){
	audio_stop_sound(spaceEngine_003);}

//MUSIC: loop until level complete or death
var _music = Juhani_Junkala__Retro_Game_Music_Pack__Level_3;
if (global.futureLevelComplete || global.playerHealth <= 0){
	audio_stop_sound(_music);}
else if (!audio_is_playing(_music)){
	audio_play_sound(_music, 1, true, 0.3);}

//Shooting
if(image_index = 9){
image_index = 0;
image_speed = 0;}

if(image_index = 0){
if(Shooting){
image_speed = 1;
instance_create_depth(x + 47, y + 25, depth - 1, E_obj_Player_Lazer)
audio_play_sound(laserRetro_000, 10, false, 0.7, 0, random_range(0.95, 1.05));
global.currentAmmo -= 1;}}

if(global.currentAmmo <= 0 && !Reloading){
Shooting = false;
Reloading = true;
audio_play_sound(clipload1, 12, false);
alarm[3] = reloadSpeed;}

//Health, being hit, IFrames

//SOUND: player damage (plays whenever health goes down, but not on the killing hit)
if (variable_instance_exists(id, "lastPlayerHealth") && global.playerHealth < lastPlayerHealth && global.playerHealth > 0){
	audio_play_sound(forceField_002, 15, false);}
lastPlayerHealth = global.playerHealth;

if(global.playerHealth <= 0){
	gameOver = true;}

//This isnt the best way to go about this, but i will figure something out later lol
if(global.IFrames = true && global.IFramesInvis){
	image_alpha = 0.5
	alarm[0] = 15;
	global.IFramesInvis = false;}
else if(!global.IFrames){
	global.IFramesInvis = false;
	image_alpha = 1;}