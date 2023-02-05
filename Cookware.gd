extends Area2D

<<<<<<< HEAD
signal CookwarePressed(id)

export var Type = "Saucepan"

=======
>>>>>>> 81503239a670b9339efd9e75c849d3bda9c9a155
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

<<<<<<< HEAD
func _on_ColorRect_mouse_entered():
	print("Enter")


func _on_ColorRect_mouse_exited():
	print("Leave")


func _on_ColorRect_gui_input(event):
	if event is InputEventMouseButton:
		if event.pressed and event.button_index == BUTTON_LEFT:
			print("Click")
			emit_signal('CookwarePressed', Type)


func _on_Area2D_mouse_entered():
	print("Enter Area2D")
	pass # Replace with function body.
=======
>>>>>>> 81503239a670b9339efd9e75c849d3bda9c9a155
