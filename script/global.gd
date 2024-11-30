extends Node

@onready var player = get_tree().get_first_node_in_group("Player")
var saved_position: Vector2

var world: Node = null
var building: Node = null
var current_world: Node = null

func load_worlds():
	world = preload("res://scenes/world.tscn").instantiate()
	building = preload("res://scenes/building1.tscn").instantiate()
	add_child(world)
	add_child(building)
	building.hide()


func switch_to_world(world: Node, player: Node):
	if current_world:
		current_world.hide()
	world.show()
	current_world = world
	player.position = saved_position

# Called when the node enters the scene tree for the first time.
func _ready():
	save_player_position(player)

func save_player_position(player: CharacterBody2D):
	saved_position = player.position
	print("Startposition gespeichert:", saved_position)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func restore_player_position(player: CharacterBody2D):
	player.position = saved_position
	print("Player wurde zurückgesetzt auf:", saved_position)
	
func respawn_player():
	restore_player_position(player)
