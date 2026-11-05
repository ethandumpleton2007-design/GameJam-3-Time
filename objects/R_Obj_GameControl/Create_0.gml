


spawnCoolDown = 50;

spawnCoolDownVarrationDownRange = -20;
spawnCoolDownVarrationUpRange = 20;

spawnCoolDownCount = 50;

dinoSpawn = R_Obj_DinoClass;



// Spawn Pos

	xLeft = 112;
	xMiddle = 240;
	xRight = 368;


	yTop = 0;
	yMiddle = 128;
	yBottom = 256;



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
