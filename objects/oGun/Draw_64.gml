#region Prediction Line
if (oGun.playerb = false)
{
	if (mouse_check_button(mb_right))
	{
	dir = point_direction(oPlayer.x,oPlayer.y, mouse_x, mouse_y);
	spd = 15

	//start at x,y of launcher
	xx = oGun.x;
	yy = oGun.y - 3;

	//what are the dx,dy for movement
	vx = lengthdir_x(spd,dir);
	vy = lengthdir_y(spd,dir);

	grav = .3;

	detail = 100;
	step = (1/detail);

	draw_primitive_begin(pr_linelist);
	draw_vertex_color(xx,yy,c_black,1);
	for (i=0; i<1+step; i+=step){  // <-- Important change! Instead of using a While loop, use a For loop so you can change the amount of vertex points created.
	    xx+=vx; //add dx
	    yy+=vy //add dy
	    vy+=grav; //add gravity to dy
	    draw_vertex_color(xx,yy,c_black,1);
	}

	draw_primitive_end();
	}
}
#endregion Prediction Line