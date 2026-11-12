draw_self()
draw_set_font(fnt_scoreText);
draw_set_colour(make_colour_rgb(255, 255, 255));
if(global.currentAmmo > 0){
draw_text(x + 115, y -8, string(global.currentAmmo) + "/" + string(global.maxAmmo));}
else{draw_text(x + 115, y -8, "Reloading");}