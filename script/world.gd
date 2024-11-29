extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

#Haus 1 ist 1x grau dach
func _on_transition_haus_1_body_entered(body):
	if  Input.is_action_just_pressed("ui_accept"):
		get_tree().change_scene_to_file("res://scenes/building1.tscn")
	elif Input.is_action_just_pressed("ui_accept"): 
		get_tree().change_scene_to_file("res://scenes/building1.tscn")

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
