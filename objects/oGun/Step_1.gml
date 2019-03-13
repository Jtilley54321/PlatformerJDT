/// @description Insert description here
// You can write your code in this editor
x = oPlayer.x;
y = oPlayer.y + 10;

if(oPlayer.controller == 0)
{
	image_angle = point_direction(x,y,mouse_x,mouse_y)
}
else
{
	var controllerh = gamepad_axis_value(0,gp_axisrh);
	var controllerv = gamepad_axis_value(0,gp_axisrv);
	
	if (abs(controllerh) > .2) || (abs(controllerv) > .2)
	{
	controllerangle = point_direction(0,0,controllerh,controllerv);
	}
	image_angle = controllerangle;
}



firingdelay = firingdelay - 1;

if ((mouse_check_button(mb_left) || gamepad_button_check(0,gp_shoulderrb)) && (firingdelay < 0))
{
	recoil = 3;
	firingdelay = 5;
	with(instance_create_layer(x,y,"Bullets",oBullet))
	{
		speed = 25;
		direction = other.image_angle + random_range(-3,3);
		image_angle = direction
	
	}
}

if ((mouse_check_button(mb_right) || gamepad_button_check(0,gp_shoulderrb)) && (playerb = false))
{
	recoil = 5;
	firingdelay = 10;
	pBullet = instance_create_layer(x,y - 15 ,"Player", oPlayerB);
	angle = point_direction(x,y,mouse_x,mouse_y) * (pi / 180);
	pBullet.hsp1 = cos(angle) * 15;
	pBullet.vsp1 = sin(angle) * -15;
	playerb = true
}

recoil = max(0, recoil - 1);


x = x - lengthdir_x(recoil, image_angle);
y = y - lengthdir_y(recoil, image_angle);

if (image_angle > 90) && (image_angle < 270)
{
	image_yscale = -1;
}
else
{
	image_yscale = 1;
}