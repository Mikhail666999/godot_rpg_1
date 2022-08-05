extends Control


func _ready():
	G.mouse_visible()
	$VBoxContainer/dungeon.grab_focus()



func _on_dungeon_pressed():
	get_tree().change_scene("res://assets/map/dungeon/assets/1/dungeon_1.tscn")


func _on_test_ward_pressed():
	get_tree().change_scene("res://assets/map/level_0/test_ward.tscn")
