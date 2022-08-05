extends Control


onready var level_l = $"Panel/HBoxContainer/VBoxContainer/level/level_player"
onready var name_l = $"Panel/HBoxContainer/VBoxContainer/name/name_player"
onready var class_l = $"Panel/HBoxContainer/VBoxContainer/class/class_player"
onready var health_l = $"Panel/HBoxContainer/VBoxContainer/health/health_player"
onready var magic_l = $"Panel/HBoxContainer/VBoxContainer/magic/magic_player"
onready var satiety_l = $"Panel/HBoxContainer/VBoxContainer/satiety/satiety_player"
onready var vigor_l = $"Panel/HBoxContainer/VBoxContainer/vigor/vigor_player"
onready var power_l = $"Panel/HBoxContainer/VBoxContainer/power/power_player"
onready var dexterity_l = $"Panel/HBoxContainer/VBoxContainer/dexterity/dexterity_player"
onready var endurance_l = $"Panel/HBoxContainer/VBoxContainer/endurance/endurance_player"
onready var mind_l = $"Panel/HBoxContainer/VBoxContainer/mind/mind_player"
onready var oratory_l = $"Panel/HBoxContainer/VBoxContainer/oratory/oratory_player"

func _ready():
	pass

func _process(delta):
	level_l.text = str(G.level)
	name_l.text = str(G.name_player)
	class_l.text = str(G.class_player)
	health_l.text = str(G.health)
	magic_l.text = str(G.magic)
	satiety_l.text = str(G.satiety)
	vigor_l.text = str(G.vigor)
	power_l.text = str(G.power)
	dexterity_l.text = str(G.dexterity)
	endurance_l.text = str(G.endurance)
	mind_l.text = str(G.mind)
	oratory_l.text = str(G.oratory)
