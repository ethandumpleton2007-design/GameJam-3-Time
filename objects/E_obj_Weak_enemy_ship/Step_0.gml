if(activated){
x += objectSpeed;

//SOUND: random explosion whenever this enemy loses health
if (variable_instance_exists(id, "lastObjectHealth") && objectHealth < lastObjectHealth){
	audio_play_sound(choose(explosionCrunch_000, explosionCrunch_001, explosionCrunch_002, explosionCrunch_003, explosionCrunch_004), 15, false, 0.7, 0, random_range(0.9, 1.1));}
lastObjectHealth = objectHealth;

if(objectHealth <= 0){
	global.futureScore += 5
	instance_destroy();}
if(shoot = false){
	shoot = true;
	instance_create_depth(x + 12, y + 19.5, depth - 1, E_obj_enemy_laser);
	audio_play_sound(laserSmall_000, 8, false, 0.5, 0, random_range(0.95, 1.05));
	alarm[1] = shootCooldown;}}