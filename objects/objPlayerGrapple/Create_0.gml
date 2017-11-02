/// @description Insert description here
// You can write your code in this editor
mx = x; // hook x coordinates
my = y; // hook y coordinates
active = false;
iGrappleRadius = 280;

//Attack Variables
attack = false;
iAttackTimer = 2;
alarm[0] = iAttackTimer;

iPrevFrameX = 0;

instNearestGP = objGrappleBlock;

//HP
iCurrentHP = 50;
iMaxHP = 100;

//Take Damage
bCanTakeDamage = 0;
iDamageBuffer = 60;
alarm[0] = iDamageBuffer;

bGotHit = 0;

