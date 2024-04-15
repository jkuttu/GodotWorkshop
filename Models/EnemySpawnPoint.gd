extends Marker2D
@export var enemy:PackedScene

func _on_timer_timeout():
	var oneEnemy = enemy.instantiate()
	get_tree().current_scene.add_child(oneEnemy)
	oneEnemy.position = position
	#oneEnemy._readyX()
	pass # Replace with function body.
