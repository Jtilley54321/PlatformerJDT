/// @description Insert description here
// You can write your code in this editor

var ShootingDelay = irandom_range(-10,35)

image_angle = point_direction(x,y,oPlayer.x,oPlayer.y);

firingdelay = firingdelay - 1;

if (firingdelay < 0)
{
	firingdelay = 80 - (ShootingDelay);
	with(instance_create_layer(x,y,"Bullets",oTurretBullet))
	{
		speed = 15;
		direction = other.image_angle;
		image_angle = direction
	}
}

if (hp <= 0) instance_destroy();

