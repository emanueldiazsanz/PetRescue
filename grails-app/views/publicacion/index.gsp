<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>Pet Rescue</title>
	</head>
	<body>
		<h1 align="center">PUBLICAR AVISO</h1>
		
			<!--<g:if test="${command}">
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
			</g:if>-->


			<g:form action="publicarAviso">
				<!--Mascota-->
				<table>
					<tr>
						<td>
							Especie* :
							<g:select name="especie" from="['gato', 'perro']" value="${command.especie}" noSelection="['':'Seleccionar especie']"/><br>
							Raza:
							<g:select name="raza" from="['Indeterminada','Pekines', 'Pastor ALeman', 'Chihuahua']" value="${command.raza}" noSelection="['':'Seleccionar raza']"/><br>
							Sexo* :
							<g:select name="sexo" from="['macho', 'hembra']" value="${command.sexo}" noSelection="['':'Seleccionar sexo']"/><br>
							Tamaño* :
							<g:select name="tamanio" from="['chico', 'mediano','grande']" value="${command.tamanio}" noSelection="['':'Seleccionar tamaño']"/><br>
							Nombre: <g:textField name="nombre" value="${command.nombre}"/> <br/>
							Señas particulares: <g:textField name="senias" value="${command.senias}"/> <br>
							<br>
							Foto: <input type="file" name="foto">

						</td>
						<td>
							<!--Comentario-->
							Comentarios:<br>
							<textarea cols="40" rows="5" name="comentario" value="${command.comentario}"></textarea>
						</td>
					</tr>
				</table>

				<table>
					<tr>
						<td>
							<!--Ubicacion-->
							Provincia* :
							<g:select name="provincia" from="['Capital Federal',
								'Buenos Aires',
								'Catamarca',
								'Chaco',
								'Chubut',
								'Córdoba',
								'Corrientes',
								'Entre Rios',
								'Formosa',
								'Jujuy',
								'La Pampa',
								'La Rioja',
								'Mendoza',
								'Misiones',
								'Neuquén',
								'Río Negro',
								'Salta',
								'San Juan',
								'San Luis',
								'Santa Cruz',
								'Santa Fe',
								'Santiago del Estero',
								'Tierra del Fuego',
								'Tucumán']" value="${command.provincia}" noSelection="['':'Seleccionar provincia']"/><br>
							Barrio* : <g:textField name="barrio" value="${command.barrio}"/> <br/>
							Calles: <g:textField name="calles" value="${command.calles}"/> <br/>
						</td>
						<td>
							<!--Fecha-->
							Dia* : <g:textField name="dia" size="2" maxlength="2" value="${command.dia}"/> <br>
							Mes* : <g:textField name="mes" size="2" maxlength="2" value="${command.mes}"/> <br>
							Año* : <g:textField name="anio" size="4" maxlength="4" value="${command.anio}"/>
						</td>
						<td>
							<!--Tipo de Aviso-->
							Tipo de aviso: <br>
							<input type="radio" name="tipoDeAviso" value="PERDIDO"> Perdido
							<br>
							<input type="radio" name="tipoDeAviso" value="ENCONTRADO"> Encontrado
						</td>
						<td>
							<!--Botones-->
							<div align="center">
							<input type="submit" value="Aceptar" /> <br><br>
							<input type="reset" value="Borrar formulario">
						</div>
						</td>
					</tr>
				</table>
			</g:form>

			<a href="www.google.com"> Google </a>
		</br>
			<g:link action="miPerfil" controller="usuario" id="1"> Ir a mi perfil</g:link>


			<g:if test="${command}">
				<g:hasErrors bean="${command}">
					<div align="center">
					<strong style="color:#FA5858">Complete todos los campos con *</strong>
					</div>
				</g:hasErrors>
			</g:if>

	</body>
</html>
