alarm[0] = 60;
if (instance_exists(obj_player) and distance_to_object(obj_player) < aggro_dist)
{
	targ_x = obj_player.x;
	targ_y = obj_player.y;
}
else
{
	targ_x = random_range(xstart - wander_dist, xstart + wander_dist )
	targ_y = random_range(ystart - wander_dist, ystart + wander_dist )
}