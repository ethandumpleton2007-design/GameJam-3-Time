if(activated)
x += objectSpeed
if(objectHealth <= 0){
	global.futureScore += 50
	instance_destroy();}