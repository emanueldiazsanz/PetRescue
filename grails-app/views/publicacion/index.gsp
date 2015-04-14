<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>PetRescue</title>
	</head>
	<body>
		<h1>Publicar aviso de mascota</h1>
		
			<g:form action="publicarAviso">

				<!--Mascota-->
				&nbsp Especie:
				<select name="especie">
					<option> </option>
					<option>gato</option>
					<option>perro</option>
				</select> <br/>
				&nbsp Raza: <g:textField name="raza" /> <br/>
				&nbsp Sexo:
				<select name="sexo">
					<option> </option>
					<option>hembra</option>
					<option>macho</option>
				</select> <br/>
				&nbsp Tamaño:
				<select name="tamanio">
					<option> </option>
					<option>chico</option>
					<option>mediano</option>
					<option>grande</option>
				</select> <br/>
				&nbsp Nombre: <g:textField name="nombre" /> <br/>
				&nbsp Señas particulares: <g:textField name="senias" /> <br/>
				<br/>

				<!--Ubicacion-->
				&nbsp Provincia:
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
				&nbsp Barrio: <g:textField name="barrio" /> <br/>
				&nbsp Calles: <g:textField name="calles" /> <br/>
				<br/>

				<!--Tipo de Aviso-->
				&nbsp&nbsp<input type="radio" name="tipoDeAviso" value="PERDIDO"> Perdido
				<input type="radio" name="tipoDeAviso" value="ENCONTRADO"> Encontrado <br>
				<br>

				&nbsp&nbsp&nbsp&nbsp&nbsp<input type="submit" value="Aceptar" />
			</g:form>
	</body>
</html>
