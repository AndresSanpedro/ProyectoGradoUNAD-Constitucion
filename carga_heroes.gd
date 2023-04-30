extends Node


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var button1
var button2
var button3
var button4
var heroe1
var heroe2
var heroe3
var heroe4

# Called when the node enters the scene tree for the first time.
func _ready():
	button1 = get_node("TextureButton")
	button1.texture_normal = load("res://super_erick.png")
	button1.texture_hover = load("res://super_erick_hover.png")
	button2 = get_node("TextureButton2")
	button2.texture_normal = load("res://super_sofia.png")
	button2.texture_hover = load("res://super_sofia_hover.png")
	button3 = get_node("TextureButton3")
	button3.texture_normal = load("res://super_felipe.png")
	button3.texture_hover = load("res://super_felipe_hover.png")
	button4 = get_node("TextureButton4")
	button4.texture_normal = load("res://super_lina.png")
	button4.texture_hover = load("res://super_lina_hover.png")	
	get_node("TextureButton").connect("pressed", self, "_on_heroe1_pressed")
	get_node("TextureButton2").connect("pressed", self, "_on_heroe2_pressed")
	get_node("TextureButton3").connect("pressed", self, "_on_heroe3_pressed")
	get_node("TextureButton4").connect("pressed", self, "_on_hero4_pressed")
	var nombre_escrito = Singleton.nombre
	heroe1 = "SUPER_" + nombre_escrito
	heroe2 = "MEGA_" + nombre_escrito
	heroe3 = "DUPER_" + nombre_escrito
	heroe4 = "EXTRA_" + nombre_escrito
	get_node("TextureButton/Label").set_text(heroe1)
	get_node("TextureButton2/Label2").set_text(heroe2)
	get_node("TextureButton3/Label3").set_text(heroe3)
	get_node("TextureButton4/Label4").set_text(heroe4)


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
func _on_heroe1_pressed():
	Singleton.heroe_seleccionado = 1
	Singleton.nombre_heroe_seleccionado = heroe1
	get_tree().change_scene("res://mundo_uno_hada.tscn")
	pass
	
func _on_heroe2_pressed():
	Singleton.heroe_seleccionado = 2
	Singleton.nombre_heroe_seleccionado = heroe2
	get_tree().change_scene("res://mundo_uno_hada.tscn")
	pass
	
func _on_heroe3_pressed():
	Singleton.heroe_seleccionado = 3
	Singleton.nombre_heroe_seleccionado = heroe3
	get_tree().change_scene("res://mundo_uno_hada.tscn")
	pass
	
func _on_hero4_pressed():
	Singleton.heroe_seleccionado = 4
	Singleton.nombre_heroe_seleccionado = heroe4
	get_tree().change_scene("res://mundo_uno_hada.tscn")
	pass
