<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>Pet Rescue</title>
	</head>
	<body>
		<div align="center">
			<h1 style="color:#0B610B">SE BUSCA DUEÑO</h1> <br>

			<img src=${aviso.foto} alt="aviso.mascota.nombre">

			${aviso.tipoAviso} <br/>
			Se encontró un ${aviso.mascota.especie} ${aviso.mascota.sexo} de raza ${aviso.mascota.raza} y tamaño ${aviso.mascota.tamanio} <br/>
			en el barrio de ${aviso.ubicacion.barrio} (${aviso.ubicacion.provincia}) el dia ${aviso.fecha} <br><br>

			<g:if test="${aviso.comentario}">
				Comentario: ${aviso.comentario}
			</g:if>
		</div>
	</body>
</html>
