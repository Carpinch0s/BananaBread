class_name InventoryIngredient
extends Control
# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var ingredientName: String
var age: int
var isSelected: bool

# Called when the node enters the scene tree for the first time.
func _ready():
	print("Ingredient " + ingredientName + " created with age " + str(age))
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func init(newName = "default", newAge = 4):
	ingredientName = newName
	age = newAge
	isSelected = false
	

#Doing stuff functions
func toggleSelected():
	#If the object is selected remove it from the selected group
	if isSelected:
		isSelected = false
		remove_from_group("selected")
	#If the object is not selected add it to the selected group
	else:
		isSelected = true
		add_to_group("selected")
		
func ageIngredient():
	age -= 1
