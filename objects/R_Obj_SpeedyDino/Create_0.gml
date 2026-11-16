// Inherit the parent event
event_inherited();

speedySpeedMult = 1.5;

dinoSpeed *= speedySpeedMult;

// Sprites

dinoSpriteArray[forward] = R_Spr_SpeedyDinoGoingDown;
dinoSpriteArray[left] = R_Spr_SpeedyDinoGoingRight;
dinoSpriteArray[back] = R_Spr_SpeedyDinoGoingUp;
dinoSpriteArray[right] = R_Spr_SpeedyDinoGoingLeft;