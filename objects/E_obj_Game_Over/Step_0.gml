if(global.playerHealth <= 0 && !gameOverSoundPlayed){
	gameOverSoundPlayed = true;
	audio_play_sound(explosionCrunch_000, 15, false);}
if(!global.camStopped){
x += global.camMoveSpeed;}