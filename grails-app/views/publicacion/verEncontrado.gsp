<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>Pet Rescue</title>
	</head>
	<body>
		<h1>Viendo el aviso</h1>
		${aviso.tipoAviso} <br/>
		Se encontró un ${aviso.mascota.especie} ${aviso.mascota.sexo} de raza ${aviso.mascota.raza} y tamaño ${aviso.mascota.tamanio} <br/>
		en el barrio de ${aviso.ubicacion.barrio} (${aviso.ubicacion.provincia}) el dia ${aviso.fecha} <br><br>
		Comentario: ${aviso.comentario}

	</body>
</html>
