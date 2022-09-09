extends RigidBody2D

var magnitude := 200
var angle := 0

var _launched := false

func _process(_delta):
	if not _launched and Input.is_action_just_pressed("launch"):
		var _xVector = magnitude * cos(angle)
		var _yVector = magnitude * sin(angle)
		print("Angle: " + str(angle) + "\nX component: " + str(_xVector) + "\nY component: " + str(_yVector) + "\n")
		apply_impulse(Vector2.ZERO, Vector2(magnitude*cos(deg2rad(angle)), magnitude*sin(deg2rad(angle))))
	elif Input.is_action_pressed("angle_up"):
		angle -= 1
	elif Input.is_action_pressed("angle_down"):
		angle += 1
	if Input.is_action_pressed("display_angle"):
		self.rotation_degrees = angle
