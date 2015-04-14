package seminario

class Mascota {
	String especie, raza, sexo, tamanio, nombre, senias

	static constraints = {
		especie inList: ['', 'perro', 'gato'], blank: false, nullable: false
		sexo inList: ['', 'macho', 'hembra'], blank: false, nullable: false
		raza blank: true, nullable: true
		tamanio inList: ['', 'chico', 'mediano', 'grande'], blank: false, nullable: false
		nombre blank: true, nullable: true
		senias blank: true, nullable: true
    }
}

class Ubicacion {
	String provincia, barrio, calles

	static constraints = {
		provincia inList: ['', 'Capital Federal', 'Buenos Aires',
		'Catamarca', 'Chaco', 'Chubut', 'Córdoba', 'Corrientes',
		'Entre Rios', 'Formosa', 'Jujuy', 'La Pampa', 'La Rioja',
		'Mendoza', 'Misiones', 'Neuquén', 'Río Negro', 'Salta',
		'San Luis', 'Santa Cruz', 'Santa Fe', 'Santiago del Estero',
		'Tierra del Fuego', 'Tucumán'], blank:false, nullable: false
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
	//Usuario publicador

	Date fecha // TODO usar joda time
	Ubicacion ubicacion

	static embedded = ['mascota', 'ubicacion']

	static constraints = {
		tipoAviso nullable: false
		mascota nullable: false
		//publicador nullable: false
		fecha nullable: false
		ubicacion nullable: false
	}

	Aviso(Mascota mascota, Date fecha, Ubicacion ubicacion, TipoAviso tipoAviso) {	
	//Aviso(Usuario publicador, Mascota mascota, Date fecha, Ubicacion ubicacion, TipoAviso tipoAviso) {
		//this.publicador = publicador
		this.mascota = mascota
		this.fecha = fecha
		this.ubicacion = ubicacion
		this.tipoAviso = tipoAviso
	}
}
