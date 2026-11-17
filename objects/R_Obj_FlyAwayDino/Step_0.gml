
// Make Sure Sptite is Correct
sprite_index = spriteUsed;

// Move
x += xDir * dieSpeed
y += yDir * dieSpeed


// if bowling true kill EVERYTHING (in its row)
if (bowling == true)
{
	if place_meeting(x, y, R_Obj_DinoClass)
	{
		var _dino = instance_place(x, y, R_Obj_DinoClass)
		
		with(_dino)
		{
			dinohealth -= other.bowlingDamge;
		}
		
	}
}




R_DestoryIfOffScreen()