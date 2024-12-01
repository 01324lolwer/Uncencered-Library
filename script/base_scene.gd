class_name BaseScene
extends Node

@onready var player: Player = $Player
@onready var entrance_markers: Node2D = $EntranceMarkers

func position_playeer() -> void:
	var last_scene = Global.last_scene_name
	if last_scene.is_empty():
		last_scene = "any"
		
	for entrance in entrance_markers.get_children():
		if entrance is Marker2D and entrance.name == "any" or entrance.name == last_scene:
			player.global_position = entrance.global_position

# Called when the node enters the scene tree for the first time.
func _ready():
	if Global.player:
		if player:
			player.queue_free()
			
		player = Global.player
		add_child(player)
		
	position_playeer()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
