partZoomSystem = part_system_create();
part_system_depth(partZoomSystem, 10000);
partZoomParticle = part_type_create();
part_type_sprite(partZoomParticle, dot, false, false, false);
part_type_size(partZoomParticle,1,2,0,0);
part_type_color1(partZoomParticle,c_white);
part_type_alpha3(partZoomParticle,0,0.3,0);
part_type_speed(partZoomParticle,0.5,2,0,0);
part_type_direction(partZoomParticle,0,359,0,0);
part_type_orientation(partZoomParticle,0,0,0,0,true);
part_type_blend(partZoomParticle,1);
part_type_life(partZoomParticle,500,500);

timer = 0;