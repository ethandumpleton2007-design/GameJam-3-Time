


spawnCoolDown = 50;

spawnCoolDownVarrationDownRange = -20;
spawnCoolDownVarrationUpRange = 20;

spawnCoolDownCount = 50;

dinoSpawn = R_Obj_DinoClass;
heavyDinoSpawn = R_Obj_ArmoredDino;



// Spawn Pos

	xLeft = 528;
	xMiddle = 960;
	xRight = 1392;


	yTop = 136;
	yMiddle = 528;
	yBottom = 944;



	// Top
	
		//Spawn Pos
		dinoSpawnPosArray[0,0] = xMiddle;
		dinoSpawnPosArray[0,1] = yTop;
	
	
		// Direction
		dinoSpeedMult[0,0] = 0;
		dinoSpeedMult[0,1] = 1;
	
	// Bottom
	
		//Spawm Pos
		dinoSpawnPosArray[1,0] = xMiddle;
		dinoSpawnPosArray[1,1] = yBottom;
	
		// Direction
		dinoSpeedMult[1,0] = 0;
		dinoSpeedMult[1,1] = -1;
	
	
	// Left
	
		// Spawm Pos
		dinoSpawnPosArray[2,0] = xLeft;
		dinoSpawnPosArray[2,1] = yMiddle;
		
		// Direction
		dinoSpeedMult[2,0] = 1;
		dinoSpeedMult[2,1] = 0;
	
	
	
	// Right
	 
		// Spawm Pos
		dinoSpawnPosArray[3,0] = xRight;
		dinoSpawnPosArray[3,1] = yMiddle;
	
	
		// Direction
		dinoSpeedMult[3,0] = -1;
		dinoSpeedMult[3,1] = 0;
		
// DinoChance

normalDinoChance = 80;
heavyDinoChance = 100;
		

		
		
		
		
