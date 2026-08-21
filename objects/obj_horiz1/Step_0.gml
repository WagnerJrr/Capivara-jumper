//destruindo e craindo as plataformas
var _cam_height = camera_get_view_height(view_camera[0]);
var _marg = 60;

//me destruindo quando eu sair da view
if (camera_get_view_y(view_camera[0]) + _cam_height + _marg < y)
{
	instance_destroy();
	var _obj = choose(obj_horiz1, obj_horiz2, obj_movel, obj_queda)
	var _x = random_range(sprite_width/2, room_width - sprite_width/2);
	instance_create_layer(_x, ystart - _cam_height - _marg, layer, _obj);
}