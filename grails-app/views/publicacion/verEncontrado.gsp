<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>Pet Rescue</title>
	</head>
	<body>
		<div align="center">
			<h1 style="color:#0B610B">SE BUSCA DUEÑO</h1> <br>

			# Mostrar imagen o imagenes <br><br>

			${aviso.tipoAviso} <br/>
			Se encontró un ${aviso.mascota.especie} ${aviso.mascota.sexo} de raza ${aviso.mascota.raza} y tamaño ${aviso.mascota.tamanio} <br/>
			en el 
			<g:if test="${aviso.ubicacion.provincia == 'Capital Federal'}"> barrio </g:if>
			<g:else> localidad </g:else>
			de ${aviso.ubicacion.barrio} (${aviso.ubicacion.provincia}) el dia ${aviso.fecha} <br><br>

			<g:if test="${aviso.comentario}">
				Comentario: ${aviso.comentario}
			</g:if>
		</div>
		<div align="center">
			<h1 style="color:#0B610B">Coincidencias encontradas</h1> <br>

			# Mostrar coincidencias 

		</div>
		<br>	

		<table>
			<tr>
				<td>	
					<div align="center">
						<g:link action="miPerfil" controller="usuario" id="1">  Mi perfil </g:link>
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
