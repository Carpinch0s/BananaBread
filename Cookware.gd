extends Area2D

signal CookwarePressed(id)

export var Type = "Saucepan"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

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
