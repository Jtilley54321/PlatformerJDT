if(collision_line(x, y, oPlayer.x, oPlayer.y, oWall, false, false)){
	exit;	
}

if(flash && prepare_time % 3 == 0){
	draw_set_color(c_red);
	draw_line_width(x, y, oPlayer.x, oPlayer.y, 3);
}