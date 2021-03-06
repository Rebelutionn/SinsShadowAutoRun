show_debug_message(iCurrentHP)

/// GRAPPLE FUNCTIONALITY
if(keyboard_check_pressed(vk_up)) && (instance_exists(objGrappleBlock)) && (distance_to_object(objGrappleBlock) < iGrappleRadius)
{
	active = true;
	instNearestGP = instance_nearest(x, y, objGrappleBlock);
	if instNearestGP.y < y
	{
		mx = instNearestGP.x;
		my = instNearestGP.y;
		jointGrapple = physics_joint_rope_create(objPlayerGrapple, objGrappleBlock, (objPlayerGrapple.x + 9), (objPlayerGrapple.y - 41), objGrappleBlock.x, objGrappleBlock.y, 125, false);
		if(distance_to_object(objGrappleBlock) > iGrappleRadius)
		{ 
			active = false;   
		}
	}
}

if(keyboard_check_released(vk_up)) && (active == true) 
{
	physics_joint_delete(jointGrapple);
	active = false;
}

/// PLAYER MOVEMENT 
if(hspeed == 0) sprite_index = sprIdle;
if(keyboard_check(ord("D")))
{
	image_xscale = 1;
	physics_apply_force(x, y, 510, 0);
	hspeed = 3;
	sprite_index= sprWalk; 
	
}

if(keyboard_check(ord("A")))
{
	image_xscale = -1;
	physics_apply_force(x, y, -510, 0);
	hspeed = -3;
	sprite_index = sprWalk;
}

if(!keyboard_check(ord("A"))) && !keyboard_check(ord("D")) hspeed = 0;

/// JUMP CONDITIONS AND FUNCTIONALITY 
if(keyboard_check_released(vk_space))
{
	bUnspaced = true;
	iCurrentStamina -= 15;
	sprite_index = sprFall;
}

if(place_meeting(x,y+5,objCollisionPhys))
{
	bOnGround = true;
} 
else
{
	bOnGround = false;
}

if(keyboard_check(vk_space)) && bUnspaced == true && bOnGround == true
{
	bUnspaced = false;
	physics_apply_impulse(x, y, 0, -460);
	//vspeed += -15;
	//sprite_index = sprJump;
	//image_index = 
}

/// DEBUG MESSAGES
//show_debug_message("bJumpImpulseSwitch: " + string(bJumpImpulseSwitch));
//show_debug_message("bOnGround: " + string(bOnGround));
//show_debug_message("bUnspaced: " + string(bUnspaced));

//physics collision events
phys_x = phy_position_x
phys_y = phy_position_y

/// If Amelia Dies
if (iCurrentHP <= 0)
{
	instance_destroy(objPlayerGrapple);
	game_restart();
}

/// BAT ATTACK COOLDOWN

if alarm_get(0) <= 0
	{
	bCanTakeDamage = 1;
	}
	
if bGotHit = 1
{
	bGotHit = 0;
	alarm_set(0, iDamageBuffer);
}

/* /// THIS SHIT IS BROKEN, PLEASE LEAVE ALONE ///
/// ATTACK 
if(attack == true){
	if(mouse_check_button(mb_left)) {
		sprite_index = sprSwordAtk; 
		image_index = -1;
		var xdiff = x - xprevious;
	
		if(!(xdiff = 0)){
			deltax = xdiff; 
		}
		instance_create_layer(x+ sign(other.x),y+sign(other.y)*32,"Player",objSwordHitbox);
		if(image_index >= 7) && (mouse_check_button_released(mb_left)){
			image_speed = 0;
			sprite_index = objPlayerGrapple;
		} 
	}else {
		sprite_index = objPlayerGrapple;
	}
	audio_play_sound(slashAttack, 5, false);
}
*/

/*
/// **OLD**GRAPPLE FUNCTIONALITY        
if(keyboard_check_pressed(vk_up)) && (instance_exists(objGrappleBlock))
{
	instNearestGP = instance_nearest(x, y, objGrappleBlock);

	if instNearestGP.y < y
	{
		
		active = true;
		vspeed += -5.7;
		if(distance_to_object(objGrappleBlock) > iGrappleRadius)
		{ 
			active = false;   
		}
	}                                   
}
*/

/* 
if(active == true)
{
	gravity = 0.1;
	x += (mx - x) = 0.5;
	y += (my - y) = 0.5;
}    
*/

/*
if(iAttackTimer > 1){
	attack = true; 
}

*/

/*
/// FACE DIRECTION OF MOVEMENT    
if (x < iPrevFrameX)
	{
		image_xscale = -1;
	}
else if (x > iPrevFrameX)
	{
		image_xscale = 1;
	}
iPrevFrameX = x;
*/

//Attack isn't working, and hitbox isn't aligned with the Sword; 
//We'll have to change that functionality anyways, since we're taking the sword
//off of Amelia's sprite