<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>Pet Rescue</title>
	</head>
	<body>
		<h1>Viendo el aviso</h1>
		${aviso.tipoAviso} <br/>
		${aviso.mascota.nombre} se perdió el día ${aviso.fecha} en el barrio de ${aviso.ubicacion.barrio} (${aviso.ubicacion.provincia}). <br>
		Es un ${aviso.mascota.especie} ${aviso.mascota.sexo} de raza ${aviso.mascota.raza} y tamaño ${aviso.mascota.tamanio} <br><br>
		Comentario: ${aviso.comentario}

	</body>
</html>
