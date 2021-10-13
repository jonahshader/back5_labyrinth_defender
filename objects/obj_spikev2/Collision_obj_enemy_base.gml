if(!invincible)
{
	instance_destroy(other);
	invincible = true;
	timer -= 1;
}
