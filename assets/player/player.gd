extends KinematicBody

########################################## Variables
var health = 100 # Здоровье
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

##################### vector
var direction = Vector3()
var velocity = Vector3()
var fall = Vector3() 

##################### gamepad
var ver_l = 0;
var hor_l = 0;

var ver_r = 0;
var hor_r = 0;

##################### var
var sens = 4;
var sens_mouse = 0.002;
var speed = 10;
var jump = 4;
var jetpack = 5;
var gravity = 12;
var jump_options = 0 # 0 = jump; 1 = jetpack

##################### obj
onready var head = $head
onready var health_pb = $ui/health_pb

########################################## Functions
func _ready():
	gravity /= 9;
	Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)

func _process(delta):
	hor_l = Input.get_action_strength("game_move_right") - Input.get_action_strength("game_move_left")
	ver_l = Input.get_action_strength("game_move_up") - Input.get_action_strength("game_move_down")
	
	hor_r = Input.get_action_strength("game_camera_right") - Input.get_action_strength("game_camera_left")
	ver_r = Input.get_action_strength("game_camera_up") - Input.get_action_strength("game_camera_down")
	
	health_pb.value = health

func _input(event):
	if event is InputEventMouseMotion:
		rotation.y -= event.relative.x * sens_mouse
		head.rotation.x = clamp(head.rotation.x - event.relative.y * sens_mouse, deg2rad(-90), deg2rad(90))


func _physics_process(delta):
	##################### camera
	rotate_y(deg2rad(hor_r * sens * -1)) 
	head.rotate_x(deg2rad(ver_r * sens)) 
	head.rotation.x = clamp(head.rotation.x, deg2rad(-90), deg2rad(90))
	
	##################### input move
	direction = Vector3()
	move_and_slide(fall, Vector3.UP)

	if not is_on_floor():
		fall.y -= gravity

	if ver_l < 0:
		direction -= transform.basis.z * ver_l
	elif ver_l > 0:
		direction += transform.basis.z * ver_l * -1
		
	if hor_l < 0:
		direction -= transform.basis.x * hor_l * -1
	elif hor_l > 0:
		direction += transform.basis.x * hor_l
	
#	jump()
	
	velocity = velocity.linear_interpolate(direction * speed, 10 * delta) 
	velocity = move_and_slide(velocity, Vector3.UP) 

func jump():
	match jump_options:
		0:
			if Input.is_action_just_pressed("game_move_jump") and is_on_floor():
				fall.y = jump
		1:
			if Input.is_action_pressed("game_move_jump"):
				fall.y = jetpack
	#	if Input.is_action_pressed("key_a"):
	#		fall.y = jump
