package seminario
import org.joda.time.*

class HojaDeContacto {
	String nombre, apellido, telefono, email

	static constraints = {
		nombre nullable: false, blank: false
		apellido nullable: false, blank: false
		telefono nullable: false, blank: false
		email nullable: false, blank: false, email: true
	}
}

class Usuario {

	String apodo
	String contrasena
	HojaDeContacto hojaDeContacto
	Set<Aviso> avisos = []

	static hasMany = [avisos: Aviso]
	
	static embedded = ['hojaDeContacto']

	static constraints = {
		apodo nullable: false, blank: false, unique: true
		contrasena nullable: false, blank: false
		hojaDeContacto nullable: true
	}

	Usuario(String apodo, String contrasena) {
		if (apodo == null || apodo.trim() == '') {
			throw new IllegalArgumentException("Nombre de usuario incorrecto")
		}

		this.apodo = apodo
		this.contrasena = contrasena
	}

	def crearAviso(Mascota mascota, LocalDate fecha, Ubicacion ubicacion, TipoAviso tipoAviso, String comentario) {
		//Aviso aviso = new Aviso(this, mascota, new Date(), ubicacion, tipoAviso)
		Aviso aviso = new Aviso(mascota, fecha, ubicacion, tipoDeAviso, comentario)
		this.avisos << aviso
	}	
}
