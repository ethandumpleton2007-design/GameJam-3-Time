	image_index = eggHealth
	
	// Kill if dead
	if (eggHealth <= 0)
	{
		global.R_GameOver = true;
		instance_destroy();
		
	}