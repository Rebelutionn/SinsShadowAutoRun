/// @description Insert description here
// You can write your code in this editor


//Enforce MaxHP Cap
if (objPlayerGrapple.iCurrentHP >= objPlayerGrapple.iMaxHP)
{
	objPlayerGrapple.iCurrentHP = objPlayerGrapple.iMaxHp;
}


//Enforce Stamina Cap
if (objPlayerGrapple.iCurrentStamina >= objPlayerGrapple.iMaxStamina)
{
	objPlayerGrapple.iCurrentStamina = objPlayerGrapple.iMaxStamina;
}else{
	objPlayerGrapple.iCurrentStamina = objPlayerGrapple.iCurrentStamina + 0.05;    //Every frame will add 1 stamina back to Amelia
	}
	



//If Amelia Dies
if (objPlayerGrapple.iCurrentHP <= 0)
{
	instance_destroy();
	game_restart();
}
