/// @description Logic of Picking Item

// Check is Player Nearby
if (place_meeting(x, y, obj_player)) {
	// Check is Player on ground
	if (place_meeting(x, y + 1, obj_environment)) {
		// Check is Player pressed 'F'
		if (keyboard_check_pressed(ord("F")) ) {
			// Switch visbility to false (The Item will disappear *but the Object is still remain)
			self.visible = false;
			
			// When droping the item, due to Life Cycle, bag[0] will not be setup before here
			if (array_length(global.bag) == 0) {
				global.bag[0] = self;
			}
			
			// If the Bag is not empty, put the item in bag[n + 1]
			if (global.bag[0] != noone) {
				var count = 0;
				
				// Count duplicated item, and itemCount++
				for (a = 0; a < array_length(global.bag) - 1; a += 1) {
					if (global.bag[a].itemName == self.itemName && self.couldBeMultiple) {
						global.bag[a].itemCount++;
						count++;
						break;
					}
				}
				
				// Zero dulicated item state
				if (count == 0) array_push(global.bag, self);
			}
			
			// If the Bag is empty (Initial State), put the item in bag[0]
			else global.bag[0] = self;
		}
	}
}