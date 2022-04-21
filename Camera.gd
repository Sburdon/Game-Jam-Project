extends Camera2D

func _ready():
	position = Vector2(1400,500)
	
func _process(_delta):
	var player = get_node_or_null("/root/Game/Player_Container/Player")
	if player != null:
		position = player.position
