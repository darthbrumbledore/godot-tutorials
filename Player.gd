extends KinematicBody2D

onready var tween = $Tween

onready var ray = $RayCast2D
var grid_size = 16
var inputs = {
	'ui_up': Vector2.UP,
	'ui_down': Vector2.DOWN,
	'ui_left': Vector2.LEFT,
	'ui_right': Vector2.RIGHT
}



func _unhandled_input(event):
	for dir in inputs.keys():
		if event.is_action_pressed(dir):
			if tween.is_active() == false:
				move(dir)
	if event.is_action_pressed('reset'):
			get_tree().reload_current_scene()	
func move(dir):
	var game = get_parent()
	var vector_pos = inputs[dir] * grid_size
	ray.cast_to = vector_pos
	ray.force_raycast_update()
	tween.interpolate_property(self, "position", position, position + vector_pos, 0.2, Tween.TRANS_SINE, Tween.EASE_IN_OUT)
	if !ray.is_colliding():
		#position += vector_pos
		tween.start()
		#increment movement counter
		game.moves += 1
	else:
		var collider = ray.get_collider()
		if collider.is_in_group('box'):
			if collider.move(dir):
				tween.start()
				#increment movement counter
				game.moves += 1

	

