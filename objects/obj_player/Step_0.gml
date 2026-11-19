if PlayerState = "Moving" {
move_x = keyboard_check(ord("D")) - keyboard_check(ord("A"));
move_x *= move_speed;
if (place_meeting(x, y+2, obj_ground))
{
	move_y = 0;
}
else if (move_y < 10) move_y += 1;
    
move_and_collide(move_x, move_y, obj_ground);


if (keyboard_check(ord("D"))) {
    sprite_index = spr_PlayerWalkRight;
    PlayerDirection = "right";
}
    
if (keyboard_check(ord("A"))) {
    sprite_index = spr_PlayerWalkLeft;
    PlayerDirection = "left";
}    
    
if (!keyboard_check(ord("D")) and !keyboard_check(ord("A"))) {
    if PlayerDirection = "right" sprite_index = spr_PlayerIdleRight;
    else sprite_index = spr_PlayerIdleLeft;    
}
    
if obj_DinoHadi.DinoState = "Distracted" and place_meeting(x,y, obj_DinoHadi) = true and PlayerState = "Moving" {
    obj_WakeUpText.show = true
if keyboard_check_pressed(ord("E"))
    obj_DinoHadi.awaken = true
}
else obj_WakeUpText.show = false
}    

if (place_meeting(x,y, obj_hidingSpot) = true and PlayerState = "Moving"){
    obj_Sit.show = true;
    
    if keyboard_check_pressed(vk_space)
        PlayerState = "Sit";
}
if place_meeting(x,y, obj_hidingSpot) = false 
    obj_Sit.show = false
 
if PlayerState = "Sit" and keyboard_check_pressed(vk_enter)
{
        y = 910
        sprite_index = spr_PlayerIdleRight
        PlayerState = "Moving"
        
}  


    

if place_meeting(x,y, obj_Door) = true {
    obj_DoorText.show = true
    Safe = true
    if keyboard_check(vk_space) and obj_DinoHadi.DinoState = "Follow" {
        global.AnomolyGuess = true
        global.TimelineChange = true
    }
    if keyboard_check(vk_enter) {
        global.AnomolyGuess = false
        global.TimelineChange = true
    }
}
else {obj_DoorText.show = false 
      Safe = false}



 
    if global.gameOver = true {
    PlayerState = "Failed"
}

