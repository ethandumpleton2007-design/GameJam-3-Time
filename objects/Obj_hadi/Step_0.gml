if (alarm[1] == -1) and (alarm[0] == -1) and State = "Safe" {
        alarm[0] = random_range(200,300);
}
if (alarm[1] == -1) and (alarm[0] == -1) and State = "Search" {
        alarm[1] = 120;
}

if globalresetRoom = true {
    room_restart()
}

if State == "Search" and obj_player.PlayerState = "Moving" and obj_player.Safe != true {
    global.Death = "Caught"
    room_goto(HadiBlast)
}
if global.gameOver = true {
    room_goto(LoseHadiMinigame)
}

if global.hasAnomoly = true and global.AnomolyID = 0 {
        if State = "Safe" sprite_index = spr_HadiBackEvil
        if State = "Search" sprite_index = spr_HadiEvil
        } 
       
if global.hasAnomoly = true and global.AnomolyID = 1 {
        if State = "Safe" sprite_index = spr_HadiBackCat
        if State = "Search" sprite_index = spr_HadiCat
        }
 
if global.hasAnomoly = true and global.AnomolyID > 1 { 
        if State = "Safe" sprite_index = spr_HadiBack 
        if State = "Search" sprite_index = spr_Hadi }


if global.hasAnomoly = false and State = "Safe" {
    sprite_index = spr_HadiBack}
if global.hasAnomoly = false and State = "Search" {
    sprite_index = spr_Hadi}
       