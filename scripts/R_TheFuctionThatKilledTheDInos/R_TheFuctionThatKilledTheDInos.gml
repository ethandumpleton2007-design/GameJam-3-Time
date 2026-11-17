function R_TheFuctionThatKilledTheDinos(){
	for (var i = 0; i < instance_number(R_Obj_DinoClass);i++ )
	{
		var _dinoToKill = instance_find(R_Obj_DinoClass,i);
			
		with(_dinoToKill)
		{
				instance_destroy();
		}
			
	}
}