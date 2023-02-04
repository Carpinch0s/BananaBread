extends Node

var ingredients = [
	"Banana",
	"Flour",
	"Egg",
	"Sugar"
]

var dishOptions = [
	{
		"name": "Banana Bread",
		"ingredients" : ["Banana", "Flour", "Egg", "Sugar"],
		"cookware": "OvenDish",
		"sprite": "temp.png"
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
	pass # Replace with function body.

func generateNewRow():
	var row = []
	for i in range(3):
		var index = randi() % ingredients.size()
		row.append(ingredients[index])

	$UpcomingIngredientPanel.addIngredients(row)
