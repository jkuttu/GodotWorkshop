extends RigidBody2D

var SPEED = 100
# Called when the node enters the scene tree for the first time.
func _readyX():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	look_at(Common.player.position)
	var direction = Common.player.position - position
	var dirNormal = direction.normalized()
	move_and_collide(dirNormal * SPEED * delta)
	pass
