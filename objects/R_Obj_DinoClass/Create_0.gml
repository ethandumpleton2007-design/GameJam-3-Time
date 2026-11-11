// Health
	dinohealth = 1;
// Speed
	dinoSpeed = 2;


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

ammored = false;
