extends Viewport

# holds an array of arrays.
# after each turn we remove the top array, we push all other arrays by one, and we generate a new one.

# ABC
# CBA
# A?A
# BC?
var newLine = ["banana","banana","banana"]
var lineOne = ["banana","tomato","milk"]
var lineTwo = ["flour","sugar","mushroom"]
var lineThree = ["banana","meat","egg"]
var lineFour = ["egg","banana","flour"]

func updateUpcomingIngredients ():
	lineFour.clear
	lineFour.append_array(lineThree)
	lineThree.clear
	lineThree.append_array(lineFour)
	lineFour.clear
	lineFour.append_array(newLine)

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
func addIngredients(_ingredients):
	pass
