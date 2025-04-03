if disabled exit;

if (hp <= 0)
{
	disabled = true;
	alarm[1] = 45;
	exit;
}

var _hor = clamp(targ_x - x, -1,1);
var _ver = clamp(targ_y - y, -1,1);

move_and_collide(_hor*move_speed, _ver*move_speed, [tilemap, obj_enemy_parent], undefined, undefined, undefined, move_speed, move_speed);