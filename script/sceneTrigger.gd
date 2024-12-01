class_name SceneTrigger
extends Area2D

@export var connected_scene: String # name of scene to change to



# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_body_entered(body):
	if body is Player:
		Global.change_scene(get_owner(), connected_scene)
	
