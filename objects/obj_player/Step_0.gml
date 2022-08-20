/// @description Basic Player Controll Logic

// Read User Input
var keyLeft = keyboard_check(vk_left);
var keyRight = keyboard_check(vk_right);
var keyUp = keyboard_check_pressed(vk_up);

// Calculate Movement
horizontalMovement = (keyRight - keyLeft) * walkSpeed;
verticalMovement += playerGravity;

image_speed = 1;

if (horizontalMovement != 0) {
	sprite_index = spr_player_run;
} else {
	sprite_index = spr_player;
}

// Check Collision

// Horizontal Collision
if (place_meeting(x + horizontalMovement, y, obj_environment)) {
	while (!place_meeting(x + sign(horizontalMovement), y, obj_environment)) {
		x += sign(horizontalMovement);
	}
	horizontalMovement = 0;
}

x += horizontalMovement;

// Vertical Collision
if (place_meeting(x, y + verticalMovement, obj_environment)) {
	while (!place_meeting(x, y + sign(verticalMovement), obj_environment)) {
		y += sign(verticalMovement);
	}
	verticalMovement = 0;
}

y += verticalMovement;

// Jump Check
if (place_meeting(x, y + 1, obj_environment) and (keyUp)) {
	verticalMovement = -jumpSpeed;
}

if (not place_meeting(x, y + 1, obj_environment)) {
	sprite_index = spr_player_fall_or_jump;
	image_speed = 0;
	
	if (verticalMovement > 0) image_index = 0;
	if (verticalMovement < 0) image_index = 1;
}