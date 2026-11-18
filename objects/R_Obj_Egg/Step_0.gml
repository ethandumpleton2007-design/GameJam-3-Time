image_index = eggHealth
	
	// SOUND: crack every time the egg loses health
	if (variable_instance_exists(id, "lastEggHealth") && eggHealth < lastEggHealth)
	{
		audio_play_sound(Egg, 20, false, 1, 0.3);
	}
	lastEggHealth = eggHealth;
	
	// Kill if dead
	if (eggHealth <= 0)
	{
		global.R_GameOver = true;
		
		// SOUND: lose voice, 1 second later so it doesn't talk over the crack
		call_later(1, time_source_units_seconds, method(undefined, function()
		{
			audio_play_sound(letstryagain, 30, false, 4);
		}));
		
		instance_destroy();
		
	}