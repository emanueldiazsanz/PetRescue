<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>Pet Rescue</title>
	</head>
	<body>
		<h1 align="center">CREAR USUARIO</h1>
		
			<g:form action="crearUsuario">
				<table>
					<tr>
						<td>
							<!--Usuario-->
							<br>
							Apodo: <g:textField name="apodo" /> <br>
							Contraseña: <g:textField name="contrasenia" /> <br>
							<br>
						</td>
						<td>
							<!--HojaDeContacto-->
							Nombre: <g:textField name="nombre" /> <br>
							Apellido: <g:textField name="apellido" /> <br>
							Teléfono: <g:textField name="telefono" /> <br>
							Email: <g:textField name="email" /> <br/>
						</td>
						<td>
							<div align="center">
							<input type="submit" value="Registrarse" />
							</div>
						</td>
					</tr>
				</table>
			</g:form>
	</body>
</html>
