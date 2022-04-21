extends Node2D

onready var Ink = load("res://Levels/Ink.tscn")
onready var Lava = load("res://Levels/Lava.tscn")

func _ready():
	pass




func _physics_process(_delta):
	if not has_node ("Ink"):
		var ink = Ink.instance()
		add_child(ink)
		ink.name = "Ink"
	if not has_node ("Lava"):
		var lava = Lava.instance()
		add_child(lava)
		lava.name = "Lava"
