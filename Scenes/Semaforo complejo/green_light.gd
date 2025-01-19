extends State

const life_time: float = .5
var time_elapsed: float = 0.0

func enter() -> void:
	owner.change_light(false, false, true)


func update(delta: float) -> void:
	time_elapsed += delta
	if time_elapsed >= life_time:
		time_elapsed = 0
		Transitioned.emit(self, "red")
