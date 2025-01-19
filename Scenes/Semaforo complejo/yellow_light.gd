extends State

const life_time: float = .5
var time_elapsed: float = 0.0

func enter() -> void:
	owner.change_light(false, true, false)


func update(delta: float) -> void:
	time_elapsed += delta
	if time_elapsed >= life_time:
		time_elapsed = 0
		Transitioned.emit(self, "green")
