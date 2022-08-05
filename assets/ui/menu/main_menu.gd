extends Control


func _ready():
	G.mouse_visible()
	$VBoxContainer/start.grab_focus()

func _on_start_pressed():
	$VBoxContainer.hide()
	get_tree().change_scene("res://assets/ui/menu/options_games_game_mode.tscn")
	pass # Replace with function body.


func _on_exit_pressed():
	get_tree().quit()
	pass # Replace with function body.
