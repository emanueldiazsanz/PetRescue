package seminario
import org.joda.time.*

class PublicacionController {
	def index() {

	}

	def publicarAviso() {

		// Tipo de aviso
		TipoAviso tipoDeAviso = params.tipoDeAviso

		// Mascota
		def especie = params.especie
		def raza = params.raza
		def sexo = params.sexo
		def tamanio = params.tamanio
		def nombre = params.nombre
		def senias = params.senias
		Mascota mascota = new Mascota(especie: especie, raza: raza, sexo: sexo, tamanio: tamanio, nombre: nombre, senias: senias)

		// Foto
		def foto = params.foto

		// Ubicacion
		def provincia = params.provincia
		def barrio = params.barrio
		def calles = params.calles
		Ubicacion ubicacion = new Ubicacion(provincia: provincia, barrio: barrio, calles: calles)

		// Fecha
		def dia = params.dia as Integer
		def mes = params.mes as Integer
		def anio = params.anio as Integer
		LocalDate fecha = new LocalDate(anio, mes, dia)

		// Comentario
		def comentario = params.comentario

		//if (!nombre || !raza || !direccion) {
		//	render "cargá todo"
		//	return
		//}

		//Usuario usuario = new Usuario("Marta", "12345").save(failOnError: true)
		//Aviso aviso = new Aviso(usuario, mascota, new Date(), ubicacion, tipoDeAviso, comentario)
		Aviso aviso = new Aviso(mascota, fecha, ubicacion, tipoDeAviso, comentario)
		aviso.save(failOnError: true)


		if (tipoDeAviso == TipoAviso.PERDIDO)
			redirect action: 'verPerdido', id: aviso.id
		else if (tipoDeAviso == TipoAviso.ENCONTRADO)
			redirect action: 'verEncontrado', id: aviso.id
	}

	def verPerdido(Long id){
		def aviso = Aviso.get(id)
		Map modelo = ['aviso': aviso]
	}

	def verEncontrado(Long id){
		def aviso = Aviso.get(id)
		Map modelo = ['aviso': aviso]
	}

	def mascotasPerdidas() {
		List avisos = Aviso.list() // todos
		List perdidas = Aviso.findAllByTipoAviso(TipoAviso.PERDIDO)

		Map modelo = ['perdidas': perdidas]
	}

	def mascotasEncontradas() {
		List avisos = Aviso.list() // todos
		List encontradas = Aviso.findAllByTipoAviso(TipoAviso.ENCONTRADO)
		
		Map modelo = ['encontradas': encontradas]
	}
}
