
// Movement

	// Left
	if (keyboard_check_pressed(ord("D")) == true)
	{
		posOffsetY = 0;
		posOffsetX = 32;
	}

	// Right
	if (keyboard_check_pressed(ord("A")) == true)
	{
		posOffsetY = 0;
		posOffsetX = -32;
	}

	// Down
	if (keyboard_check_pressed(ord("S")) == true)
	{
		posOffsetY = 32;
		posOffsetX = 0;
	}

	// Up
	if (keyboard_check_pressed(ord("W")) == true)
	{
		posOffsetY = -32;
		posOffsetX = 0;
	}

	// Postions
	x = eggPosx + posOffsetX;
	y = eggPosy + posOffsetY;









