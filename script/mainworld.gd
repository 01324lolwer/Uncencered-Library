extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	Global.load_worlds()
	Global.switch_to_world(Global.world,Global.player)
	



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
