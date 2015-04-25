	<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>Pet Rescue</title>
	</head>
	<body>
		<h1 align="center"> AVISOS PUBLICADOS </h1><br>
			<table>
				<tr>
					<th><div align="center">Aviso</th></div> 
					<th><div align="center">Especie</th></div>
					<th><div align="center">Raza</th></div>
					<th><div align="center">Sexo</th></div>
					<th><div align="center">Tamaño</th></div>
					<th><div align="center">Provincia</th></div>
					<th><div align="center">Fecha</th></div>
				</tr>

				<g:each in="${avisos}" var="aviso">
					<tr>
						<td><div align="center">${aviso.tipoAviso} </td></div>
						<td><div align="center">${aviso.mascota.especie} </td></div>
						<td><div align="center">${aviso.mascota.raza} </td></div>
						<td><div align="center">${aviso.mascota.sexo} </td></div>
						<td><div align="center">${aviso.mascota.tamanio} </td></div>
						<td><div align="center">${aviso.ubicacion.provincia} </td></div>
						<td><div align="center">${aviso.fecha} </td></div>
					</tr>
				</g:each>
			</table>

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
