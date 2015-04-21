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
							<select name="especie" value="${command.especie}">
								<option> </option>
								<option>gato</option>
								<option>perro</option>
							</select> <br/>
							Raza: <g:textField name="raza" value="${command.raza}"/> <br/>
							Sexo* :
							<select name="sexo" value="${command.sexo}">
								<option> </option>
								<option>hembra</option>
								<option>macho</option>
							</select> <br/>
							Tamaño* :
							<select name="tamanio" value="${command.tamanio}">
								<option> </option>
								<option>chico</option>
								<option>mediano</option>
								<option>grande</option>
							</select> <br/>
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
							<select name="provincia" value="${command.provincia}">
								<option> </option>
								<option>Capital Federal</option>
								<option>Buenos Aires</option>
								<option>Catamarca</option>
								<option>Chaco</option>
								<option>Chubut</option>
								<option>Córdoba</option>
								<option>Corrientes</option>
								<option>Entre Rios</option>
								<option>Formosa</option>
								<option>Jujuy</option>
								<option>La Pampa</option>
								<option>La Rioja</option>
								<option>Mendoza</option>
								<option>Misiones</option>
								<option>Neuquén</option>
								<option>Río Negro</option>
								<option>Salta</option>
								<option>San Luis</option>
								<option>Santa Cruz</option>
								<option>Santa Fe</option>
								<option>Santiago del Estero</option>
								<option>Tierra del Fuego</option>
								<option>Tucumán</option>
							</select> <br/>
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

			<g:if test="${command}">
				<g:hasErrors bean="${command}">
					<div align="center">
					<strong style="color:#FA5858">Complete todos los campos con *</strong>
					</div>
				</g:hasErrors>
			</g:if>

	</body>
</html>
