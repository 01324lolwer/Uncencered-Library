extends Area2D


@export var dialogue_resurce: DialogueResource
@export var dialogue_start: String = "start"

func action() -> void:
	DialogueManager.show_example_dialogue_balloon(dialogue_resurce, dialogue_start)
	

