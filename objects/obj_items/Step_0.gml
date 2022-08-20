/// @description Pick Item

if (place_meeting(x, y, obj_player)) {
	if (place_meeting(x, y + 1, obj_environment)) {
		if (keyboard_check_pressed(ord("F")) ) {
			self.visible = false;
			if (global.bag[0] != noone) {
				var count = 0;
				for (a = 0; a < array_length(global.bag) - 1; a += 1) {
					if (global.bag[a].itemName == self.itemName && self.couldBeMultiple) {
						global.bag[a].itemCount++;
						count++;
						break;
					}
				}
				
				if (count == 0) array_push(global.bag, self);
			}
			else global.bag[0] = self;
		}
	}
}