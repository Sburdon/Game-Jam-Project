extends KinematicBody2D

var velocity = Vector2.ZERO
var speed = 500.0
var damage = 1

func _ready():
	velocity = Vector2(0,-speed).rotated(rotation)

func _physics_process(_delta):
	velocity = move_and_slide(velocity, Vector2.ZERO)
	position.x = wrapf(position.x, 0, 1024)
	position.y = wrapf(position.y, 0, 600)
	


func _on_Area2D_body_entered(body):
	if body.has_method("damage"):
		body.damage(damage)
	queue_free()



func _on_Timer_timeout():
	queue_free()

