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
		if global.R_GameOver != true
		{
			global.R_Score += scoreWhenKilled;
		}
		global.R_DinoKillCount += 1;
		
		// SOUND: random dino death (louder)
		audio_play_sound(choose(R_snd_dinodeath1, R_snd_dinodeath2, R_snd_dinodeath3,
			R_snd_dinodeath4, R_snd_dinodeath5, R_snd_dinodeath6,
			R_snd_dinodeath7, R_snd_dinodeath8, R_snd_dinodeath9), 15, false, 4, 0, random_range(0.9, 1.1));
		
		//	Check if died from heavy hit 
		
		if (place_meeting(x,y,R_Obj_OtherHitObject))
		{
			diedFromHeavyHit = true;
		}
		
		//Create Death animation
		
		var _death = instance_create_layer(x,y,"Instances", R_Obj_FlyAwayDino);
		
		with(_death)
		{
			if (other.bowling == true and other.diedFromHeavyHit == true)
			{
				xDir = other.xspdMult * -1;
				yDir = other.yspdMult * -1;
				
				bowling = true;
				
				image_blend = c_purple;
				
				dieSpeed = other.bowlSpeed  ;
			}
			else
			{
			
				xDir = other.xspdMult * -1;
				yDir = other.yspdMult * -1;
			
				if xDir == 0
				{
					xDir = choose(-1,1);
				}
			
				if yDir == 0
				{
					yDir = choose(-1,1);
				}
				
				dieSpeed = other.dinoSpeed * 1.5;
			
			}
			
			
			
			spriteUsed = other.deathSprite;
			
			
			
		}
		
		
		instance_destroy();
		
	}
	
	
	// Just to not cause a memory leak
	R_DestoryIfOffScreen()