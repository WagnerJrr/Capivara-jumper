draw_self()
if(pontos < global.pontomax)
{
	pontos += global.pontomax / (game_get_speed(gamespeed_fps) * 2);
	
	//var _pitch = random_range(1.9, 2);
	if (!audio_is_playing(snd_bip)) audio_play_sound(snd_bip, 0, 0) //, , , _pitch);
	
}

draw_set_halign(1);
draw_set_valign(1);
draw_set_font(fnt_pixel)
draw_set_colour(c_black);
draw_text_ext(x-2, y+8, "RECORD", 15, sprite_width);
draw_text(x-2, y-9, string_format(pontos, 0, 0));