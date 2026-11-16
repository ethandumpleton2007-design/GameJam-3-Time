// Inherit the parent event
event_inherited();

ammored = true;

heavyDinoSlowMulti = 0.50;

dinoSpeed *= heavyDinoSlowMulti;

// Sprites

dinoSpriteArray[forward] = R_Spr_AmoredDinoGoingDown;
dinoSpriteArray[left] = R_Spr_AmoredDinoGoingRight;
dinoSpriteArray[back] = R_Spr_AmoredDinoGoingUp;
dinoSpriteArray[right] = R_Spr_AmoredDinoGoingLeft;