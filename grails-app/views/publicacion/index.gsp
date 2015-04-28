<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>Pet Rescue</title>

		<script type="text/javascript" src="js/jquery.js"></script>
		<script type="text/javascript">
		function mostrar(provincia) {
		    if (provincia == "Capital Federal") {
		        $("#barriosCapital").show();
		        $("#barrioGBANorte").hide(); $("#barrioGBASur").hide(); $("#barrioGBAOeste").hide();
		    }
		    if (provincia == "GBA - Zona Norte"){
		        $("#barrioGBANorte").show();
		        $("#barrioGBASur").hide(); $("#barriosCapital").hide();	$("#barrioGBAOeste").hide();	
		    }
		    if (provincia == "GBA - Zona Sur"){
		        $("#barrioGBASur").show();		    	
		        $("#barriosCapital").hide(); $("#barrioGBANorte").hide(); $("#barrioGBAOeste").hide();  	
		    }
		   	if (provincia == "GBA - Zona Oeste"){
		   		$("#barrioGBAOeste").show();
		        $("#barriosCapital").hide(); $("#barrioGBANorte").hide(); $("#barrioGBASur").hide();    	
		    }
		}
		</script>

	</head>
	<body>
		<h1 align="center"> <strong> Publicar aviso </strong> </h1>
		
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


			<g:form action="publicarAviso">
				<!--Mascota-->
				<table>
					<h3>Datos de la mascota</h3>
					<tr>
						<td>
							Especie* :
							<g:select name="especie" from="['gato', 'perro']" value="${command.especie}" noSelection="['':'Seleccionar especie']"/><br>
							Raza:
							<g:select name="raza" from="['indeterminada','Pekines', 'Pastor ALeman', 'Chihuahua']" value="${command.raza}" noSelection="['':'Seleccionar raza']"/><br>
							<!--<h5>Puede consultar las razas en los siguientes enlaces: <br/>
							<a href="http://www.asociacioncanina.org.ar/index2.htm"> Razas de Perros en Argentina 
							</a> <br/>
							<a href="http://www.asociacion-felina-argentina.com/2standards.html"> Razas de Gatos en Argentina 
							</a> <br/>
							Ante cualquier duda, marque la raza como indeterminada.</h5> <br/>-->
							Sexo* :
							<g:select name="sexo" from="['macho', 'hembra']" value="${command.sexo}" noSelection="['':'Seleccionar sexo']"/><br>
							Tamaño* :
							<g:select name="tamanio" from="['chico', 'mediano','grande']" value="${command.tamanio}" noSelection="['':'Seleccionar tamaño']"/><br>
							Nombre: <g:textField name="nombre" value="${command.nombre}"/> <br/>
							Señas particulares: <g:textField name="senias" value="${command.senias}"/> <br>
							<br>
							<!--Foto-->
							Imagen(es): <input type="file" name="foto" multiple>
						</td>
						<td>
							<!--Comentario-->
							Comentarios:<br>
							<textarea cols="40" rows="5" name="comentario" value="${command.comentario}"></textarea>
						</td>
					</tr>
				</table>

				<table>
					<h3>Datos del suceso</h3>
					<tr>
						<td>
							<!--Ubicacion-->
							Provincia* :
							<g:select name="provincia" from="['Capital Federal',
								'GBA - Zona Norte', 'GBA - Zona Sur', 'GBA - Zona Oeste', 
								'Buenos Aires', 'Catamarca', 'Chaco',
								'Chubut', 'Córdoba', 'Corrientes',
								'Entre Rios', 'Formosa', 'Jujuy',
								'La Pampa', 'La Rioja', 'Mendoza',
								'Misiones', 'Neuquén', 'Río Negro',
								'Salta', 'San Juan', 'San Luis',
								'Santa Cruz', 'Santa Fe', 'Santiago del Estero',
								'Tierra del Fuego', 'Tucumán']"
							value="${command.provincia}" noSelection="['':'Seleccionar provincia']" onChange="mostrar(this.value);"/><br>

							<div id="barriosCapital" style="display: none;">
								Barrio* : 
								<g:select name="barrio" from="[
									'Abasto', 'Agronomía', 'Almagro',
									'Balvanera', 'Barrio Norte', 'Barracas',
									'Belgrano', 'Boedo', 'Caballito',
									'Chacarita', 'Coghlan', 'Colegiales',
									'Constitución', 'Flores', 'Floresta',
									'La Boca', 'La Paternal', 'Liniers',
									'Mataderos', 'Monte Castro', 'Montserrat',
									'Nueva Pompeya', 'Nuñez', 'Palermo',
									'Palermo Viejo', 'Parque Avellaneda', 'Parque Chacabuco',
									'Parque Chas', 'Parque Patricios', 'Puerto Madero',
									'Recoleta', 'Retiro', 'Saavedra',
									'San Cristóbal', 'San Nicolás', 'San Telmo',
									'Versalles', 'Villa Crespo', 'Villa Devoto',
									'Villa General Mitre', 'Villa Lugano', 'Villa Luro',
									'Villa Ortúzar', 'Villa Pueyrredón', 'Villa Real',
									'Villa Riachuelo', 'Villa Santa Rita', 'Villa Soldati',
									'Villa Urquiza', 'Villa del Parque', 'Vélez Sarsfield']"
								value="${command.barrio}" noSelection="['':'------']"/><br>
							</div>

							<div id="barrioGBANorte" style="display: none;">
								Partido* : 
								<g:select name="barrio" from="[
									'Escobar', 'General San Martin', 'Jose C. Paz',
									'Malvinas Argentinas', 'Pilar', 'San Fernando',
									'San Isidro', 'San Miguel', 'Tigre', 'Vicente Lopez']"
								value="${command.barrio}" noSelection="['':'------']"/><br>								
							</div>

							<div id="barrioGBASur" style="display: none;">
								Partido* : 
								<g:select name="barrio" from="[
									'Alejandro Korn', 'Almirante Brown', 'Avellaneda', 
									'Banfield', 'Berazategui', 'Coronel Brandsen', 
									'Esteban Echeverría', 'Ezeiza', 'Florencio Varela', 
									'Guerli', 'Guernica', 'La Plata', 'Lanús', 
									'Llavallol', 'Lomas De Zamora', 'Quilmes', 
									'Remedios De Escalada', 'San Vicente', 
									'Temperley', 'Valentina Alsina']"
								value="${command.barrio}" noSelection="['':'------']"/><br>								
							</div>

							<div id="barrioGBAOeste" style="display: none;">
								Partido* : 
								<g:select name="barrio" from="[
									'General Rodriguez', 'Hurlingham', 'Ituzaingo', 
									'La Matanza', 'Marcos Paz', 'Merlo', 
									'Moreno', 'Morón', 'Tres de Febrero']"
								value="${command.barrio}" noSelection="['':'------']"/><br>								
							</div>

							Calles: <g:textField name="calles" value="${command.calles}"/> <br/>
						</td>

						<td>
							<!--Fecha-->
							Fecha:
							<g:datePicker name="fecha" value="${new Date()}" precision="day" relativeYears="[-2..0]"/>

						</td>

						<td>
							<!--Tipo de Aviso-->
							Tipo de aviso: <br>
							<input type="radio" name="tipoDeAviso" value="PERDIDO"> Perdido
							<br>
							<input type="radio" name="tipoDeAviso" value="ENCONTRADO"> Encontrado
						</td>

					</tr>
				</table>
				<table>
					<!--Botones-->
					<tr>
						<td>
					<div align="center">
					<input type="submit" value="Enviar y buscar coincidencias" /> <br><br>
					<input type="reset" value="Borrar formulario">
					</div>
				</td>
				</tr>
				</table>
			</g:form>

			<div align="center">
				<g:link action="miPerfil" controller="usuario" id="1">  Mi perfil </g:link>
			</div>

			<g:if test="${command}">
				<g:hasErrors bean="${command}">
					<div align="center">
					<strong style="color:#FA5858">Complete todos los campos con *</strong>
					</div>
				</g:hasErrors>
			</g:if>

	</body>
</html>
