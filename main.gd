extends Sprite


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	get_node("Button").connect("pressed", self, "_on_button_pressed")


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _on_button_pressed():
	#nombre = get_node("LineEdit").get_text()
	#edad = get_node("LineEdit").get_text()
	Singleton.nombre = get_node("LineEdit").get_text()
	Singleton.edad = get_node("LineEdit2").get_text()
	get_tree().change_scene("res://seleccion_heroe.tscn")
	pass
