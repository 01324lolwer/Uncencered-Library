extends BaseScene

@onready var camera = $follow_cam

# Called when the node enters the scene tree for the first time.
func _ready():
	super()
	camera.follow_node = player

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

#Haus 1 ist 1x grau dach

#Haus 2 ist 2x grau dach

#Haus 3 ist 3x grau dach

#Haus 4 ist 4x grau dach

#Haus 5 ist 3x grau  1x braun dach

#Haus 6 ist 6x grau dachS

#Haus 7 ist 5x grau 1x braun dach
