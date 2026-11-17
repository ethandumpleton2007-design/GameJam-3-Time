if show = true {
    visible = true;
}
else visible = false
    
if instance_exists(obj_player)
    if obj_player.PlayerState = "Sit"
        sprite_index = spr_StandText
    else 
        sprite_index = spr_SitText