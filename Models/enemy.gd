extends RigidBody2D

# Called when the node enters the scene tree for the first time.
func _readyX():
	var player = get_tree().get_root().get_node("Basics").position
	look_at(player)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
