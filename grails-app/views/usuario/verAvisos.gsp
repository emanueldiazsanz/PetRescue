<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>Pet Rescue</title>
	</head>
	<body>
		<h1 align="center"> MASCOTAS ENCONTRADAS</h1>
		
			<table>
				<tr> 
					<th><div align="center">Especie</th></div>
					<th><div align="center">Raza</th></div>
					<th><div align="center">Sexo</th></div>
					<th><div align="center">Tamaño</th></div>
					<th><div align="center">Provincia</th></div>
					<th><div align="center">Fecha</th></div>

				</tr>
				<g:each in="${encontradas}" var="aviso">
					<tr>
						<td><div align="center">${aviso.mascota.especie} </td></div>
						<td><div align="center">${aviso.mascota.raza} </td></div>
						<td><div align="center">${aviso.mascota.sexo} </td></div>
						<td><div align="center">${aviso.mascota.tamanio} </td></div>
						<td><div align="center">${aviso.ubicacion.provincia} </td></div>
						<td><div align="center">${aviso.fecha} </td></div>
					</tr>
				</g:each>
			</table>

					<h1 align="center"> MASCOTAS PERDIDAS</h1>
		
			<table>
				<tr> 
					<th><div align="center">Especie</th></div>
					<th><div align="center">Raza</th></div>
					<th><div align="center">Nombre</th></div>
					<th><div align="center">Provincia</th></div>
					<th><div align="center">Fecha</th></div>

				</tr>
				<g:each in="${perdidas}" var="aviso">
					<tr>
						<td><div align="center">${aviso.mascota.especie} </td></div>
						<td><div align="center">${aviso.mascota.raza} </td></div>
						<td><div align="center">${aviso.mascota.nombre} </td></div>
						<td><div align="center">${aviso.ubicacion.provincia} </td></div>
						<td><div align="center">${aviso.fecha} </td></div>
					</tr>
				</g:each>
			</table>
	</body>
</html>
