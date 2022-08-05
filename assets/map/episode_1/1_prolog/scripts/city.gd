extends Spatial


func _ready():
	G.mouse_hidden() # Скрыть курсор
	G.game_in_player = "res://assets/map/episode_1/1_prolog/city.tscn"
	print(G.game_in_player)

func _on_triger_1_body_entered(body):
	get_tree().change_scene("res://assets/map/episode_1/2_dung/dung_1.tscn")
	pass
