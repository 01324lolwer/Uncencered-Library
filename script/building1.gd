extends Node2D



# Called when the node enters the scene tree for the first time.
func _ready():
	add_to_group("World")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_area_2d_body_entered(body):
	if Input.is_action_just_pressed("ui_accept"):
		get_tree().change_scene_to_file("res://scenes/world.tscn")
		

func _on_area_2d_body_exited(body):
	pass
