


spawnCoolDown = 50;

spawnCoolDownVarrationDownRange = -20;
spawnCoolDownVarrationUpRange = 20;

spawnCoolDownCount = 50;

// Sprite Help Array

uselessArray[0] = 0
uselessArray[1] = 2
uselessArray[2] = 1
uselessArray[3] = 3

// Spawn Pos

	posDiffrence = 492;
	
	xMiddle = 960;
	xLeft = xMiddle - posDiffrence;
	xRight = xMiddle + posDiffrence;

	yMiddle = 528;
	yTop = yMiddle - posDiffrence;
	yBottom = yMiddle+ posDiffrence;



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
		
// Dinos

dinoSpawn = R_Obj_DinoClass;
heavyDinoSpawn = R_Obj_ArmoredDino;
speedyDinoSpawn = R_Obj_SpeedyDino
		
		
// DinoChance

wave = 0;


normalDinoChance = 101;
heavyDinoChance = 0;
speedyDinoChance = 0

// Array Info
	//First Array Part, Waves
	//Second Array Part, Dinos (Ordered as seen above)
	
// Wave 0
	dinoWaveArray[0][0] = 101;
	dinoWaveArray[0][1] = -1;
	dinoWaveArray[0][2] = -1;

//Wave 1
	dinoWaveArray[1][0] = 80;
	dinoWaveArray[1][1] = 100;
	dinoWaveArray[1][2] = -1;
	
//Wave 2
	dinoWaveArray[2][0] = 80;
	dinoWaveArray[2][1] = -1;
	dinoWaveArray[2][2] = 100;
	
//Wave 3
	dinoWaveArray[3][0] = 75;
	dinoWaveArray[3][1] = 90;
	dinoWaveArray[3][2] = 100;
	
//Wave 4
	dinoWaveArray[4][0] = 40;
	dinoWaveArray[4][1] = 70;
	dinoWaveArray[4][2] = 100;
		

// Dino Number till next wave



dinoNumberTillNextWave[0] = 30;
dinoNumberTillNextWave[1] = 60;
dinoNumberTillNextWave[2] = 90;
dinoNumberTillNextWave[3] = 120;
		

		
