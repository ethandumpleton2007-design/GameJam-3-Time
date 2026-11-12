// Movement

eggPosx = 960;
eggPosy = 528;

posOffsetConst = 96;

posOffsetY = 0;
posOffsetX = -posOffsetConst;

// Hiting things

hitOffsetConst = 64;

hitDir = 0;
hitOffsetX = -hitOffsetConst;
hitOffsetY = 0;

hitObject = R_Obj_HitEffectClass;

hitCooldown = 0;
hitCooldownConst = 30;

// Other Hitting things

otherHitObject = R_Obj_OtherHitObject;

OtherhitCooldownConst = 30;
OtherhitDely = 15;
OtherhitDelyConst = 15;

// StateMacine

curretState = "Normal";

// Sprite Control
	
faceAni = 1
actionAni = 0
	
forward = 0;
left = 1;
back = 2;
right = 3;

idle = 0
swing = 1;
charge = 2;
bigSwing = 3;


playerSpriteArray[forward][idle] = R_Spr_PlayerFrontIdleTemp2;
playerSpriteArray[left][idle] = R_Spr_PlayerIdleLeftTemp;
playerSpriteArray[back][idle] = R_Spr_PlayerBackdleTemp;
playerSpriteArray[right][idle] = R_Spr_PlayerIdleRightTemp;

