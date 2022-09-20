extends Node2D


func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass



func _on_Target_body_entered(body):
	var _targetSound :AudioStreamPlayer = get_child(1).get_child(2)
	_targetSound.play()
	if body == get_children()[0]:
		print("Target collided with the ball!")
	else:
		print("Target collided with something other than the ball!")
