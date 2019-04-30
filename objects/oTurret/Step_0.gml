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
	
		firingdelay = irandom_range(70, 100);
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

if (hp <= 0){
	scrDeath(x, y, true);
	instance_destroy();	
}