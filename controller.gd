extends Node



signal zoom_changed(amount: float)
signal panning(dx: float, dy: float)


var last_mouse_position = Vector2.ZERO

func _ready():
	last_mouse_position = get_viewport().get_mouse_position()



func _input(event):
	if event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_WHEEL_UP and event.pressed:
			emit_signal("zoom_changed", 1)
		elif event.button_index == MOUSE_BUTTON_WHEEL_DOWN and event.pressed:
			emit_signal("zoom_changed", -1)
		elif Input.is_mouse_button_pressed(MOUSE_BUTTON_MIDDLE):
			last_mouse_position = get_viewport().get_mouse_position()



func _process(delta):
	if Input.is_mouse_button_pressed(MOUSE_BUTTON_MIDDLE):
		var current_position = get_viewport().get_mouse_position()
		var movement = current_position - last_mouse_position
		if movement != Vector2.ZERO:
			print("Mouse moved with middle button held:", movement)
		emit_signal("panning", movement.x, movement.y)
		last_mouse_position = current_position
