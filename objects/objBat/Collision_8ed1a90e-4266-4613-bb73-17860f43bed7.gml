
if other.visible
{
	move_bounce_all(false);
}


if objPlayerGrapple.bCanTakeDamage == 1
	{
	objPlayerGrapple.iCurrentHP -= iBatDamage;
	objPlayerGrapple.bCanTakeDamage = 0;
	objPlayerGrapple. bGotHit = 1;
}
