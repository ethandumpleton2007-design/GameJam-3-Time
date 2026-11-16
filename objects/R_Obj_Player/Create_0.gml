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

// Idle Control
backToIdle = 0;
backToIdleConst = 15;

// Sprite Ararys
playerSpriteArray[forward][idle] = R_Spr_PlayerIdleForward;
playerSpriteArray[left][idle] = R_Spr_PlayerIdleLeft;
playerSpriteArray[back][idle] = R_Spr_PlayerIdleBack;
playerSpriteArray[right][idle] = R_Spr_PlayerIdleRight;

playerSpriteArray[forward][swing] = R_Spr_PlayerSwingForward;
playerSpriteArray[left][swing] = R_Spr_PlayerSwingLeft;
playerSpriteArray[back][swing] = R_Spr_PlayerSwingBack;
playerSpriteArray[right][swing] = R_Spr_PlayerSwingRight;

playerSpriteArray[forward][charge] = R_Spr_PlayerChargeForward;
playerSpriteArray[left][charge] = R_Spr_PlayerChargeLeft;
playerSpriteArray[back][charge] = R_Spr_PlayerChargeBack;
playerSpriteArray[right][charge] = R_Spr_PlayerChargeRight;

playerSpriteArray[forward][bigSwing] = R_Spr_PlayerBigSwingForward;
playerSpriteArray[left][bigSwing] = R_Spr_PlayerBigSwingLeft;
playerSpriteArray[back][bigSwing] = R_Spr_PlayerBigSwingBack;
playerSpriteArray[right][bigSwing] = R_Spr_PlayerBigSwingRight;