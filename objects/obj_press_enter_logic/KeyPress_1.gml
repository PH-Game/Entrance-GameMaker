/// @description Goto Dream 1

sequence_element_id = layer_sequence_create("Animation", 0, 0, seq_goto_game_animation);
layer_sequence_play(sequence_element_id);

while (true) {
	if layer_sequence_is_finished(sequence_element_id) {
		room_goto(room_dream_1);
		break;
	}
}