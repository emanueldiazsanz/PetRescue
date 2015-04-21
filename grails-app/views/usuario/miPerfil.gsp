<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>Pet Rescue</title>
	</head>
	<body>
		<h1 align="center">MI PERFIL</h1>
		
			<g:form action="crearUsuario">
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
				</table>
			</g:form>
	</body>
</html>
