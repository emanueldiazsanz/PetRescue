<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>Pet Rescue</title>
	</head>
	<body>
		<div align="center">
			<h1 style="color:#0B610B">SE BUSCA MASCOTA</h1> <br>

			${aviso.tipoAviso} <br/>
			${aviso.mascota.nombre} se perdió el día ${aviso.fecha} en el barrio de ${aviso.ubicacion.barrio} (${aviso.ubicacion.provincia}). <br>
			Es un ${aviso.mascota.especie} ${aviso.mascota.sexo} de raza ${aviso.mascota.raza} y tamaño ${aviso.mascota.tamanio} <br><br>
			
			<g:if test="${aviso.comentario}">
				Comentario: ${aviso.comentario}
			</g:if>
		</div>
	</body>
</html>
