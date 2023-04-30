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
	get_node("Respuesta11").connect("pressed", self, "_on_begin_respuesta11_pressed")
	get_node("Respuesta12").connect("pressed", self, "_on_begin_respuesta12_pressed")
	get_node("Respuesta13").connect("pressed", self, "_on_begin_respuesta13_pressed")
	get_node("Respuesta14").connect("pressed", self, "_on_begin_respuesta14_pressed")
	get_node("Respuesta21").connect("pressed", self, "_on_begin_respuesta21_pressed")
	get_node("Respuesta22").connect("pressed", self, "_on_begin_respuesta22_pressed")
	get_node("Respuesta23").connect("pressed", self, "_on_begin_respuesta23_pressed")
	get_node("Respuesta24").connect("pressed", self, "_on_begin_respuesta24_pressed")
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
func _on_begin_button_pressed():
	get_node("TextEdit").visible = false
	get_node("TextEdit2").visible = false
	get_node("TextEdit3").visible = false
	get_node("hada_nana").visible = false
	# get_node("Hada").visible = true
	get_node("BtnIniciar").visible = false
	get_node("Demonio").texture = load("res://demonio.png")
	get_node("Pregunta1").visible = true
	get_node("Respuesta11").visible = true
	get_node("Respuesta12").visible = true
	get_node("Respuesta13").visible = true
	get_node("Respuesta14").visible = true
	get_node("Pregunta2").visible = true
	get_node("Respuesta21").visible = true
	get_node("Respuesta22").visible = true
	get_node("Respuesta23").visible = true
	get_node("Respuesta24").visible = true
	get_node("Respuesta11").disabled = false
	get_node("Respuesta12").disabled = false
	get_node("Respuesta13").disabled = false
	get_node("Respuesta14").disabled = false
	get_node("Respuesta21").disabled = false
	get_node("Respuesta22").disabled = false
	get_node("Respuesta23").disabled = false
	get_node("Respuesta24").disabled = false
	get_node("Label").visible = true
	get_node("Label2").visible = true
	get_node("VidaHeroe").visible = true
	get_node("VidaDemonio").visible = true
	get_node("Demonio").visible = true	
	pass
	
func _on_begin_respuesta11_pressed():
	get_node("VidaDemonio").value = (get_node("VidaDemonio").value - 50.00);
	get_node("Pregunta1").disabled = true
	get_node("Respuesta11").disabled = true
	get_node("Respuesta12").disabled = true
	get_node("Respuesta13").disabled = true
	get_node("Respuesta14").disabled = true
	if (get_node("VidaHeroe").value <= 0.0):
		get_node("PlayerLose").play()
		yield(get_tree().create_timer(3.0), "timeout")
		get_node("TextEdit").visible = true
		get_node("TextEdit2").visible = true
		get_node("TextEdit3").visible = true
		get_node("hada_nana").visible = true
		get_node("BtnIniciar").visible = true
		get_node("VidaHeroe").visible = false;
		get_node("VidaDemonio").visible = false
		get_node("VidaHeroe").value = 100.0
		get_node("VidaDemonio").value = 100.0
		get_node("Pregunta1").visible = false
		get_node("Respuesta11").visible = false
		get_node("Respuesta12").visible = false
		get_node("Respuesta13").visible = false
		get_node("Respuesta14").visible = false
		get_node("Pregunta2").visible = false
		get_node("Respuesta21").visible = false
		get_node("Respuesta22").visible = false
		get_node("Respuesta23").visible = false
		get_node("Respuesta24").visible = false
		get_node("Demonio").visible = false
		get_node("Label").visible = false
		get_node("Label2").visible = false
	elif (get_node("VidaDemonio").value <= 0.0):
		get_node("PlayerWin").play()
		yield(get_tree().create_timer(3.0), "timeout")
		get_tree().change_scene("res://mundo_campeon_constitucion.tscn")
	pass
	
