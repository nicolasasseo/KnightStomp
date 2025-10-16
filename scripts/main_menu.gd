extends Control






func _on_play_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/game.tscn") # Replace with function body.


func _on_credits_pressed() -> void:
	$CenterContainer/MainButtons.visible = false
	$CenterContainer/CreditsMenu.visible = true # Replace with function body.


func _on_quit_pressed() -> void:
	get_tree().quit() # Replace with function body.


func _on_back_pressed() -> void:
	$CenterContainer/MainButtons.visible = true
	$CenterContainer/CreditsMenu.visible = false # Replace with function body.
