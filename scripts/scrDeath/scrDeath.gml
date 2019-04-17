///BloodCreate(xx, yy)

if(argument0){
	var xx = argument0;
	var yy = argument1;
	var bloodCount = irandom_range(20, 30);
	
	for(var i = 0; i <= bloodCount; i++){
		instance_create_layer(xx, yy, "Bullets", oBloodParticle)	
	}
}