func _on_begin_respuesta12_pressed():
	get_node("VidaHeroe").value = (get_node("VidaHeroe").value - 50.00);
	get_node("Pregunta1").disabled = true
	get_node("Respuesta11").disabled = true
	get_node("Respuesta12").disabled = true
	get_node("Respuesta13").disabled = true
	get_node("Respuesta14").disabled = true
	if (get_node("VidaHeroe").value <= 0.0):
		get_node("PlayerLose").play()
		yield(get_tree().create_timer(3.0), "timeout")
		get_node("TextEdit").visible = true
		get_node("TextEdit2").visible = true
		get_node("TextEdit3").visible = true
		get_node("hada_nana").visible = true
		get_node("BtnIniciar").visible = true
		get_node("VidaHeroe").visible = false;
		get_node("VidaDemonio").visible = false
		get_node("VidaHeroe").value = 100.0
		get_node("VidaDemonio").value = 100.0
		get_node("Pregunta1").visible = false
		get_node("Respuesta11").visible = false
		get_node("Respuesta12").visible = false
		get_node("Respuesta13").visible = false
		get_node("Respuesta14").visible = false
		get_node("Pregunta2").visible = false
		get_node("Respuesta21").visible = false
		get_node("Respuesta22").visible = false
		get_node("Respuesta23").visible = false
		get_node("Respuesta24").visible = false
		get_node("Demonio").visible = false
		get_node("Label").visible = false
		get_node("Label2").visible = false
	elif (get_node("VidaDemonio").value <= 0.0):
		get_node("PlayerWin").play()
		yield(get_tree().create_timer(3.0), "timeout")
		get_tree().change_scene("res://mundo_tres_hada.tscn")		
	pass
	
func _on_begin_respuesta13_pressed():
	get_node("VidaHeroe").value = (get_node("VidaHeroe").value - 50.00);
	get_node("Pregunta1").disabled = true
	get_node("Respuesta11").disabled = true
	get_node("Respuesta12").disabled = true
	get_node("Respuesta13").disabled = true
	get_node("Respuesta14").disabled = true
	if (get_node("VidaHeroe").value <= 0.0):
		get_node("PlayerLose").play()
		yield(get_tree().create_timer(3.0), "timeout")
		get_node("TextEdit").visible = true
		get_node("TextEdit2").visible = true
		get_node("TextEdit3").visible = true
		get_node("hada_nana").visible = true
		get_node("BtnIniciar").visible = true
		get_node("VidaHeroe").visible = false;
		get_node("VidaDemonio").visible = false
		get_node("VidaHeroe").value = 100.0
		get_node("VidaDemonio").value = 100.0
		get_node("Pregunta1").visible = false
		get_node("Respuesta11").visible = false
		get_node("Respuesta12").visible = false
		get_node("Respuesta13").visible = false
		get_node("Respuesta14").visible = false
		get_node("Pregunta2").visible = false
		get_node("Respuesta21").visible = false
		get_node("Respuesta22").visible = false
		get_node("Respuesta23").visible = false
		get_node("Respuesta24").visible = false
		get_node("Demonio").visible = false
		get_node("Label").visible = false
		get_node("Label2").visible = false
	elif (get_node("VidaDemonio").value <= 0.0):
		get_node("PlayerWin").play()
		yield(get_tree().create_timer(3.0), "timeout")
		get_tree().change_scene("res://mundo_tres_hada.tscn")		
	pass
	
func _on_begin_respuesta14_pressed():
	get_node("VidaHeroe").value = (get_node("VidaHeroe").value - 50.00);
	get_node("Pregunta1").disabled = true
	get_node("Respuesta11").disabled = true
	get_node("Respuesta12").disabled = true
	get_node("Respuesta13").disabled = true
	get_node("Respuesta14").disabled = true
	if (get_node("VidaHeroe").value <= 0.0):
		get_node("PlayerLose").play()
		yield(get_tree().create_timer(3.0), "timeout")
		get_node("TextEdit").visible = true
		get_node("TextEdit2").visible = true
		get_node("TextEdit3").visible = true
		get_node("hada_nana").visible = true
		get_node("BtnIniciar").visible = true
		get_node("VidaHeroe").visible = false;
		get_node("VidaDemonio").visible = false
		get_node("VidaHeroe").value = 100.0
		get_node("VidaDemonio").value = 100.0
		get_node("Pregunta1").visible = false
		get_node("Respuesta11").visible = false
		get_node("Respuesta12").visible = false
		get_node("Respuesta13").visible = false
		get_node("Respuesta14").visible = false
		get_node("Pregunta2").visible = false
		get_node("Respuesta21").visible = false
		get_node("Respuesta22").visible = false
		get_node("Respuesta23").visible = false
		get_node("Respuesta24").visible = false
		get_node("Demonio").visible = false
		get_node("Label").visible = false
		get_node("Label2").visible = false
	elif (get_node("VidaDemonio").value <= 0.0):
		get_node("PlayerWin").play()
		yield(get_tree().create_timer(3.0), "timeout")
		get_tree().change_scene("res://mundo_tres_hada.tscn")		
	pass
	
