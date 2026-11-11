

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
	
	switch(curretState)
	{
		
		case "Normal":
		
		
			// Normal Hit
			if (mouse_check_button_pressed(mb_left) == true)
			{
				if (hitCooldown <= 0)
				{
					var _hit = instance_create_layer(x + hitOffsetX, y + hitOffsetY, "Instances", hitObject);
					with (_hit)
					{
					    image_angle = other.hitDir;
					}
			
					with _hit
					{
						if place_meeting(x,y,R_Obj_DinoClass)
						{
							other.hitCooldown = 0;
						}
						else
						{
							other.hitCooldown = other.OtherhitCooldownConst;
						}
					}
			
				}
			}
			
			//Switch to Charge hit
			// Charge State
			if (mouse_check_button_pressed(mb_right) == true)
			{
				if (hitCooldown <= 0)
				{
					curretState = "Charge";
				}
			}
			
		
		break;
		
		case "Charge":
		
			// Charge State
				OtherhitDely -=1;

				if OtherhitDely <= 0
				{
					var _hit = instance_create_layer(x + hitOffsetX, y + hitOffsetY, "Instances", otherHitObject);
					with (_hit)
					{
						image_angle = other.hitDir;
					}
			
					with _hit
					{
						if place_meeting(x,y,R_Obj_DinoClass)
						{
							other.hitCooldown = 0;
						}
						else
						{
							other.hitCooldown = other.OtherhitCooldownConst;
						}
					}
					OtherhitDely = OtherhitDelyConst;
					
					curretState = "Normal";
					
				}
		
		break;
	}









