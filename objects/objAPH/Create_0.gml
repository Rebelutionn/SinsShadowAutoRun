/// @description Insert description here
// You can write your code in this editor

fixtureAmelia = physics_fixture_create();
physics_fixture_set_circle_shape(fixtureAmelia, 5);
physics_joint_rope_create(objAPH, objGP, objAPH.x, objAPH.y, objGP.x, objGP.y, 256, false);
