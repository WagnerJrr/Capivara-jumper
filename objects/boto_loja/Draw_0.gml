draw_self();
draw_set_font(fnt_pixel);
draw_set_colour(c_black) //#E4D00A

if(global.acai < 100)
{
	draw_set_colour(c_red)
}

draw_sprite_ext(spr_acai, 2, 25, 90, 1.5, 1.5, 0, c_white, 1)
draw_text(60, 78, string(status))