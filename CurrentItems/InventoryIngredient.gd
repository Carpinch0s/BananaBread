extends Area2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var ingredientName = "Ingredient"
var age = 0
var isSelected = false

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

#Data functions
func setName(newName):
	ingredientName = newName

func setAge(newAge):
	age = newAge
	
func getName():
	return ingredientName
	
func getAge():
	return age
	
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
	
func removeIngredient():
	#todo: add ingredient
	queue_free()

