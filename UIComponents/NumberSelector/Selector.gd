extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var value = 0


onready var label_result = $UI/PanelContainer/VBoxContainer/Label2
onready var button_result = $UI/PanelContainer/VBoxContainer/Commit
onready var slider = $UI/PanelContainer/VBoxContainer/HBoxContainer/HSlider


# Called when the node enters the scene tree for the first time.
func _ready():
	button_result.disabled = true


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
func reset():
	slider.value = 5
	button_result.disabled = true
	label_result.text = "?"


func _on_HSlider_value_changed(value):
	value = int(value)
	label_result.text = str(value)
	button_result.disabled = false


func _on_Commit_pressed():
	hide()


func _on_Cancel_pressed():
	hide()
