extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	if Global.player:
		add_child(Global.player)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_area_2d_body_entered(body):
	pass

func _on_area_2d_body_exited(body):
	pass
