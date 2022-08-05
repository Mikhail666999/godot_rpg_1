extends Spatial


func _process(delta):
	##################### input keyboard
	### exit
	if Input.is_action_just_pressed("game_back"):
		if G.open_inventory_menu == true:
			G.mouse_hidden()
			G.pause(false)
			$"../inventory_specifications".queue_free()
			G.open_inventory_menu = false
			G.mouse_visible()
			G.pause(true)
			G.load_for_obj($"..", "res://assets/ui/menu/pause_menu.tscn")
			G.open_pause_menu = true
		else:
			if G.open_pause_menu == true:
				G.mouse_hidden()
				G.pause(false)
				$"../pause_menu".queue_free()
				G.open_pause_menu = false
				
			elif G.open_pause_menu == false:
				G.mouse_visible()
				G.pause(true)
				G.load_for_obj($"..", "res://assets/ui/menu/pause_menu.tscn")
				G.open_pause_menu = true
		
	if Input.is_action_just_pressed("game_inventory"):
		if G.open_pause_menu == true:
			return
		else:
			if G.open_inventory_menu == true:
				G.mouse_hidden()
				G.pause(false)
				$"../inventory_specifications".queue_free()
				G.open_inventory_menu = false
				
			elif G.open_inventory_menu == false:
				G.mouse_visible()
				G.pause(true)
				open_inventory($"..", "res://assets/ui/inventory/inventory_specifications.tscn")
				G.open_inventory_menu = true
		
	### restart
	if Input.is_action_just_pressed("game_map"):
		G.load_scene(G.game_in_player)

func open_inventory(obj, path):
	G.load_for_obj(obj, path)
