extends Node

var player: Player
var scene_dir_path = "res://scenes/"
var last_scene_name: String


var entered:bool = false
var counter_Massages_Read = 5
var counter_Interaction = 0
var colision_removed: bool = false
var info1_read = false
var info2_read = false
var info3_read = false
var info4_read = false
var info5_read = false
var info6_read = false
var info7_read = false
var info8_read = false
var info9_read = false
var Massages_All = 9
var massages_true = 0

func change_scene(from, to_scene_name: String) -> void:
	last_scene_name = from.name
	player = from.player
	player.get_parent().remove_child(player)
	
	var full_path = scene_dir_path + to_scene_name + ".tscn"
	from.get_tree().call_deferred("change_scene_to_file", full_path)


@warning_ignore("unused_parameter")
func _process(delta):
	pass
	

# Called when the node enters the scene tree for the first time.
func _ready():
	pass
# Called every frame. 'delta' is the elapsed time since the previous frame.
