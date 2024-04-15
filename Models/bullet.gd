extends  Sprite2D
func _process(delta):
	translate(Vector2.LEFT * delta * 100)
