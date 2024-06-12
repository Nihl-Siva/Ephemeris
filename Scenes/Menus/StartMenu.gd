extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	$VBoxContainer/PlayButton.grab_focus()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_play_button_pressed():
	get_tree().change_scene_to_file("res://TutorialGame/scenes/game.tscn")


func _on_quit_button_pressed():
	get_tree().quit()


func _on_options_button_pressed():
	get_tree().change_scene_to_file("res://Scenes/Menus/OptionsMenu.tscn")
