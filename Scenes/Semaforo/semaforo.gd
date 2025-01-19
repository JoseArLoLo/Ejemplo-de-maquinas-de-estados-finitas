extends Node2D

enum State {RED, GREEN, YELLOW}

var current_state: State = State.RED
var timer: float = 0

@export var red_light: Node2D
@export var green_light: Node2D
@export var yellow_light: Node2D

func _process(delta: float) -> void:
	timer += delta
	
	match current_state:
		State.RED:
			red_light.visible = true
			yellow_light.visible = false
			green_light.visible = false
			
			if timer >= 5.:
				current_state = State.GREEN
				timer = 0
		State.GREEN:
			red_light.visible = false
			yellow_light.visible = false
			green_light.visible = true
			
			if timer >= 4.:
				current_state = State.YELLOW
				timer = 0
		State.YELLOW:
			red_light.visible = false
			yellow_light.visible = true
			green_light.visible = false
			
			if timer >= 2.:
				current_state = State.RED
				timer = 0
