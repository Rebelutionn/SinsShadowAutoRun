/// GRAPPLE VARIABLES 
mx = x; // hook x coordinates
my = y; // hook y coordinates
active = false;
iGrappleRadius = 200;
instNearestGP = objGrappleBlock;

/// PHYSICS VARIABLES
fixtureAmelia = physics_fixture_create();
jointGrapple = pointer_null;
physics_fixture_set_circle_shape(fixtureAmelia, 5);

phy_rotation = 0;
phy_fixed_rotation = true;

/// ATTACK VARIABLES
attack = false;
iAttackTimer = 2;
alarm[0] = iAttackTimer;

iPrevFrameX = 0;

/// HP
iCurrentHP = 100;
iMaxHP = 100;

///Stamina
iCurrentStamina = 100;
iMaxStamina = 100;
//iStaminaDecrease = 15; //created a variable to set stamina to decrement 

/// TAKE DAMAGE
bCanTakeDamage = 0;
iDamageBuffer = 60;
alarm[0] = iDamageBuffer;
bGotHit = 0;

/// JUMPING PHYSICS VARIABLES 
bUnspaced = true; //is the spacebar being held down
bOnGround = false; //is Amelia on the ground
bJumpImpulseSwitch = true; //"true" meaning "can jump"

/// PHSYICS COLLISION
phys_x = phy_position_x
phys_y = phy_position_y