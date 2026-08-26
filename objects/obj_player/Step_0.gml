var _left = keyboard_check(ord("A"))
var _right = keyboard_check(ord("D"))

#region movimento
//setando teclas para movimento horizontal
if (_left)
{
	x -= velh;
	image_xscale = 1
}
else if (_right)
{
	x += velh
	image_xscale = -1
}

//se sair por um lado da tela reaparece no outro lado
if (x <= -5)
{
	x = 185
}
else if (x >= 185)
{
	x = -5
}

#endregion

#region musica e velocidade

//aumentando velocidade com o tempo
if(global.ponto >= 250 and global.ponto <= 450 and som == false)
{
	gravity = 0.35
	audio_stop_sound(snd_fundo_tranquilo)
	audio_play_sound(snd_fundo_tranquilo2, 1, 1)
	som = true
}
else if(global.ponto >= 452 and global.ponto <= 650 and som == true)
{
	gravity = 0.36
	audio_stop_sound(snd_fundo_tranquilo2)
	audio_play_sound(snd_fundo_tenso, 1, 1)
	som = false
}
else if(global.ponto >= 652 and global.ponto <=850 and som == false)
{
	gravity = 0.37
	audio_stop_sound(snd_fundo_tenso)
	audio_play_sound(snd_fundo_tenso2, 1, 1)
	som = true
}
else if(global.ponto >= 852 and som == true)
{
	gravity = 0.38
	audio_stop_sound(snd_fundo_tenso2)
	audio_play_sound(snd_fundo_final, 1, 1)
	som = false
}

#endregion

#region camera
if(cam_y > y)
{
	cam_y = y
}

camera_set_view_pos(view_camera[0], 0, cam_y - 160);

if(y > camera_get_view_y(view_camera[0]) +380)
{
	room_goto(rm_record)
	audio_stop_all()
}

if(global.pontomax < global.ponto)
{
	global.pontomax = global.ponto
}

#endregion