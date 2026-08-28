draw_self()
draw_set_halign(1);
draw_set_valign(2);
draw_set_font(fnt_pixel)
draw_set_colour(c_black);
draw_text(x-2, y+10, string_format(global.ponto, 0, 0));
draw_text(x, y+28, "PONTOS")