extends AnimatedSprite


func _ready():
	pass


func _on_Area2D_body_entered(body):
	if body.name == "Player":
		body.queue_free()
		queue_free()
