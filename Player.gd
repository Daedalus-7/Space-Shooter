extends CharacterBody2D


var speed = 9
var max_speed = 1000
var rotate_speed = 0.09

func _physics_process(delta):
	if Input.is_action_pressed("left"):
		rotation = rotation - rotate_speed
	if Input.is_action_pressed("right"):
		rotation = rotation + rotate_speed
	if Input.is_action_pressed("forward"):
		velocity = velocity + Vector2(0,-speed).rotated(rotation)
	pass 
	position.x = wrapf(position.x,0,1152)
	position.y = wrapf(position.y,0,648)
	velocity = velocity.normalized() * clamp(velocity.length(),0, max_speed)
	move_and_slide()
