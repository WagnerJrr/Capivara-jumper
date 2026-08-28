#region variaveis globais

//var de controle de velocidade
global.velinicio = 6;
global.velplayer = 9;

//pontos
global.ponto = 0;
global.pontomax = 0;
global.acai = 0;
global.acai_partida = 0;

//player
global.boto = false;
global.capi = false;
global.taman = false;
global.chicken = true;
global.player = spr_capi


#endregion

function colisao_pulo()
{
	//se o vspeed for maior que zero e se colidiu com a plataforma ele pula
	if (vspeed > 0)
	{
		vspeed = -global.velplayer;
		instance_create_layer(x, y, layer, obj_vfx_player);
		
		//aumenta o ponto a cada pulo
		global.ponto += 1
		
		//quando pula toca som
		audio_play_sound(snd_jump, 0, 0)
		
		if(other.sprite_index = spr_queda)
		{
			other.cair = true;
		}
	}
}