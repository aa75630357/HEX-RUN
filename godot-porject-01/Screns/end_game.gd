extends Control

func _ready():
	visible = false



func _on_replay_pressed() -> void:
	get_tree().change_scene_to_file("res://Screns/world.tscn")
	Score.reset_score()
	EndGame.visible = false
func _on_back_menu_pressed() -> void:
	get_tree().change_scene_to_file("res://Screns/user_ui.tscn")
	EndGame.visible = false	
	Score.reset_score()
