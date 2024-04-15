extends Sprite2D
@export var basics: Node2D

func _process(delta):
	var velocity = Vector2()
	if Input.is_action_just_pressed("ui_space"):
		var bulletModel = load("res://Models/bullet.tscn")
		var bullet = bulletModel.instantiate()
		get_tree().current_scene.add_child(bullet)
		bullet.global_position = global_position
		bullet.global_rotation = basics.global_rotation
