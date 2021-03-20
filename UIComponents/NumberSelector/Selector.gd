extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var value = 5


onready var label_result = $UI/PanelContainer/VBoxContainer/LineEdit
onready var button_result = $UI/PanelContainer/VBoxContainer/Commit
onready var slider = $UI/PanelContainer/VBoxContainer/HBoxContainer/HSlider



var current = Vector2(-1, -1)
var accepted = false

# Called when the node enters the scene tree for the first time.
func _ready():
	button_result.disabled = true


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if visible:
		if Input.is_action_just_pressed("ui_accept"):
			_on_Commit_pressed()
		if Input.is_action_just_pressed("ui_cancel"):
			_on_Cancel_pressed()
func reset():
	slider.value = 5
	button_result.disabled = true
	label_result.text = ""
	label_result.grab_focus()


func _on_HSlider_value_changed(value):
	var valuez = int(value)
	label_result.text = str(valuez)
	_on_LineEdit_text_changed(str(valuez), true)

signal user_finished

func _on_Commit_pressed():
	print(value)
	accepted = true
	emit_signal("user_finished")
	hide()


func _on_Cancel_pressed():
	current = Vector2(-1, -1)
	accepted = false
	emit_signal("user_finished")
	hide()


func _on_LineEdit_text_changed(new_text, doNotChange=false):
	var i = int(new_text)
	if i != NAN and i != null and (i < 10 and i > 0):
		if not doNotChange:
			slider.value = i
		self.value = i
		button_result.disabled = false
	else:
		button_result.disabled = true
	label_result.caret_position = 100
