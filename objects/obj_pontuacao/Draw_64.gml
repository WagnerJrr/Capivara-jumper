draw_self();
draw_set_font(fnt_pixel);
draw_set_colour(c_black) //#E4D00A
draw_set_halign(1);
draw_set_valign(1);

draw_text(x + 25, y + 15, string(global.ponto))
draw_sprite_ext(spr_acai, 2, 10, 57, 2, 2, 0, c_white, 1)
draw_text(45, 44, string(global.acai))


