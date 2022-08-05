extends Control

func _ready():
	G.mouse_visible() # Открыть курсор
	$"Panel/VBoxContainer/resume".grab_focus()

func _process(delta):
	if Input.is_action_just_pressed("ui_cancel"):
		G.mouse_hidden()
		G.pause(false)
		G.open_pause_menu = false
		queue_free()

func _on_resume_pressed():
	G.mouse_hidden()
	G.pause(false)
	G.open_pause_menu = false
	queue_free()


func _on_restart_pressed():
	G.pause(false)
	G.open_pause_menu = false
	get_tree().change_scene(G.game_in_player)


func _on_exit_pressed():
	get_tree().quit()
