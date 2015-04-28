<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>Pet Rescue</title>
	</head>
	<body>
		<h1 align="center"> <strong> CAMBIAR CONTRASEÑA </strong> </h1> <br>

		<g:form action="modificarContrasenia">
			<table>
				<tr>
					<td>
						<!--Cambiar contraseña-->
						Contraseña actual: <br>
						<g:textField name="contraseniaActual" /> <br>
						Nueva contaseña: <br>
						<g:passwordField name="nuevaContrasenia" /> <br>
						Repita la nueva contraseña: <br>
						<g:passwordField name="nuevaContrasenia2" /> <br>
					</td>
				</tr>
			</table>
			<div align="center"> <br>
				<input type="submit" value="Aceptar" />
			</div>
		</g:form>
	</body>
</html>
