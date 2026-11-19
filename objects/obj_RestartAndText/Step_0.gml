if (keyboard_check(vk_space) and room = LoseHadiMinigame and ready = true){
    globalresetRoom = true
    global.streak = 0
    room_goto(HadiMinigame);
}

if global.Death = "Caught" sprite_index = CaughtText
    
if global.Death = "Timeline" sprite_index = spr_wrongTimeline 
    
global.hasAnomoly = false
    