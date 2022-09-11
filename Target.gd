extends RigidBody2D


func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Target_body_entered(body):
	print("Target Collided with something!") # Replace with function body.
