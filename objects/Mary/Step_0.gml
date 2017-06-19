/// @description Insert description here
// You can write your code in this editor

//basic movement
if(keyboard_check(vk_down) && place_free(x,y+collisionSpeed))// place_free is function check collision block
{
	if(keyboard_check(vk_right) && place_free(x+collisionSpeed,y+collisionSpeed))
	{
		y+=walkSpeed;
		x+=walkSpeed;
		image_speed=walkSpeed/3;
		sprite_index=MMD;
	}
	else if(keyboard_check(vk_left)&& place_free(x-collisionSpeed,y+collisionSpeed))
	{
		y+=walkSpeed;
		x-=walkSpeed;
		image_speed=walkSpeed/3;
		sprite_index=MMD;
	}
	else
	{
		y+=walkSpeed;
		image_speed=walkSpeed/3;
		sprite_index=MMD;
	}
}
else if(keyboard_check(vk_up) && place_free(x,y-collisionSpeed))
{
	if(keyboard_check(vk_right) && place_free(x+collisionSpeed,y-collisionSpeed))
	{
		y-=walkSpeed;
		x+=walkSpeed;
		image_speed=walkSpeed/3;
		sprite_index=MMU;
	}
	else if(keyboard_check(vk_left) && place_free(x-collisionSpeed,y+collisionSpeed))
	{
		y-=walkSpeed;
		x-=walkSpeed;
		image_speed=walkSpeed/3;
		sprite_index=MMU;
	}
	else
	{
		y-=walkSpeed;
		image_speed=walkSpeed/3;
		sprite_index=MMU;
	}
}
else if(keyboard_check(vk_right)&& place_free(x+collisionSpeed,y))
{
	if(keyboard_check(vk_up) && place_free(x+collisionSpeed,y-collisionSpeed))
	{
		y-=walkSpeed;
		x+=walkSpeed;
		image_speed=walkSpeed/3;
		sprite_index=MMU;
	}
	else if(keyboard_check(vk_down) && place_free(x-collisionSpeed,y+collisionSpeed))
	{
		y+=walkSpeed;
		x-=walkSpeed;
		image_speed=walkSpeed/3;
		sprite_index=MMD;
	}
	else
	{
		x+=walkSpeed;
		image_speed=walkSpeed/3;
		sprite_index=MMR;
	}
}
else if(keyboard_check(vk_left) && place_free(x-collisionSpeed,y))
{
	if(keyboard_check(vk_up) && place_free(x+collisionSpeed,y-collisionSpeed))
	{
		y-=walkSpeed;
		x+=walkSpeed;
		image_speed=walkSpeed/3;
		sprite_index=MMU;
	}
	else if(keyboard_check(vk_down) && place_free(x-collisionSpeed,y+collisionSpeed))
	{
		y+=walkSpeed;
		x-=walkSpeed;
		image_speed=walkSpeed/3;
		sprite_index=MMD;
	}
	else
	{
		x-=walkSpeed;
		image_speed=walkSpeed/3;
		sprite_index=MML;
	}
}

//case collision tren back
if(keyboard_check(vk_down) && !place_free(x,y+collisionSpeed))
{
	image_speed=walkSpeed/3;
	sprite_index=MMD;
}
if(keyboard_check(vk_up) && !place_free(x,y-collisionSpeed))
{
	image_speed=walkSpeed/3;
	sprite_index=MMU;
}
if(keyboard_check(vk_right) && !place_free(x+collisionSpeed,y))
{
	image_speed=walkSpeed/3;
	sprite_index=MMR;
}
if(keyboard_check(vk_left) && !place_free(x-collisionSpeed,y))
{
	image_speed=walkSpeed/3;
	sprite_index=MML;
}

//general option
if(keyboard_check(vk_nokey))
{
	image_speed=0;
	image_index=0;
}
if(keyboard_check(vk_shift))
{
	walkSpeed=7;
}
if(keyboard_check(!vk_shift))
{
	walkSpeed=3.5;
}

	

