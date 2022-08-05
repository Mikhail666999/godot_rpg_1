extends Node

var open_pause_menu = false
var open_inventory_menu = false

var game_in_player = ""

###########################
var class_player = "none" # Класс
var name_player = "Yargus"
var level = 1 # Левел
var health = 100 # Здоровье
var magic = 20 # Очки магии
var satiety = 100 # Сытость
var vigor = 100 # Бодрость

var attack = 10 # Атака
var defence = 10 # Защита

var regeneration = 4 # Регенирация

var power = 10 # Сила
var dexterity = 10 # Ловкость
var endurance = 10 # Выносливость
var mind = 10 # Интелект
var oratory = 10 # Красноречие
var luck = 70 # Удача
###########################


func _process(delta):
	pass
	
func pause(s=true):
	get_tree().paused = bool(s)
	return s

func load_scene(name_scene):
	get_tree().change_scene(name_scene)

func load_for_obj(obj, name_scene):
	var n = load(name_scene).instance()
	obj.add_child(n)

func mouse_hidden():
	Input.set_mouse_mode(Input.MOUSE_MODE_HIDDEN)

func mouse_visible():
	Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
