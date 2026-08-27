som = true
global.ponto = 0;

audio_stop_all()
if(global.ponto <= 0) audio_play_sound(snd_fundo_tranquilo2, 1, 1);

//velocidade h e v e gravidade
velh = 1.5
vspeed = -global.velinicio
gravity = 0.3

//camera
cam_y = y;
cam_x = 0;