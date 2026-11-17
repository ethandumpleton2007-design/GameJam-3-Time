if DinoState = "Follow" and x > 350{
    image_xscale = 8
    sprite_index = spr_DinoDistracted
    spd = 4
    DinoState = "Distracted"
    DistractedX = x-100
    move_towards_point(DistractedX, y, spd)
}



