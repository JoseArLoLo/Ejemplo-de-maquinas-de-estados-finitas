extends Node2D

enum TrafficLightState {RED, GREEN, YELLOW}

var current_state: TrafficLightState = TrafficLightState.RED
var timer: float = 0

@export var red_light: Node2D
@export var green_light: Node2D
@export var yellow_light: Node2D

func _process(delta: float) -> void:
	timer += delta
	
	match current_state:
		TrafficLightState.RED:
			red_light.visible = true
			yellow_light.visible = false
			green_light.visible = false
			
			if timer >= 5.:
				current_state = TrafficLightState.GREEN
				timer = 0
		TrafficLightState.GREEN:
			red_light.visible = false
			yellow_light.visible = false
			green_light.visible = true
			
			if timer >= 4.:
				current_state = TrafficLightState.YELLOW
				timer = 0
		TrafficLightState.YELLOW:
			red_light.visible = false
			yellow_light.visible = true
			green_light.visible = false
			
			if timer >= 2.:
				current_state = TrafficLightState.RED
				timer = 0
