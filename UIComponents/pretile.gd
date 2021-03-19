extends Button
class_name entry

var parent
var parent_ind
var ind

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	parent = get_parent()
	ind = parent.get_children().find(self)
	parent_ind = parent.ind


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_1_pressed():
	print("Pressed %s,%s" % [parent_ind+1, ind+1])
