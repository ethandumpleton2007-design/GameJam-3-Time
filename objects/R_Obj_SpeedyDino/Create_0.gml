// Inherit the parent event
event_inherited();

speedySpeedMult = 1.5;

dinoSpeed *= speedySpeedMult;

// Sprites

dinoSpriteArray[forward] = R_Spr_DinoSpeedyFrontTemp;
dinoSpriteArray[left] = R_Spr_DinoSpeedyLeftTemp;
dinoSpriteArray[back] = R_Spr_DinoSpeedyBackTemp;
dinoSpriteArray[right] = R_Spr_DinoSpeedyRightTemp;