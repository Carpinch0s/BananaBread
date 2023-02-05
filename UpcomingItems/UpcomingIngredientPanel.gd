extends Viewport

# holds an array of arrays.
# after each turn we remove the top array, we push all other arrays by one, and we generate a new one.

# ABC
# CBA
# A?A
# BC?

var collumns = {1:lineOne,2:lineTwo,3:lineThree,4:lineFour}
var lineOne = ["A","B","C"]
var lineTwo = ["C","B","A"]
var lineThree = ["A","?","A"]
var lineFour = ["B","C","?"]

var posibleIngredients = ["A","B","C","?"]

var rand_value = posibleIngredients[randi() % posibleIngredients.size()]



print ("random Value" + rand_value)
print ("lineOne"+ lineOne)
print ("lineTwo"+ lineTwo)
print ("lineThree"+ lineThree)
print ("lineFour"+ lineFour)

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
