if(activated)
x += objectSpeed
if(objectHealth <= 0){
	global.futureScore += 5
	instance_destroy();}