draw_self();

var _x = xstart - 20;
var _y = ystart + 20;
var _w = 40;
var _h = 8;
hp = data.hp
hp_max = data.hp_max
draw_sprite_stretched(spr_box,0,_x,_y,_w,_h);
draw_sprite_stretched_ext(spr_box,1,_x,_y,_w * (hp / hp_max),_h,c_red,0.8);