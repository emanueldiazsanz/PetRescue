<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>PetRescue</title>
	</head>
	<body>
		<h1>Publicar aviso de mascota perdida</h1>
		
			<g:form action="publicarAviso">
				<!--Mascota-->
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
					<option>macho</option>
					<option>hembra</option>
				</select> <br/>
				Tamaño:
				<select name="tamanio">
					<option> </option>
					<option>chico</option>
					<option>mediano</option>
					<option>grande</option>
				</select> <br/>
				Nombre: <g:textField name="nombre" /> <br/>
				Señas particulares: <g:textField name="senias" /> <br/>
				<br/>

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
				<br/>

				<input type="submit" value="Aceptar" />
			</g:form>
	</body>
</html>
