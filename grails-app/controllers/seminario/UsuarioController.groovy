package seminario

class UsuarioAvisoCommand {
    String apodo, contrasenia
    String nombre, apellido, telefono, email

    static constraints = {
        apodo nullable: false, blank: false, unique: true
        contrasenia nullable: false, blank: false
        nombre nullable: false, blank: false
        apellido nullable: false, blank: false
        telefono nullable: true, blank: true
        email nullable: false, blank: false, email: true
    }
}

class UsuarioController {

    def index() {
        [command: new UsuarioAvisoCommand()]
    }

    def crearUsuario(UsuarioAvisoCommand command){
        if (command.hasErrors()) {
            render view: "index", model: [command: command]
            return
        }
        
    	def apodo = command.apodo
    	def contrasenia = command.contrasenia

		def nombre = command.nombre
		def apellido = command.apellido
		def telefono = command.telefono
		def email = command.email

		HojaDeContacto hojaDeContacto = new HojaDeContacto(nombre: nombre, apellido: apellido, telefono: telefono, email: email)
		Usuario nuevoUsuario = new Usuario(apodo, contrasenia, hojaDeContacto)
		nuevoUsuario.save(failOnError: true)

		redirect action: 'miPerfil', id: nuevoUsuario.id
    }

    def miPerfil(Long id){
        Usuario logeado = Usuario.get(id)
    	Map modelo = ['logeado': logeado]
    }

    def verAvisos(Long id){
    	Usuario logeado = Usuario.get(id)
    	Map modelo = ['logeado': logeado, 'avisos': logeado.avisos]
    }
}
