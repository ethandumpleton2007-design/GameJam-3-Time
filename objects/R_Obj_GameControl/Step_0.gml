
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
		for (var i = 0; i < instance_number(R_Obj_DinoClass);i++ )
		{
			var _dinoToKill = instance_find(R_Obj_DinoClass,i);
			
			with(_dinoToKill)
			{
				instance_destroy();
			}
			
		}
	}
}





//wave till








