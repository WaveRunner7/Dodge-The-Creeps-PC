extends AnimatedSprite


func _ready():
	if Input.is_action_pressed("ui_select"):
		animation = "pressed"
	else:
		animation = "idle"
