extends StaticBody2D

@onready var timer: Timer = $Timer

var enemy_dying: bool = false
@onready var kill_sound: AudioStreamPlayer2D = $KillSound


func _on_stomp_area_body_entered(body: Node2D) -> void:
	if body.is_in_group("player") and not enemy_dying:
		
		enemy_dying = true
		print("this body is the player")
		kill_sound.play()
		body.velocity.y = -200
		await kill_sound.finished
		queue_free()

func _on_hurtbox_body_entered(body: Node2D) -> void:
	print("something entered...")
	if body.is_in_group("player") and not enemy_dying:
		print("Player should die here")
		body.get_node("CollisionShape2D").queue_free()
		timer.start()

func _on_timer_timeout() -> void:
	get_tree().reload_current_scene() # Replace with function body.
