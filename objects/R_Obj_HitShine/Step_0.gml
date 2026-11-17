
// DESTROY self after a bit
	lifeSpan -= 1 ;

	if (lifeSpan <= 0)
	{
		instance_destroy(); 
	}
