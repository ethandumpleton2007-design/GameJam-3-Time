var _dist = abs(obj_player.x - x);
if DinoState = "Follow"{
if (_dist > 100) {
    spd = 3;
    var _dir = sign(obj_player.x - x);
    
    image_xscale = abs(image_xscale) * _dir;
    
    x += _dir * min(spd, _dist - 100);
} else {
    spd = 0;
    

}
}
if DinoState = "Follow" sprite_index = spr_DinoFollow    

if (DinoState = "Distracted") and x <= DistractedX {
    speed = 0
    spd = 0
    sprite_index = spr_DinoSleep
}

if awaken = true {
    DinoState = "Follow"
    awaken = false
}

if (alarm[0] == -1) and DinoState = "Follow" {
        alarm[0] = (game_get_speed(gamespeed_fps)) * 30;
}