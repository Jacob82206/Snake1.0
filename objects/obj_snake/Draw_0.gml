draw_set_color(c_black);
var p = head;
while (p != noone){
	draw_rectangle(p.x,p.y,p.x,p.y,0);
	p = p.blk;
}