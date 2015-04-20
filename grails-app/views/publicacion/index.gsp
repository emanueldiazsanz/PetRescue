<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>Pet Rescue</title>
	</head>
	<body>
		<h1 align="center">PUBLICAR AVISO</h1>
		
			<g:form action="publicarAviso">

				<!--Mascota-->
				<table>
					<tr>
						<td>
							Especie:
							<select name="especie">
								<option> </option>
								<option>gato</option>
								<option>perro</option>
							</select> <br/>
							Raza: <g:textField name="raza" /> <br/>
							Sexo:
							<select name="sexo">
								<option> </option>
								<option>hembra</option>
								<option>macho</option>
							</select> <br/>
							Tamaño:
							<select name="tamanio">
								<option> </option>
								<option>chico</option>
								<option>mediano</option>
								<option>grande</option>
							</select> <br/>
							Nombre: <g:textField name="nombre" /> <br/>
							Señas particulares: <g:textField name="senias" /> <br>
							<br>
							Foto: <input type="file" name="foto">

						</td>
						<td>
							<!--Comentario-->
							Comentarios:<br>
							<textarea cols="40" rows="5" name="comentario"></textarea>
						</td>
					</tr>
				</table>

				<table>
					<tr>
						<td>
							<!--Ubicacion-->
							Provincia:
							<select name="provincia">
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
							Barrio: <g:textField name="barrio" /> <br/>
							Calles: <g:textField name="calles" /> <br/>
						</td>
						<td>
							<!--Fecha-->
							Dia: <g:textField name="dia" size="2" maxlength="2" /> <br>
							Mes: <g:textField name="mes" size="2" maxlength="2"/> <br>
							Año: <g:textField name="anio" size="4" maxlength="4"/>
						</td>
						<td>
							<!--Tipo de Aviso-->
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

	</body>
</html>
