extends Area2D


func _ready():
	pass


func _on_Exit_body_entered(body):
	if body.name == "Player":
		var _target = get_tree().change_scene("res://UI/End.tscn")
