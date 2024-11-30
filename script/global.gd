extends Node

@onready var player = get_tree().get_first_node_in_group("Player")

var world: Node = null
var building1: Node = null
var current_world: Node = null

func load_worlds():
	world = preload("res://scenes/world.tscn").instantiate()
	building1 = preload("res://scenes/building1.tscn").instantiate()
	add_child(world)
	add_child(building1)
	building1.hide()
	world.hide()

func switch_to_world(world: Node, player: Node):
	world.show()
	current_world = world
	player.global_position = Vector2(64, 292)

func switch_to_building1(building1: Node, player: Node):
	world.hide()
	building1.show()
	player.global_position = Vector2(105, 105)

# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
