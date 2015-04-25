<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>Pet Rescue</title>
	</head>
	<body>
		<h1 align="center">CREAR USUARIO</h1>
	
		<g:if test="${command}">
			<g:hasErrors bean="${command}">
				<div class="alert alert-error slide_down_on_show">
					<strong>Han ocurrido los siguientes errores:</strong>
					<ul>
						<g:eachError bean="${command}" var="error">
							<li><g:message error="${error}" /></li>
						</g:eachError>
					</ul>
				</div>
			</g:hasErrors>
		</g:if>


		<g:form action="crearUsuario">
			<table>
				<tr>
					<td>
						<!--Usuario-->
						<br>
						Apodo: <g:textField name="apodo" value="${command.apodo}"/> <br>
						Contraseña: <g:textField name="contrasenia" /> <br>
						<br>
					</td>
					<td>
						<!--HojaDeContacto-->
						Nombre: <g:textField name="nombre" value="${command.nombre}"/> <br>
						Apellido: <g:textField name="apellido" value="${command.apellido}"/> <br>
						Teléfono: <g:textField name="telefono" value="${command.telefono}"/> <br>
						Email: <g:textField name="email" value="${command.email}"/> <br/>
					</td>
				</tr>
			</table>
			<div align="center"> <br>
				<input type="submit" value="Registrarse" />
			</div>
		</g:form>
	</body>
</html>
