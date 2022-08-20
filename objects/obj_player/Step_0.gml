/// @description Basic Player Controll Logic

// Read User Input
var key_left = keyboard_check(vk_left);
var key_right = keyboard_check(vk_right);
var key_up = keyboard_check_pressed(vk_up);

// Calculate Movement
horizontalMovement = (key_right - key_left) * walkSpeed;
verticalMovement += playerGravity;

// Check Collision

// Horizontal Collision
if (place_meeting(x + horizontalMovement, y, obj_invisible_wall)) {
	while (!place_meeting(x + sign(horizontalMovement), y, obj_invisible_wall)) {
		x += sign(horizontalMovement);
	}
	horizontalMovement = 0;
}

x += horizontalMovement;

// Vertical Collision
if (place_meeting(x, y + verticalMovement, obj_invisible_wall)) {
	while (!place_meeting(x, y + sign(verticalMovement), obj_invisible_wall)) {
		y += sign(verticalMovement);
	}
	verticalMovement = 0;
}

y += verticalMovement;

// Jump Check
if (place_meeting(x, y + 1, obj_invisible_wall) and (key_up)) {
	verticalMovement = -jumpSpeed;
}