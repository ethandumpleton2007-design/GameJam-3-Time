if isSpawning == true
{
	spawnCoolDownCount -= 1;

	if (spawnCoolDownCount <= 0)
	{
	
		// Roll for Spawn Pos
		var _rollSpawn = irandom_range(0,3);
	
		// Roll for dino
	
		var _rollDino = irandom_range(0,100);
	
		var _dinoSpawn = dinoSpawn
	
		if (_rollDino <= normalDinoChance)
		{
			_dinoSpawn = dinoSpawn
		}
		else if (_rollDino <= heavyDinoChance)
		{
			_dinoSpawn = heavyDinoSpawn;
		}
		else if (_rollDino <= speedyDinoChance)
		{
			_dinoSpawn = speedyDinoSpawn;
		}
	
	
		// Create Dino
		var _dino = instance_create_layer(dinoSpawnPosArray[_rollSpawn][0],dinoSpawnPosArray[_rollSpawn][1],"Instances",_dinoSpawn);
	
		// Make Dino Go Correct Direction
		with (_dino)
		{
			xspdMult = other.dinoSpeedMult[_rollSpawn][0];
			yspdMult = other.dinoSpeedMult[_rollSpawn][1];
		
			faceAni = other.uselessArray[_rollSpawn];
		
		}
	
		// Cooldown
		spawnCoolDownCount = spawnCoolDown + irandom_range(spawnCoolDownVarrationDownRange,spawnCoolDownVarrationUpRange) - clamp(floor(global.R_Score/10),0,10);
	
		if global.R_GameOver == true
		{
			spawnCoolDownCount = 0
		}
	
	}

	// State machine for dino spawn varribles
	switch (wave)
	{
		case 0:
	
			normalDinoChance = dinoWaveArray[0][0];
			heavyDinoChance = dinoWaveArray[0][1];
			speedyDinoChance = dinoWaveArray[0][2];
	
			if global.R_Score >= dinoNumberTillNextWave[0]
			{
				wave = 1;
			}
	
		break;
	
		case 1:
	
			normalDinoChance = dinoWaveArray[1][0]
			heavyDinoChance = dinoWaveArray[1][1]
			speedyDinoChance = dinoWaveArray[1][2];
		
			if global.R_Score >= dinoNumberTillNextWave[1]
			{
				wave = 2;
			}
	
		break;
	
		case 2:
	
			normalDinoChance = dinoWaveArray[2][0]
			heavyDinoChance = dinoWaveArray[2][1]
			speedyDinoChance = dinoWaveArray[2][2];
		
			if global.R_Score >= dinoNumberTillNextWave[2]
			{
				wave = 3;
			}

	
		break;
	
	
		case 3:
	
			normalDinoChance = dinoWaveArray[3][0]
			heavyDinoChance = dinoWaveArray[3][1]
			speedyDinoChance = dinoWaveArray[3][2];
	
			if global.R_Score >= dinoNumberTillNextWave[2]
			{
				wave = 4;
			}
	
	
		break;
	
		case 4:
	
			normalDinoChance = dinoWaveArray[4][0]
			heavyDinoChance = dinoWaveArray[4][1]
			speedyDinoChance = dinoWaveArray[4][2];
	
		break;
	
	
	
	}
}
// Story mode end

if (global.R_isEndless == false)
{
	if (global.R_Score >= storyEndingScore)
	{
		isSpawning = false;
		R_TheFuctionThatKilledTheDinos();
		
		// SOUND: win, 1 second later (only the first time)
		if (global.R_DinoGameWon == false)
		{
			call_later(1, time_source_units_seconds, method(undefined, function()
			{
				audio_play_sound(welldone, 30, false);
			}));
		}
		
		global.R_DinoGameWon = true;
	}
}
// MUSIC: loop until win or lose
var _music = Juhani_Junkala__Retro_Game_Music_Pack__Level_2;

if (global.R_GameOver == true || global.R_DinoGameWon == true)
{
	audio_stop_sound(_music);
}
else if (!audio_is_playing(_music))
{
	audio_play_sound(_music, 1, true, 0.3);
}





//wave till