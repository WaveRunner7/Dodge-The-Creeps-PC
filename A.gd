extends AnimatedSprite
export var control_scheme = "Keyoard"

func _ready():
	Input.connect("joy_connection_changed", self, "_on_joy_connection_changed")
	
	
func _on_joy_connection_changed(device_id, connected):
	if connected:
		control_scheme = "Controller"
		print(Input.get_joy_name(device_id))
		print(control_scheme)
	else:
		control_scheme = "Keyboard"
		print(control_scheme)
		
	if control_scheme == ("Controller"):
		animation = "A"
	else:
		animation = "Space"


