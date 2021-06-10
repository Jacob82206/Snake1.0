game_set_speed(10, gamespeed_fps);
randomize();

dir = 0;

dx = [1,0,-1,0];
dy = [0,1,0,-1];

block = function(_x,_y,_blk) constructor{
	x = _x;
	y = _y;
	blk = _blk;
}


head = new block(x,y,noone);