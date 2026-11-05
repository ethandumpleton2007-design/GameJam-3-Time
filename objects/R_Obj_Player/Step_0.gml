

// Movement

	// Left
	if (keyboard_check_pressed(ord("D")) == true)
	{
		posOffsetY = 0;
		posOffsetX = posOffsetConst;
		hitDir = 180
		hitOffsetX = hitOffsetConst;
		hitOffsetY = 0;
	}

	// Right
	if (keyboard_check_pressed(ord("A")) == true)
	{
		posOffsetY = 0;
		posOffsetX = -posOffsetConst;
		hitDir = 0
		hitOffsetX = -hitOffsetConst;
		hitOffsetY = 0;
	}

	// Down
	if (keyboard_check_pressed(ord("S")) == true)
	{
		posOffsetY = posOffsetConst;
		posOffsetX = 0;
		hitDir = 90
		hitOffsetX = 0;
		hitOffsetY = hitOffsetConst;
	}

	// Up
	if (keyboard_check_pressed(ord("W")) == true)
	{
		posOffsetY = -posOffsetConst;
		posOffsetX = 0;
		hitDir = 270
		hitOffsetX = 0;
		hitOffsetY = -hitOffsetConst;
	}

	// Postions
	x = eggPosx + posOffsetX;
	y = eggPosy + posOffsetY;
	
	// Hit
	
	
	hitCooldown -= 1;
	
	
	
	if (mouse_check_button_pressed(mb_left) == true)
	{
		if (hitCooldown <= 0)
		{
			var _hit = instance_create_layer(x + hitOffsetX, y + hitOffsetY, "Instances", hitObject);
			with (_hit)
			{
			    image_angle = other.hitDir;
			}
			
			hitCooldown = hitCooldownConst
			
		}
	}









