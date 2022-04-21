extends KinematicBody2D

export var gravity = 10
export var speed = 40

var velocity = Vector2()

var direction = 1


func _physics_process(delta):
	velocity.x = speed * direction
	
	if direction == 1:
		$AnimatedSprite.flip_h = false
	else:
		$AnimatedSprite.flip_h = true
	
	$AnimatedSprite.play("Walk")
	
	velocity.y += gravity
	
	velocity = move_and_slide(velocity, Vector2(0, -1))
	
	
	if is_on_wall():
		direction = direction * -1
		$RayCast2D.position.x *= -1
		
	if $RayCast2D.is_colliding() == false:
		direction = direction * 1
		$RayCast2D.position.x = -1
