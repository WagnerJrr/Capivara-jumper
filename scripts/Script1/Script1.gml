#region variaveis globais
global.velinicio = 6
global.velplayer = 9


#endregion

function colisao_pulo()
{
	//se o vspeed for maior que zero e se colidiu com a plataforma ele pula
	if (vspeed > 0)
	{
		vspeed = -global.velplayer
		instance_create_layer(x, y, layer, obj_vfx_capi)
	}
}