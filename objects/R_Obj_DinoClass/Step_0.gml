	// Dino Sprite
	
	sprite_index = dinoSpriteArray[faceAni]
	
	
	// Dino Movement
	x += (dinoSpeed * xspdMult);
	y += (dinoSpeed * yspdMult);


	// If HitClub Die
	if (place_meeting(x,y,R_Obj_HitEffectClass))
	{
		var _inst = instance_place(x, y, R_Obj_HitEffectClass);
		
		// Check for heavy hit if armored
		if ammored == true
		{
			if _inst.heavy == false
			{
				return;	
			}
		}
		
		
		dinohealth -= _inst.hitDamage;
	
	}
	
	// Hurt Egg if Touch
	
	if (place_meeting(x,y,R_Obj_Egg))
	{
		var _egg = instance_place(x, y, R_Obj_Egg);
		
		_egg.eggHealth -= 1;
		
		instance_destroy();
	
	}
	
	
	
	// Kill if dead
	if (dinohealth <= 0)
	{
		global.R_Score += scoreWhenKilled;
		global.R_DinoKillCount += 1;
		
		instance_destroy();
		
	}
	
	
	// Just to not cause a memory leak
	if x > room_width or x < 0
	{
		instance_destroy()	
	}
	if y > room_height or y < 0
	{
		instance_destroy()	
	}
	
	
	