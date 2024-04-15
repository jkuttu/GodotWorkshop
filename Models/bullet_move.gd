extends RigidBody2D

var SPEED = 500
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var direction = Vector2.UP.rotated(rotation)
	move_and_collide(direction * SPEED * delta)
