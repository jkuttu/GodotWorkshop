extends RigidBody2D

var SPEED = 500
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var direction = Vector2.UP.rotated(rotation)
	move_and_collide(direction * SPEED * delta)


func _on_area_2d_body_entered(body):
	if not body.is_in_group("player"):
		body.queue_free()
		Common.score+=1
		Common.ScoreSignal.emit(Common.score)
	pass # Replace with function body.
