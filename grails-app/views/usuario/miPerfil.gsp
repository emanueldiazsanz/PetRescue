<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>Pet Rescue</title>
	</head>
	<body>
		<h1 align="center">MI PERFIL</h1>
		
		<table>
			<tr>
				<td>
					<!--Usuario-->
					<br>
					Apodo: ${logeado.apodo} <br>
					<br>

					<!--HojaDeContacto-->
					Nombre: ${logeado.hojaDeContacto.nombre} <br>
					Apellido: ${logeado.hojaDeContacto.apellido} <br>
					Teléfono: ${logeado.hojaDeContacto.telefono} <br>
					Email: ${logeado.hojaDeContacto.email} <br>
					<br>
					Cantidad de avisos: ${logeado.avisos.size()}
				</td>
			</tr>
			<tr>
				<td><div align="center">
					<g:link action="editarPerfil" controller="usuario" id="1">
						<input type="button" value="Editar"/>
					</g:link>
				</div></td>
			</tr>
		</table>
	</body>
</html>
