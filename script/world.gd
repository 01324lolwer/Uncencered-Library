extends BaseScene
class_name World

var colision_removed: bool = Global.colision_removed
@onready var camera = $follow_cam
@onready var collision = %NPC1
var position = Vector2(612,150) 
var position2 = Vector2(655,232)

# Called when the node enters the scene tree for the first time.
func _ready():
	super()
	camera.follow_node = player



func _process(delta):
	colision_disable()
	npc_position()
	
func colision_disable():
	if colision_removed:
		print(colision_removed)
		collision.set_collision_layer(0)
		collision.global_position = position
		print("disabled")
		Global.entered = true
	else:
		pass


func npc_position():
	if Global.entered:
		collision.global_position = position
		collision.set_collision_layer(0)
	else:
		collision.global_position = position2

#Haus 1 ist 1x grau dach

#Haus 2 ist 2x grau dach

#Haus 3 ist 3x grau dach

#Haus 4 ist 4x grau dach

#Haus 5 ist 3x grau  1x braun dach

#Haus 6 ist 6x grau dachS

#Haus 7 ist 5x grau 1x braun dach
