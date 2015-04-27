<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>Pet Rescue</title>
	</head>
	<body>
		<h1 align="center"> <strong> EDITAR PERFIL </strong> </h1> <br>
	
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

		<g:form action="modificarPerfil" id="1">
			<table>
				<tr>
					<td>
						<strong>Datos de registro</strong>
						<!--Usuario-->
						<br>
						Apodo: <br>
						<g:textField name="apodo" value="${logeado.apodo}"/> <br>
						Contraseña: <br>
						<g:link action="editarContrasenia" controller="usuario">
							<input type="button" value="Cambiar contraseña"/>
						</g:link>
						<br>
						<strong>Hoja de contacto</strong> <br>
						<!--HojaDeContacto-->
						Nombre: <br>
						<g:textField name="nombre" value="${logeado.hojaDeContacto.nombre}"/> <br>
						Apellido: <br>
						<g:textField name="apellido" value="${logeado.hojaDeContacto.apellido}"/> <br>
						Teléfono: <br>
						<g:textField name="telefono" value="${logeado.hojaDeContacto.telefono}"/> <br>
						Email: <br>
						<g:textField name="email" value="${logeado.hojaDeContacto.email}"/> <br/>
					</td>
				</tr>
			</table>
			<div align="center"> <br>
				<input type="submit" value="Aceptar" />
			</div>
		</g:form>
	</body>
</html>
