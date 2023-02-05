extends Control

var ingredientName
var img
var expiration
var selected = false

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_IngredientCard_gui_input(event):
	if event is InputEventMouseButton:
		if event.pressed and event.button_index == BUTTON_LEFT:
			toggleSelected()

func toggleSelected():
	#If the object is selected remove it from the selected group
	if selected:
		selected = false
		get_node("Image").color = Color(0.257813, 0.240692, 0.223572)
		remove_from_group("selected")
	#If the object is not selected add it to the selected group
	else:
		selected = true
		get_node("Image").color = Color(0.556055, 0.570313, 0.499023)
		add_to_group("selected")
		
func addCardData(ingredientName, img, expiration):
	self.ingredientName = ingredientName
	self.img = img
	self.expiration = expiration
	get_node("Image/VBoxContainer/img").texture = load(img)
	get_node("Image/VBoxContainer/name").text = ingredientName
	get_node("Image/VBoxContainer/expiration").text = str(expiration)
