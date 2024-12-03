extends BaseScene

@onready var camera = $follow_cam
@onready var npc1 = $NPC1
# Called when the node enters the scene tree for the first time.
func _ready():
	super()
	camera.follow_node = player


# Erstelle eine Instanz der Klasse VariableDialogue
var dialogue_instance = VariableDialogue.new()

# Rufe die Funktion auf der Instanz auf
var colision = dialogue_instance.colision_removed

func remove_collision_layers(character_body: CharacterBody2D) -> void:
	if character_body:
		# Setzt die Kollisionsschichten auf 0 (keine Schicht aktiv)
		character_body.set_collision_layer(0)
		print("Collision layers entfernt für:", character_body.name)

func _process(delta):
	if colision:
		remove_collision_layers(npc1)


#Haus 1 ist 1x grau dach

#Haus 2 ist 2x grau dach

#Haus 3 ist 3x grau dach

#Haus 4 ist 4x grau dach

#Haus 5 ist 3x grau  1x braun dach

#Haus 6 ist 6x grau dachS

#Haus 7 ist 5x grau 1x braun dach
