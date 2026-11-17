var camWidth = camera_get_view_width(cam);
var camHeight = camera_get_view_height(cam);

if(!global.camStopped){
x += global.camMoveSpeed;}

if(x <= 9600){
camX = E_obj_Game_Manager.x - camWidth / 2
camY = E_obj_Game_Manager.y - camHeight / 2}
else{global.camStopped = true};
camera_set_view_pos(cam, camX, camY);