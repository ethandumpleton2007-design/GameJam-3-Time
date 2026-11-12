// Inherit the parent event
event_inherited();

ammored = true;

heavyDinoSlowMulti = 0.50;

dinoSpeed *= heavyDinoSlowMulti;

// Sprites

dinoSpriteArray[forward] = R_Spr_DinoHeavyFrontTemp;
dinoSpriteArray[left] = R_Spr_DinoHeavyLeftTemp;
dinoSpriteArray[back] = R_Spr_DinoHeavyBackTemp;
dinoSpriteArray[right] = R_Spr_DinoHeavyRightTemp;