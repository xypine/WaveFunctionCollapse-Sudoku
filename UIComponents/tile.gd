extends Button
class_name Tile

var parent
var parent_ind
var ind

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var supervisor
var pos = Vector2(-1, -1)
var possible =  [1, 2, 3,
				 4, 5, 6,
				 7, 8, 9 ]

func update_possible_indicators():
	var txt = ""
	if len(possible) > 1:
		txt = "|%s|" % len(possible)
	else:
		txt = possible[0]
	text = str(txt)
func reset():
	text = ""
	possible =  [1, 2, 3, 4, 5, 6, 7, 8, 9]
# Called when the node enters the scene tree for the first time.
func _ready():
	pass
func lateReady():
	parent = get_parent()
	supervisor = parent.parent.get_parent()
	ind = parent.get_children().find(self)
	parent_ind = parent.ind
	pos = Vector2(parent_ind, ind)
	supervisor.addTile(self)
	
var lateRDone = false
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if not lateRDone:
		lateReady()
		lateRDone = true


func _on_1_pressed():
	print("Pressed %s,%s" % [parent_ind+1, ind+1])
	supervisor.askValue(self)
