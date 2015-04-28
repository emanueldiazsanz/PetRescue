package seminario
import org.joda.time.*
import java.text.*;

class PublicarAvisoCommand {
	String especie, raza, sexo, tamanio, nombre, senias, comentario
	String provincia, barrio, calles
	Date fecha
	TipoAviso tipoDeAviso
	
	static constraints = {
		especie inList: ['perro', 'gato'], blank: false, nullable: false
		sexo inList: ['macho', 'hembra'], blank: false, nullable: false
		raza blank: true, nullable: true
		tamanio inList: ['chico', 'mediano', 'grande'], blank: false, nullable: false
		nombre blank: true, nullable: true
		senias blank: true, nullable: true
		comentario blank: true, nullable: true

		provincia blank:false, nullable: false
		barrio blank: false, nullable: false
		calles blank: true, nullable: true
	}
}

class PublicacionController {
	def index() {
		[command: new PublicarAvisoCommand()]
	}

	def publicarAviso(PublicarAvisoCommand command) {
		if (command.hasErrors()) {
			render view: "index", model: [command: command]
			return
		}

		// Mascota
		def especie = command.especie
		def raza = command.raza
		def sexo = command.sexo
		def tamanio = command.tamanio
		def nombre = command.nombre
		def senias = command.senias
		Mascota mascota = new Mascota(especie: especie, raza: raza, sexo: sexo, tamanio: tamanio, nombre: nombre, senias: senias)

		// Foto
		def foto = params.foto

		// Comentario
		def comentario = command.comentario

		// Ubicacion
		def provincia = command.provincia
		def barrio = command.barrio
		def calles = command.calles
		Ubicacion ubicacion = new Ubicacion(provincia: provincia, barrio: barrio, calles: calles)

		// Fecha
		Date fecha = command.fecha

		// Tipo de aviso
		TipoAviso tipoAviso = command.tipoDeAviso

		Usuario logeado = Usuario.get(1)

		Aviso aviso = logeado.publicarAviso(mascota, fecha, ubicacion, tipoAviso, comentario)
		aviso.save(failOnError: true)

		switch (tipoAviso){
			case TipoAviso.ENCONTRADO:
				redirect action: 'verEncontrado', id: aviso.id
				break

			case TipoAviso.PERDIDO:
				redirect action: 'verPerdido', id: aviso.id
				break
		}
	}

	def noExisteAviso(){
		render "No existe el aviso"
	}

	def verPerdido(Long id){
		def aviso = Aviso.get(id)

		if (!aviso || aviso.tipoAviso == TipoAviso.ENCONTRADO){
			redirect action: 'noExisteAviso'
		}

		Map modelo = ['aviso': aviso]
	}

	def verEncontrado(Long id){
		def aviso = Aviso.get(id)

		if (!aviso || aviso.tipoAviso == TipoAviso.PERDIDO){
			redirect action: 'noExisteAviso'
		}
		
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
