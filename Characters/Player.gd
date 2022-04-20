extends KinematicBody2D

var velocity = Vector2(0,0)
const SPEED = 300
const GRAVITY = 30
const JUMPHEIGHT = -800

func _physics_process(delta):
	if Input.is_action_pressed("right"):
		velocity.x = SPEED
	if Input.is_action_pressed("left"):
		velocity.x = -SPEED
		
	velocity.y = velocity.y + GRAVITY
	velocity = move_and_slide(velocity,Vector2.UP)
	
	velocity.x = lerp(velocity.x,0,0.3)
	
	if Input.is_action_just_pressed("jump") and is_on_floor():
		velocity.y = JUMPHEIGHT
