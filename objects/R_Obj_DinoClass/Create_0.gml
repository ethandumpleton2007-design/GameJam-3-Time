// Health
	dinohealth = 1;
// Speed
	dinoSpeed = 4;


//Direction
xspdMult = 1;
yspdMult = 0;

// Enable andDisable SpeedVarriation

dinoSpeedVarrationRangeLower = -10;
dinoSpeedVarrationRangeUpper = 10;

dinoSpeedVarration = random_range(dinoSpeedVarrationRangeLower,dinoSpeedVarrationRangeUpper)/100;

	speedVarration = false;

	killMakesGoFaster = true;

if killMakesGoFaster == true
{
	dinoSpeed += global.R_DinoKillCount/100;
}


if speedVarration == true
{
	dinoSpeed += dinoSpeedVarration;
}

// Score

scoreWhenKilled = 1;

// Ammor
ammored = false;

// Sprite Control

faceAni = 1
	
forward = 0;
left = 1;
back = 2;
right = 3;

dinoSpriteArray[forward] = R_Spr_DinoFrontTemp;
dinoSpriteArray[left] = R_Spr_DinoLeftTemp;
dinoSpriteArray[back] = R_Spr_DinoBackTemp;
dinoSpriteArray[right] = R_Spr_DinoRightTemp;

sprite_index = dinoSpriteArray[faceAni]
