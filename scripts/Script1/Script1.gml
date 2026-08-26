#region variaveis globais
global.velinicio = 6;
global.velplayer = 9;
global.ponto = 0;
global.pontomax = 0;
global.acai = 0;


#endregion

function colisao_pulo()
{
	//se o vspeed for maior que zero e se colidiu com a plataforma ele pula
	if (vspeed > 0)
	{
		vspeed = -global.velplayer;
		instance_create_layer(x, y, layer, obj_vfx_capi);
		
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