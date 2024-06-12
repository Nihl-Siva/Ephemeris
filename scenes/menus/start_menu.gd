extends Control

func _ready() -> void:
	# Wait a frame so the children are correctly positioned and focus the first valid node
	await get_tree().process_frame
	var control = find_next_valid_focus()
	if control:
		# grab the focus
		control.grab_focus.call_deferred()

func _enter_tree() -> void:
	# On enter tree we connect to SceneTree.node_added signal to find all the buttons that will be added
	# and connect to their signals
	get_tree().node_added.connect(func(node:Node):
		if node is Button:
			# grab focus when mouse entered so we can play the animation on mouse hover
			node.mouse_entered.connect(node.grab_focus)
	)

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
	#pass


func _on_play_button_pressed():
	get_tree().change_scene_to_file("res://scenes/overworld.tscn")


func _on_quit_button_pressed():
	get_tree().quit()


func _on_options_button_pressed():
	get_tree().change_scene_to_file("res://scenes/menus/options_menu.tscn")


