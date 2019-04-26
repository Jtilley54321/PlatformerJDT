///BloodCreate(xx, yy, turret)

if(argument0 && argument1){
	var xx = argument0;
	var yy = argument1;
	var bloodCount = irandom_range(40, 80);
	

	
	for(var i = 0; i <= bloodCount; i++){
		if(argument2 == true){
			instance_create_layer(xx, yy, "Bullets", oMachineParticle);
		}else{
			instance_create_layer(xx, yy, "Bullets", oBloodParticle);
		}
	}
}