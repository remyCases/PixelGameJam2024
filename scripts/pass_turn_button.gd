extends Button

const food_consumption = 5

# Called when the node enters the scene tree for the first time.
func _ready():
	self.text = "Pass Turn"
	self.pressed.connect(self._button_pressed)

func _button_pressed():
	if GameManager.food_value < food_consumption:
		GameManager.food_value = 0
	else:
		GameManager.food_value -= food_consumption
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass
