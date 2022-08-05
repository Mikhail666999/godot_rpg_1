extends Control


func _ready():
	G.mouse_visible()
	$Panel/HBoxContainer/test.grab_focus()

func _process(delta):
	if Input.is_action_just_pressed("ui_cancel"):
		get_tree().change_scene("res://assets/ui/menu/main_menu.tscn")


func _on_test_pressed():
	get_tree().change_scene("res://assets/ui/menu/options_game_test.tscn")

func _on_story_pressed():
	get_tree().change_scene("res://assets/map/episode_1/1_prolog/city.tscn")
