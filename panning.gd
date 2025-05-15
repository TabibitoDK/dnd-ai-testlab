extends Camera2D

# Minimum and maximum zoom levels
const MIN_ZOOM = 0.08
const MAX_ZOOM = 1
const ZOOM_SPEED = 0.1

const MIN_PAN = -10
const MAX_PAN = 10
const PAN_SPEED = 10

var scale_factor = 1.0
var mouse_last_position = Vector2(0,0)


func _ready():
	zoom = Vector2(0.1, 0.1)  # Default zoom



func _zoom_camera(amount):
	var new_zoom = zoom * (1.0 + amount*ZOOM_SPEED)
	new_zoom.x = clamp(new_zoom.x, MIN_ZOOM, MAX_ZOOM)
	new_zoom.y = clamp(new_zoom.y, MIN_ZOOM, MAX_ZOOM)
	zoom = new_zoom
	scale_factor = clamp(zoom.x, 0.1, 0.4)


func _moveCam(dx, dy):
	position.x = position.x - dx * scale_factor * PAN_SPEED
	position.y = position.y - dy * scale_factor * PAN_SPEED
