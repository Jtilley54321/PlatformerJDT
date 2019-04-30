if (hp <= 0){
	scrDeath(x, y, true);
	instance_destroy();	
}

firingdelay = firingdelay - 1;

if(collision_line(x, y, oPlayer.x, oPlayer.y, oWall, false, false)){
	prepare_time = prepare_delay;
	flash = false;
	lockedon = false;
	exit;
}
if(!lockedon){
	lockedon = true;
	audio_play_sound(sTurretLock, 100, false);
}

image_angle = point_direction(x,y,oPlayer.x,oPlayer.y);

if (firingdelay <= 0) {
	prepare_time--;
	if(prepare_time <= 0){
		flash = false;
	if (hp == 5) firingdelay = irandom_range(60, 80);
	else if (hp == 4) firingdelay = irandom_range(40, 60);
	else if (hp == 3) firingdelay = irandom_range(20, 40);
	else if (hp == 2) firingdelay = irandom_range(10, 20);
	else if (hp == 1) firingdelay = irandom_range(0, 1);
		prepare_time = prepare_delay;
		with(instance_create_layer(x, y, "Bullets", oTurretBullet)) {
			speed = 15;
			direction = other.image_angle;
			image_angle = direction
			audio_play_sound(sTurretBullet, 100, false);
		}
	}else{
		flash = true
	}
}
