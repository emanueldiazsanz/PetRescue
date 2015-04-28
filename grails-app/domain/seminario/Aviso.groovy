package seminario
import org.joda.time.*

class Mascota {
	String especie, raza, sexo, tamanio, nombre, senias

	static constraints = {
		especie inList: ['perro', 'gato'], blank: false, nullable: false
		sexo inList: ['macho', 'hembra'], blank: false, nullable: false
		raza blank: true, nullable: true
		tamanio inList: ['chico', 'mediano', 'grande'], blank: false, nullable: false
		nombre blank: true, nullable: true
		senias blank: true, nullable: true
    }
}

class Ubicacion {
	String provincia, barrio, calles

	static constraints = {
		provincia blank:false, nullable: false
		barrio blank: false, nullable: false
		calles blank: true, nullable: true
    }
}

enum TipoAviso {
	PERDIDO, ENCONTRADO
}

class Aviso {

	TipoAviso tipoAviso
	Mascota mascota
	Usuario publicador
	Date fecha
	Ubicacion ubicacion
	String comentario

	static embedded = ['mascota', 'ubicacion']

	static constraints = {
		tipoAviso nullable: false
		mascota nullable: false
		publicador nullable: false
		fecha nullable: false
		ubicacion nullable: false
		comentario blank: true, nullable: true
	}

	Aviso(Usuario publicador, Mascota mascota, Date fecha, Ubicacion ubicacion, TipoAviso tipoAviso, String comentario) {
		this.publicador = publicador
		this.mascota = mascota
		this.fecha = fecha
		this.ubicacion = ubicacion
		this.tipoAviso = tipoAviso
		this.comentario = comentario
	}
}
