extends RigidBody2D

var magnitude := 200
var angle := 0

var _launched := false

func _process(_delta):
	if not _launched and Input.is_action_just_pressed("launch"):
		apply_impulse(Vector2.ZERO, Vector2(magnitude*cos(deg2rad(angle)), magnitude*sin(deg2rad(angle))))
		#_launched = true
	elif Input.is_action_pressed("angle_up"):
		if not angle >= 0:
			angle += 1
	elif Input.is_action_pressed("angle_down"):
		if not angle <= -90:
			angle -= 1
	if Input.is_action_pressed("display_angle"):
		self.rotation_degrees = angle
