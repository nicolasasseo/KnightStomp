extends CanvasLayer



func _input(event: InputEvent) -> void:
	if event.is_action_pressed("pause"):
		Debug.log("Opening pause menu...")
		print("Opening menu")
		get_tree().paused = true
		show()
			


func _on_continue_pressed() -> void:
	Debug.log("continue")
	hide()
	get_tree().paused = false




func _on_quit_pressed() -> void:
	Debug.log("quit")
	get_tree().quit() 


func _on_main_menu_pressed() -> void:
	Debug.log("mainn")
	get_tree().paused = false
	get_tree().change_scene_to_file("res://scenes/main_menu.tscn")


func _on_restart_pressed() -> void:
	get_tree().paused = false
	get_tree().reload_current_scene() # Replace with function body.
