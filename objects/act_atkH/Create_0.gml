disabled = true;
action = function ()
{
	btl_ref.process_attack(obj_player.pow * random_range(1.618,2.618))
	obj_player.charge = 0;
	act_atkH.disabled = true;
}