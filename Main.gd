extends Node2D



# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass



func _on_Target_body_entered(body):
	if body == get_children()[0]:
		print("Target collided with the ball!")
	else:
		print("Target collided with something other than the ball!")
