extends HBoxContainer


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

export(int) var ind = 0
var supervisor

# Called when the node enters the scene tree for the first time.
func _ready():
	supervisor = get_parent()


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
