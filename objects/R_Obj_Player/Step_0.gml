

// Movement

	// Right
	if (keyboard_check_pressed(ord("D")) == true)
	{
		posOffsetY = 0;
		posOffsetX = posOffsetConst;
		hitDir = 180
		hitOffsetX = hitOffsetConst;
		hitOffsetY = 0;
		faceAni = right;
	}

	// Left
	if (keyboard_check_pressed(ord("A")) == true)
	{
		posOffsetY = 0;
		posOffsetX = -posOffsetConst;
		hitDir = 0
		hitOffsetX = -hitOffsetConst;
		hitOffsetY = 0;
		faceAni = left;
	}

	// Down
	if (keyboard_check_pressed(ord("S")) == true)
	{
		posOffsetY = posOffsetConst;
		posOffsetX = 0;
		hitDir = 90
		hitOffsetX = 0;
		hitOffsetY = hitOffsetConst;
		faceAni = forward
	}

	// Up
	if (keyboard_check_pressed(ord("W")) == true)
	{
		posOffsetY = -posOffsetConst;
		posOffsetX = 0;
		hitDir = 270
		hitOffsetX = 0;
		hitOffsetY = -hitOffsetConst;
		faceAni = back
	}

	// Postions
	x = eggPosx + posOffsetX;
	y = eggPosy + posOffsetY;
	
	// Hit
	
	
	hitCooldown -= 1;
	
	switch(curretState)
	{
		
		case "Normal":
		
			image_blend = c_white;
		
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
							
							// If dino heavy doesn't make cool down zero
							
							var _dinoCheck = instance_place(x,y,R_Obj_DinoClass);
							
							if _dinoCheck.ammored == true
							{
								other.hitCooldown = other.OtherhitCooldownConst;
							}
							else
							{
								other.hitCooldown = 0;
							
								// Create Shine to Incate They did it right
							
								instance_create_layer(x , y , "Instances", R_Obj_HitShine);
							}
						}
						else
						{
							other.hitCooldown = other.hitCooldownConst;
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
				image_blend = c_dkgray
			
				OtherhitDely -=1;

				if OtherhitDely <= 0
				{
					image_blend = c_white;
					
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
							
							// Create Shine to Incate They did it right
							
							instance_create_layer(x , y , "Instances", R_Obj_HitShine);
							
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
		
		case "Fuck You":
			image_blend = c_red;	
		
		break;
		
		
	}


sprite_index = playerSpriteArray[faceAni][actionAni];


if (global.R_GameOver == true)
{
	curretState = "Fuck You";
}



