extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	if (Singleton.heroe_seleccionado == 1):
		get_node("Heroe").texture = load("res://super_erick.png")
	elif (Singleton.heroe_seleccionado == 2):
		get_node("Heroe").texture = load("res://super_sofia.png")
	elif (Singleton.heroe_seleccionado == 3):
		get_node("Heroe").texture = load("res://super_felipe.png")
	elif (Singleton.heroe_seleccionado == 4):
		get_node("Heroe").texture = load("res://super_lina.png")
	else:
		get_node("Heroe").texture = load("res://super_erick.png")
	get_node("Heroe").scale = Vector2(2, 2)
	get_node("Label").set_text(Singleton.nombre_heroe_seleccionado)
	get_node("Winner").play()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
