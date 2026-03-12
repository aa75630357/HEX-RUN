extends Control




func _on_play_button_pressed():
	get_tree().change_scene_to_file("res://Screns/world.tscn")
func _on_quit_button_pressed():
	get_tree().change_scene_to_file("res://Screns/rule.tscn")


func _on_button_pressed() -> void:
	queue_free()
