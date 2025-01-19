extends Node2D


@export var red_light: Polygon2D
@export var yellow_light: Polygon2D
@export var green_light: Polygon2D

func change_light(red: bool, yellow: bool, green: bool) -> void:
	red_light.visible = red
	yellow_light.visible = yellow
	green_light.visible = green
