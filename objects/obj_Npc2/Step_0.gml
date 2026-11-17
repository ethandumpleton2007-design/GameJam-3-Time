if global.hasAnomoly = true {
    if global.AnomolyID = 3 {
        sprite_index = spr_SittingPlayer
        visible = true
    }
    
    if global.AnomolyID = 6 {
        visible = false
    }
    
    if global.AnomolyID = 2 {
        sprite_index = spr_NpcChair2Diff
        visible = true
    }
    if global.AnomolyID != 2 and global.AnomolyID != 3 and global.AnomolyID != 6 {
        sprite_index = spr_NpcChair2
        visible = true 
    }
}
else {
    sprite_index = spr_NpcChair2
    visible = true
}