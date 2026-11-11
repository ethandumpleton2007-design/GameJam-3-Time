spawnCoolDownCount -= 1;

if (spawnCoolDownCount <= 0)
{
	
	// Roll for Spawn Pos
	var _rollSpawn = irandom_range(0,3);
	
	// Roll for dino
	
	var _rollDino = irandom_range(0,100);
	
	var _dinoSpawn = dinoSpawn
	
	if _rollDino > normalDinoChance
	{
		_dinoSpawn = heavyDinoSpawn
	}
	
	
	// Create Dino
	var _dino = instance_create_layer(dinoSpawnPosArray[_rollSpawn][0],dinoSpawnPosArray[_rollSpawn][1],"Instances",_dinoSpawn);
	
	// Make Dino Go Correct Direction
	with (_dino)
	{
		xspdMult = other.dinoSpeedMult[_rollSpawn][0];
		yspdMult = other.dinoSpeedMult[_rollSpawn][1];
		
	}
	
	// Cooldown
	spawnCoolDownCount = spawnCoolDown + irandom_range(spawnCoolDownVarrationDownRange,spawnCoolDownVarrationUpRange);
	
}