<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>Pet Rescue</title>
	</head>
	<body>
		<div align="center">
			<h1 style="color:#0B610B">SE BUSCA MASCOTA</h1> <br>

			# Mostrar imagen o imagenes <br><br>

			${aviso.tipoAviso} <br/>
			${aviso.mascota.nombre} se perdió el día ${aviso.fecha} en el barrio de ${aviso.ubicacion.barrio} (${aviso.ubicacion.provincia}). <br>
			Es un ${aviso.mascota.especie} ${aviso.mascota.sexo} de raza ${aviso.mascota.raza} y tamaño ${aviso.mascota.tamanio} <br><br>
			
			<g:if test="${aviso.comentario}">
				Comentario: ${aviso.comentario}
			</g:if>
		</div>

		<div align="center">
			<h1 style="color:#0B610B">Coincidencias encontradas</h1> <br>

			# Mostrar coincidencias 

		</div>

		<table>
			<tr>
				<td>	
					<div align="center">
						<g:link action="miPerfil" controller="usuario" id="1"> Mi perfil </g:link>
					</div>
				</td>
				<td>
					<div align="center">
						<a href="http://localhost:8080/Seminario" controller="usuario" id="1"> Home </a>
					</div>
				</td>
			</tr>
		</table>
	</body>
</html>
