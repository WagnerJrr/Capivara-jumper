audio_play_sound(snd_pickup, 0, 0)
instance_destroy(other)
global.acai += 1;

if(obj_acai.image_index == 0)
{
	global.ponto += 3
}
else if (obj_acai.image_index == 1)
{
	global.ponto += 6
}
else if(obj_acai.image_index == 2)
{
	global.ponto += 9
}