extends Sprite


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	var info1 = get_node("TextEdit")
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
	get_node("Label").set_text(Singleton.nombre_heroe_seleccionado)
	get_node("BtnIniciar").connect("pressed", self, "_on_begin_button_pressed")
	get_node("Respuesta1").connect("pressed", self, "_on_begin_respuesta1_pressed")
	get_node("Respuesta2").connect("pressed", self, "_on_begin_respuesta2_pressed")
	get_node("Respuesta3").connect("pressed", self, "_on_begin_respuesta3_pressed")
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
func _on_begin_button_pressed():
	get_node("TextEdit").visible = false
	get_node("TextEdit2").visible = false
	get_node("TextEdit3").visible = false
	get_node("Hada_nana").visible = false
	get_node("Hada").visible = true
	get_node("BtnIniciar").visible = false
	get_node("Demonio").texture = load("res://demonio.png")
	get_node("Pregunta").visible = true
	get_node("Respuesta1").visible = true
	get_node("Respuesta2").visible = true
	get_node("Respuesta3").visible = true
	get_node("Label").visible = true
	get_node("Label2").visible = true
	get_node("VidaHeroe").visible = true
	get_node("VidaDemonio").visible = true
	get_node("Demonio").visible = true	
	pass
	
func _on_begin_respuesta1_pressed():
	get_node("VidaHeroe").value = 0.0;
	get_node("PlayerLose").play()
	yield(get_tree().create_timer(3.0), "timeout")	
	get_node("TextEdit").visible = true
	get_node("TextEdit2").visible = true
	get_node("TextEdit3").visible = true
	get_node("Hada_nana").visible = true
	get_node("BtnIniciar").visible = true
	get_node("VidaHeroe").visible = false
	get_node("VidaDemonio").visible = false
	get_node("VidaHeroe").value = 100.0
	get_node("VidaDemonio").value = 100.0
	get_node("Pregunta").visible = false
	get_node("Respuesta1").visible = false
	get_node("Respuesta2").visible = false
	get_node("Respuesta3").visible = false
	get_node("Demonio").visible = false
	get_node("Label").visible = false
	get_node("Label2").visible = false
	pass
	
func _on_begin_respuesta2_pressed():
	get_node("VidaDemonio").value = 0.0;
	get_node("Pregunta").disabled = true
	get_node("Respuesta1").disabled = true
	get_node("Respuesta2").disabled = true
	get_node("Respuesta3").disabled = true
	get_node("PlayerWin").play()
	yield(get_tree().create_timer(3.0), "timeout")
	get_tree().change_scene("res://mundo_dos_hada.tscn")
	pass
	
func _on_begin_respuesta3_pressed():
	get_node("VidaHeroe").value = 0.0;
	get_node("PlayerLose").play()
	yield(get_tree().create_timer(3.0), "timeout")
	get_node("Pregunta1").disabled = true
	get_node("Respuesta1").disabled = true
	get_node("Respuesta2").disabled = true
	get_node("Respuesta3").disabled = true
	get_node("TextEdit").visible = true
	get_node("TextEdit2").visible = true
	get_node("TextEdit3").visible = true
	get_node("Hada_nana").visible = true
	get_node("BtnIniciar").visible = true
	get_node("VidaHeroe").visible = false;
	get_node("VidaDemonio").visible = false
	get_node("VidaHeroe").value = 100.0
	get_node("VidaDemonio").value = 100.0
	get_node("Pregunta").visible = false
	get_node("Respuesta1").visible = false
	get_node("Respuesta2").visible = false
	get_node("Respuesta3").visible = false
	get_node("Demonio").visible = false
	get_node("Label").visible = false
	get_node("Label2").visible = false
	pass
