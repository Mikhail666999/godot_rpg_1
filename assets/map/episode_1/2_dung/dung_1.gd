extends Spatial


func _ready():
	G.mouse_hidden() # Скрыть курсор
	G.game_in_player = $"res://assets/map/dungeon/assets/1/dungeon_1.tscn"
	print(G.game_in_player)
