extends Node2D

@export var camera: Camera2D

const ROTATION_SPEED = 360.0
var speed = 300


func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here
	camera.limit_left = -576
	camera.limit_right = 576
	camera.limit_top = -324
	camera.limit_bottom = 324

	Common.player = self
	
	pass

func _process(delta):
	var velocity = Vector2()
	if Input.is_action_pressed("ui_left"):
		velocity.x -= 1
	if Input.is_action_pressed("ui_right"):
		velocity.x += 1
	if Input.is_action_pressed("ui_up"):
		velocity.y -= 1
	if Input.is_action_pressed("ui_down"):
		velocity.y += 1

	
	if Input.is_action_pressed("ui_rotate_left"):
		# reduce the current rotation by ROTATION_SPEED times the time since the last frame
		rotation_degrees -= ROTATION_SPEED * delta

	if Input.is_action_pressed("ui_rotate_right"):
		rotation_degrees += ROTATION_SPEED * delta

	if velocity.length() > 0:
		velocity = velocity.normalized() * speed
		position += velocity * delta
		

	position.x = clamp(position.x, camera.limit_left, camera.limit_right)
	position.y = clamp(position.y, camera.limit_top, camera.limit_bottom)



func _on_visible_on_screen_notifier_2d_screen_exited():
	print("exited")
	# position = -position
	pass # Replace with function body.
