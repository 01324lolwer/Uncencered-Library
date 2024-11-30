extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

#Haus 1 ist 1x grau dach
func _on_transition_haus_1_body_entered(body):
	if  Input.is_action_just_pressed("ui_accept"):
		print("Enter Building...")
		Global.switch_to_building1(Global.building1, $PLayer)
		print("Entered")
	elif Input.is_action_just_pressed("ui_accept"): 
		print("Enter Building...")
		Global.switch_to_building1(Global.building1, $Player)
		print("Entered")

func _on_transition_haus_1_body_exited(body):
	pass


#Haus 2 ist 2x grau dach
func _on_transition_haus_2_body_entered(body):
	pass # Replace with function body.

func _on_transition_haus_2_body_exited(body):
	pass # Replace with function body.


#Haus 3 ist 3x grau dach
func _on_transition_haus_3_body_entered(body):
	pass # Replace with function body.

func _on_transition_haus_3_body_exited(body):
	pass # Replace with function body.


#Haus 4 ist 4x grau dach
func _on_transition_haus_4_body_entered(body):
	pass # Replace with function body.

func _on_transition_haus_4_body_exited(body):
	pass # Replace with function body.


#Haus 5 ist 3x grau  1x braun dach
func _on_transition_haus_5_body_entered(body):
	pass # Replace with function body.
	
func _on_transition_haus_5_body_exited(body):
	pass # Replace with function body.


#Haus 6 ist 6x grau dach
func _on_transition_haus_6_body_entered(body):
	pass # Replace with function body.

func _on_transition_haus_6_body_exited(body):
	pass # Replace with function body.


#Haus 7 ist 5x grau 1x braun dach
func _on_transition_haus_7_body_entered(body):
	pass # Replace with function body.

func _on_transition_haus_7_body_exited(body):
	pass # Replace with function body.
