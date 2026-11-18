if(!global.camStopped){
x += global.camMoveSpeed;}
if(global.playerHealth <= 0 && !soundPlayed){
soundPlayed = true;
audio_play_sound(explosionCrunch_000, 15, false);}