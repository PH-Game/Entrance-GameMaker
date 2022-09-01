/// @description Logic of Submitting

// Check is player nearby
if (place_meeting(x, y, obj_player)) {
	// Check is player pressed Space
	if (keyboard_check_pressed(vk_space) ) {
		if (textBox == noone) {
			// Draw Text Box if the task is not finished and item not match
			if (obj_player.itemIndex.sprite_index != self.taskNeedItem.sprite_index) {
				textBox = instance_create_layer(x - boxWidth / 2, y - 1.2 * boxHeight, "Text", obj_textbox);
				textBox.text = text;
				textBox.creator = self;
				textBox.name = taskName;
			} else {
				obj_player.itemIndex.itemCount -= self.taskNeedItemCount;
				
				// Draw Text Box if the item is enough
				if (obj_player.itemIndex.itemCount > 0) {
					self.isFinished = true;
					textBox = instance_create_layer(x - boxWidth / 2, y - 1.2 * boxHeight, "Text", obj_textbox);
					text1[0] = "Task Finished"
					textBox.text = text1;
					textBox.creator = self;
					textBox.name = taskName;
				} else {
					// Draw Text Box if the item is not enough
					obj_player.itemIndex.itemCount += self.taskNeedItemCount;
					self.isFinished = true;
					textBox = instance_create_layer(x - boxWidth / 2, y - 1.2 * boxHeight, "Text", obj_textbox);
					text1[0] = "Item not enough"
					textBox.text = text1;
					textBox.creator = self;
					textBox.name = taskName;
				}
			}
		}
	}
} else {
	// Destroy Text Box when Player leaved
	if (textBox != noone) {
		instance_destroy(textBox);
		textBox = noone;
	}
}
