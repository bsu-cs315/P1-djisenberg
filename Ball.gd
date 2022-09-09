extends RigidBody2D

var magnitude := 200
var angle := 0

var _launched := false

func _process(_delta):
	if not _launched and Input.is_action_just_pressed("launch"):
		apply_impulse(Vector2.ZERO, Vector2(magnitude*cos(angle), magnitude*sin(-angle)))
	elif Input.is_action_pressed("angle_up"):
		angle += 1
		self.rotation_degrees = angle
	elif Input.is_action_pressed("angle_down"):
		angle -= 1
		self.rotation_degrees = angle
