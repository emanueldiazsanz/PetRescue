package seminario

class PublicacionController {
	def index() {
	}

	def publicarAviso() {
		// Mascota
		def especie = params.especie
		def raza = params.raza
		def sexo = params.sexo
		def tamanio = params.tamanio
		def nombre = params.nombre
		def senias = params.senias
		Mascota mascota = new Mascota(especie: especie, raza: raza, sexo: sexo, tamanio: tamanio, nombre: nombre, senias: senias)

		// Ubicacion
		def provincia = params.provincia
		def barrio = params.barrio
		def calles = params.calles
		Ubicacion ubicacion = new Ubicacion(provincia: provincia, barrio: barrio, calles: calles)

		// Fecha
		def dia = params.dia
		def mes = params.mes
		def anio = params.anio
		//Date fecha = new Date(anio, mes, dia)

		// Comentario
		def comentario = params.comentario

		//if (!nombre || !raza || !direccion) {
		//	render "cargá todo"
		//	return
		//}

		

		//Usuario usuario = new Usuario("Marta", "12345").save(failOnError: true)
		//Aviso aviso = new Aviso(usuario, mascota, new Date(), ubicacion, TipoAviso.PERDIDO)
		Aviso aviso = new Aviso(mascota, new Date(), ubicacion, TipoAviso.PERDIDO)
		aviso.save(failOnError: true)

		//render "creando aviso ${aviso}"
		redirect action: 'verAviso' , id: aviso.id
	}

	def verAviso(Long id) {
		def aviso = Aviso.get(id)

		Map modelo = ['aviso': aviso]
		return modelo
	}

	def verPerdidos() {
		List avisos = Aviso.list() // todos

		List filtrados = avisos.findAll { Aviso aviso ->
			aviso.tipoAviso == TipoAviso.PERDIDO
		}
		
		List perdidos = Aviso.findAllByTipoAviso(TipoAviso.PERDIDO)
		List perdidos2 = Aviso.findAllByTipoAvisoAndPublicador(TipoAviso.PERDIDO, Usuario.get(1))
		List noanda = Aviso.findAllByManzana(Usuario.get(1))
		// googlear dynamic finders
		
		List copado = Aviso.withCriteria {
			eq('publicador', Usuario.get(1))
			lt('fecha', new Date())
		}

		Map modelo = new HashMap()
		modelo.put('perdidos', copado)
		modelo.put('manzana', 2000)
		return modelo
		
		// [perdidos: Aviso.list()] equivalente
	}
}
