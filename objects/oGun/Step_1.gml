x = oPlayer.x;
y = oPlayer.y + 12;

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
	recoil = 4;
	firingdelay = 50;
	with(instance_create_layer(x,y,"Bullets",oBullet))
	{
		speed = 20;
		direction = other.image_angle + random_range(-2, 2);
		image_angle = direction
	
	}
}

if ((mouse_check_button_released(mb_right) || gamepad_button_check(0,gp_shoulderrb)) && (playerb = false && oPlayer.CloneLives >= 1))
{
	recoil = 11;
	if (oPlayer.looking = "right") pBullet = instance_create_layer(oPlayer.x - 14, oPlayer.y - 20,"Player", oPlayerB);
	if (oPlayer.looking = "left") pBullet = instance_create_layer(oPlayer.x + 14, oPlayer.y - 20,"Player", oPlayerB);
	audio_play_sound(sShoot, 1, false);
	angle = point_direction(x,y,mouse_x,mouse_y) * (pi / 180);
	pBullet.hsp1 = cos(angle) * 15;
	pBullet.vsp1 = sin(angle) * -15;
	playerb = true;
	oPlayer.CloneLives--;
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