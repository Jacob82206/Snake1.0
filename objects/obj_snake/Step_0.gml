if (keyboard_check_pressed(vk_right)){
	dir = 0;	
}
else if (keyboard_check_pressed(vk_down)){
	dir = 1;	
}
else if (keyboard_check_pressed(vk_left)){
	dir = 2;	
}
else if (keyboard_check_pressed(vk_up)){
	dir = 3;	
}

if (keyboard_check_pressed(ord("Q"))){
	game_restart();	
}

x = (x+dx[dir]+16)%16;
y = (y+dy[dir]+16)%16;

head = new block(x,y,head);
var p = head;
var lp = noone;

while(p.blk != noone){
	if (p != head && p.x == x && p.y == y){
		game_restart();	
	}
	lp = p;
	p = p.blk;	
}

if (x == obj_food.x && y == obj_food.y){
	instance_destroy(obj_food);
	var _x = floor(random(16));
	var _y = floor(random(16));
	var pp = head;
	while (pp != noone){
		if (pp.x == _x && pp.y == _y){
			_x = floor(random(16));
			_y = floor(random(16));
			pp = head;
		}
		else{
			pp = pp.blk;	
		}
	}
	instance_create_depth(_x,_y,0,obj_food);
}
else{
	delete lp.blk;
	lp.blk = noone;
}
