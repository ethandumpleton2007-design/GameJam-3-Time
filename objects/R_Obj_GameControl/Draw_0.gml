draw_set_halign(fa_left)
draw_set_color(c_white)
draw_text_transformed(x, y, "Score: " + string(global.R_Score), 5, 5, 0)

if global.R_GameOver == true
{
	draw_set_halign(fa_center)
	draw_set_color(c_red)
	draw_text_transformed(room_width/2, room_height/2, "Press R to Restart", 5, 5, 0)
	
	draw_set_halign(fa_left)
	draw_set_color(c_white)
}