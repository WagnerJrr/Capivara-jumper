draw_self();
draw_set_font(fnt_pixel);
draw_set_colour(c_black) //#E4D00A

if(global.acai < 350)
{
	draw_set_colour(c_red)
}

draw_sprite_ext(spr_acai, 2, 100, 90, 1.5, 1.5, 0, c_white, 1)
draw_text(140, 78, string(status))