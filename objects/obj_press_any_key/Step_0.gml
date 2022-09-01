/// @description Check If Begin Sequence Is Ended


if (animation2 != noone) {
	if (layer_sequence_is_finished(animation2)) {
		/*animation1 = layer_get_id("Animation_1");
		layer_destroy(animation1)
		
		instance_destroy(animation2);*/
		instance_destroy();
		room_goto(room_dream_1);
	}
}