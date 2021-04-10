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
			
func move(dir):
	var vector_pos = inputs[dir] * grid_size
	ray.cast_to = vector_pos
	ray.force_raycast_update()
	tween.interpolate_property(self, "position", position, position + vector_pos, 0.2, Tween.TRANS_SINE, Tween.EASE_IN_OUT)
	if !ray.is_colliding():
		#position += vector_pos
		tween.start()
		return true
	return false
