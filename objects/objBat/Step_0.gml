

if instance_exists(objPlayerGrapple)
	{
	if distance_to_object(objPlayerGrapple) < iBatDetectionRadius
		{
		bContinuePathOnce = 0;
		path_end();
		move_towards_point(objPlayerGrapple.x+12, objPlayerGrapple.y-2, 1.5);
		}
	else if bContinuePathOnce == 0
		{
		bContinuePathOnce = 1;
		path_start(pathEnemyBat, iBatSpeed, path_action_continue, 0);
		}
	}  

if(batHP <=0){					   
	instance_destroy();  
} 

hit = instance_place (x, y, objSwordHitbox);

if (hit != noone)
	{
	//hit.batHP -= 1; BREAKING GAME
	instance_destroy ();
	}
	