if(activated)
x += objectSpeed;


//SOUND: shooting star, first 2 seconds only (plays once, when the comet activates)
if (activated && !variable_instance_exists(id, "starSoundPlayed")){
	starSoundPlayed = true;
	var _snd = audio_play_sound(c1811_f1, 15, false, 0.8);
	call_later(1.8, time_source_units_seconds, method({snd: _snd}, function(){
		audio_sound_gain(snd, 0, 200);}));
	call_later(2, time_source_units_seconds, method({snd: _snd}, function(){
		audio_stop_sound(snd);}));}

if(objectHealth <= 0){
	global.futureScore += 3
	instance_destroy();}