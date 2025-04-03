if disabled exit;
if instance_exists(btl_sherpa) exit;

var _sherpa = instance_create_depth(0,0,0,btl_sherpa);

_sherpa.player_data = self;
_sherpa.foe_data = other;
_sherpa.outer_room = room;

room_goto(room_battle);