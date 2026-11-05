// Health
	dinohealth = 1;
// Speed
	dinoSpeed = 0.5;


//Direction
xspdMult = 1;
yspdMult = 0;

// Enable andDisable SpeedVarriation

dinoSpeedVarrationRangeLower = -10;
dinoSpeedVarrationRangeUpper = 10;

dinoSpeedVarration = random_range(dinoSpeedVarrationRangeLower,dinoSpeedVarrationRangeUpper)/100;

	speedVarration = true;

	killMakesGoFaster = false;

if killMakesGoFaster == true
{
	dinoSpeedVarration += global.R_DinoKillCount/100;
}


if speedVarration == true
{
	dinoSpeed += dinoSpeedVarration;
}

// Score

scoreWhenKilled = 1;
