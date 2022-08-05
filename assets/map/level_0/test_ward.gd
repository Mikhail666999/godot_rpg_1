extends Spatial


func _ready():
	G.mouse_hidden() # Скрыть курсор
	G.game_in_player = "res://assets/map/level_0/test_ward.tscn"
	print(G.game_in_player)
