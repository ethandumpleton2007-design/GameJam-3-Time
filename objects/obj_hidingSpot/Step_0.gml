
var _player = instance_find(obj_player, 0);
    
    var _nearest_spot = instance_nearest(_player.x, _player.y, obj_hidingSpot);
        
if (obj_player.PlayerState = "Sit") 
{
    obj_player.x = _nearest_spot.x
    obj_player.y = _nearest_spot.y
    obj_player.sprite_index = spr_SittingPlayer

} 
    

