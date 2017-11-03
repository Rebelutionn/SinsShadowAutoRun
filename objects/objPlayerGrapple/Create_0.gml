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
iCurrentHP = 100;
iMaxHP = 100;

//Stamina
iCurrentStamina = 100;
iMaxStamina = 100;

// TAKE DAMAGE
bCanTakeDamage = 0;
iDamageBuffer = 60;
alarm[0] = iDamageBuffer;
bGotHit = 0;





