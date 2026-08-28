//se tiver dinheiro compra
if(global.acai > 350 and global.taman = false)
{
	image_alpha = 1;
	lock = false
	status = "--"
	global.taman = true
	global.acai -= 350
	audio_play_sound(snd_pickup, 0, 0)
}