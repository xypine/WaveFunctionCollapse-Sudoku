
extends Panel


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var parent
var grandparent_ind
var ind

# Called when the node enters the scene tree for the first time.
func _ready():
	parent = get_parent()
	ind = parent.get_children().find(self) + (parent.ind * 3)
	for i in get_children():
		i.parent_ind = ind


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
#	$N.text = get_parent().name + "/" + name
	pass
