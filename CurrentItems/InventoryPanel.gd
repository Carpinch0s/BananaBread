extends Viewport


# Declare member variables here. Examples:
var ingredientList = []

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

#This function removes the first item in the ingredientsList array.
func pushIngredients():

    ingredientList.pop_front()
    #if you want to return this edit it here