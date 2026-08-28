sprite_index = global.player

var _left = keyboard_check(ord("A"))
var _right = keyboard_check(ord("D"))
var _sair = keyboard_check_pressed(vk_escape)

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

if(_sair) room_goto(rm_menu)

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

#region vel e muisca

//aumentando velocidade com o tempo
if(global.ponto >= 250 and global.ponto <= 650 and som == true)
{
	gravity = 0.36
	global.velplayer = 9.2
	audio_stop_sound(snd_fundo_tranquilo2)
	audio_play_sound(snd_fundo_tenso, 1, 1)
	som = false
}
else if(global.ponto >= 652 and global.ponto <=850 and som == false)
{
	gravity = 0.37
	global.velplayer = 9.1
	audio_stop_sound(snd_fundo_tenso)
	audio_play_sound(snd_fundo_tenso2, 1, 1)
	som = true
}
else if(global.ponto >= 852 and som == true)
{
	gravity = 0.38
	global.velplayer = 9.05
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
	room_goto(rm_pont_final)
	global.acai = global.acai + global.acai_partida
	audio_stop_all()
}

//att record
if(global.pontomax < global.ponto)
{
	global.pontomax = global.ponto
}

#endregion