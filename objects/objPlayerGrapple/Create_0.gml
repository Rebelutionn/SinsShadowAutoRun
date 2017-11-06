// GRAPPLE VARIABLES 
mx = x; // hook x coordinates
my = y; // hook y coordinates
active = false;
iGrappleRadius = 200;
instNearestGP = objGrappleBlock;

// ATTACK VARIABLES
attack = false;
iAttackTimer = 2;
alarm[0] = iAttackTimer;

iPrevFrameX = 0;

// HP
iCurrentHP = 50;
iMaxHP = 100;

// TAKE DAMAGE
bCanTakeDamage = 0;
iDamageBuffer = 60;
alarm[0] = iDamageBuffer;
bGotHit = 0;

// JUMPING PHYSICS VARIABLES 
bUnspaced = true; //is the spacebar being held down
bOnGround = false; //is Amelia on the ground
bJumpImpulseSwitch = true; //"true" meaning "can jump"