func _on_begin_respuesta21_pressed():
	get_node("VidaHeroe").value = (get_node("VidaHeroe").value - 50.00);
	get_node("Pregunta2").disabled = true
	get_node("Respuesta21").disabled = true
	get_node("Respuesta22").disabled = true
	get_node("Respuesta23").disabled = true
	get_node("Respuesta24").disabled = true
	if (get_node("VidaHeroe").value <= 0.0):
		get_node("PlayerLose").play()
		yield(get_tree().create_timer(3.0), "timeout")
		get_node("TextEdit").visible = true
		get_node("TextEdit2").visible = true
		get_node("TextEdit3").visible = true
		get_node("hada_nana").visible = true
		get_node("BtnIniciar").visible = true
		get_node("VidaHeroe").visible = false;
		get_node("VidaDemonio").visible = false
		get_node("VidaHeroe").value = 100.0
		get_node("VidaDemonio").value = 100.0
		get_node("Pregunta1").visible = false
		get_node("Respuesta11").visible = false
		get_node("Respuesta12").visible = false
		get_node("Respuesta13").visible = false
		get_node("Respuesta14").visible = false
		get_node("Pregunta2").visible = false
		get_node("Respuesta21").visible = false
		get_node("Respuesta22").visible = false
		get_node("Respuesta23").visible = false
		get_node("Respuesta24").visible = false
		get_node("Demonio").visible = false
		get_node("Label").visible = false
		get_node("Label2").visible = false
	elif (get_node("VidaDemonio").value <= 0.0):
		get_node("PlayerWin").play()
		yield(get_tree().create_timer(3.0), "timeout")
		get_tree().change_scene("res://mundo_tres_hada.tscn")
	pass
	
func _on_begin_respuesta22_pressed():
	get_node("VidaHeroe").value = (get_node("VidaHeroe").value - 50.00);
	get_node("Pregunta2").disabled = true
	get_node("Respuesta21").disabled = true
	get_node("Respuesta22").disabled = true
	get_node("Respuesta23").disabled = true
	get_node("Respuesta24").disabled = true
	if (get_node("VidaHeroe").value <= 0.0):
		get_node("PlayerLose").play()
		yield(get_tree().create_timer(3.0), "timeout")
		get_node("TextEdit").visible = true
		get_node("TextEdit2").visible = true
		get_node("TextEdit3").visible = true
		get_node("hada_nana").visible = true
		get_node("BtnIniciar").visible = true
		get_node("VidaHeroe").visible = false;
		get_node("VidaDemonio").visible = false
		get_node("VidaHeroe").value = 100.0
		get_node("VidaDemonio").value = 100.0
		get_node("Pregunta1").visible = false
		get_node("Respuesta11").visible = false
		get_node("Respuesta12").visible = false
		get_node("Respuesta13").visible = false
		get_node("Respuesta14").visible = false
		get_node("Pregunta2").visible = false
		get_node("Respuesta21").visible = false
		get_node("Respuesta22").visible = false
		get_node("Respuesta23").visible = false
		get_node("Respuesta24").visible = false
		get_node("Demonio").visible = false
		get_node("Label").visible = false
		get_node("Label2").visible = false
	elif (get_node("VidaDemonio").value <= 0.0):
		yield(get_tree().create_timer(3.0), "timeout")
		get_tree().change_scene("res://mundo_tres_hada.tscn")
	pass
	
func _on_begin_respuesta23_pressed():
	get_node("VidaDemonio").value = (get_node("VidaDemonio").value - 50.00);
	get_node("Pregunta2").disabled = true
	get_node("Respuesta21").disabled = true
	get_node("Respuesta22").disabled = true
	get_node("Respuesta23").disabled = true
	get_node("Respuesta24").disabled = true
	if (get_node("VidaHeroe").value <= 0.0):
		get_node("PlayerLose").play()
		yield(get_tree().create_timer(3.0), "timeout")
		get_node("TextEdit").visible = true
		get_node("TextEdit2").visible = true
		get_node("TextEdit3").visible = true
		get_node("hada_nana").visible = true
		get_node("BtnIniciar").visible = true
		get_node("VidaHeroe").visible = false;
		get_node("VidaDemonio").visible = false
		get_node("VidaHeroe").value = 100.0
		get_node("VidaDemonio").value = 100.0
		get_node("Pregunta1").visible = false
		get_node("Respuesta11").visible = false
		get_node("Respuesta12").visible = false
		get_node("Respuesta13").visible = false
		get_node("Respuesta14").visible = false
		get_node("Pregunta2").visible = false
		get_node("Respuesta21").visible = false
		get_node("Respuesta22").visible = false
		get_node("Respuesta23").visible = false
		get_node("Respuesta24").visible = false
		get_node("Demonio").visible = false
		get_node("Label").visible = false
		get_node("Label2").visible = false
	elif (get_node("VidaDemonio").value <= 0.0):
		get_node("PlayerWin").play()
		yield(get_tree().create_timer(3.0), "timeout")
		get_tree().change_scene("res://mundo_campeon_constitucion.tscn")
	pass


