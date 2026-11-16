// Health
	dinohealth = 1;
// Speed

	easyDinoSpeed = 2;
	middleDinoSpeed = 3;
	hardDinoSpeed = 4;

	dinoSpeed = middleDinoSpeed;
	
	if global.R_isHard == true
	{
		dinoSpeed = hardDinoSpeed;
	}


//Direction
xspdMult = 1;
yspdMult = 0;

// Enable andDisable SpeedVarriation

dinoSpeedVarrationRangeLower = -10;
dinoSpeedVarrationRangeUpper = 10;

dinoSpeedVarration = random_range(dinoSpeedVarrationRangeLower,dinoSpeedVarrationRangeUpper)/100;

	speedVarration = false;

	killMakesGoFaster = true;
	
	clampSpeed = true;

if killMakesGoFaster == true
{
	dinoSpeed += global.R_DinoKillCount/100;
}


if speedVarration == true
{
	dinoSpeed += dinoSpeedVarration;
}

if clampSpeed == true
{
	dinoSpeed = clamp(dinoSpeed,0,6);
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

dinoSpriteArray[forward] = R_Spr_DinoGoingDown;
dinoSpriteArray[left] = R_Spr_DinoGoingRight;
dinoSpriteArray[back] = R_Spr_DinoGoingUp;
dinoSpriteArray[right] = R_Spr_DinoGoingLeft;

deathSprite = R_Spr_DinoDeath

sprite_index = dinoSpriteArray[faceAni]
