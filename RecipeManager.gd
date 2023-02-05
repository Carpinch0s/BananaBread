extends Node

var ingredients = {
	"banana" : {
		"name": "Banana",
		"img": "banana.png",
		"expiration" : 2
	},
	
	"flour" : {
		"name": "Flour",
		"img": "flour.png",
		"expiration" : 7
	},
	
	"egg" : {
		"name": "Egg",
		"img": "egg.png",
		"expiration" : 4
	},
	
	"sugar" : {
		"name": "Sugar",
		"img": "sugar.png",
		"expiration" : 8
	},
}

var dishOptions = [
	{
		"name": "Banana Bread",
		"ingredients" : ["Banana", "Flour", "Egg", "Sugar"],
		"cookware": "OvenDish",
		"sprite": load("res://Images/BananaBread.png")
	},

	{
		"name": "Banana Bread",
		"ingredients": ["Banana", "Flour", "Egg"],
		"cookware": "OvenDish",
		"sprite": "temp.png"
	},

	{
		"name": "Bananas Foster",
		"ingredients": ["Banana", "Sugar"],
		"cookware": "Pan",
		"sprite": "temp.png"
	},

	{
		"name": "Bananas Foster",
		"ingredients": ["Banana", "Sugar", "Milk"],
		"cookware": "Pan",
		"sprite": "temp.png"
	}
]

# Called when the node enters the scene tree for the first time.
func _ready():
	randomize()
	
func getFinishedDish(_cookwareType, _ingredients):
	return dishOptions[0]

func generateNewIngredients(count):
	var row = []
	var values = ingredients.values()
	for _i in range(count):
		var index = randi() % values.size()
		row.append(values[index])

	print("row = " + str(row))
	return row
