package seminario

class UsuarioCommand {
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
        [command: new UsuarioCommand()]
    }

    def crearUsuario(UsuarioCommand command){
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

    def iniciarSesion(Long id){

    }

    def miPerfil(Long id){
        Usuario logeado = Usuario.get(id)
        if (!logeado){
            render "NO EXISTE USUARIO"
        }
        Map modelo = ['logeado': logeado]
    }

    def verAvisos(Long id){
    	Usuario logeado = Usuario.get(id)
    	Map modelo = ['logeado': logeado, 'avisos': logeado.avisos]
    }

    def editarPerfil(Long id){
        Usuario logeado = Usuario.get(id)
        Map modelo = ['logeado': logeado]
    }

    def modificarPerfil(Long id){
        def apodo = params.apodo
        def contrasenia = Usuario.get(id).contrasenia

        def nombre = params.nombre
        def apellido = params.apellido
        def telefono = params.telefono
        def email = params.email

        UsuarioCommand usuarioModificado = new UsuarioCommand(apodo: apodo, contrasenia: contrasenia, nombre: nombre, apellido: apellido, telefono: telefono, email: email)

        if (usuarioModificado.hasErrors()){
            render view: 'editarPerfil', model: [id: usuarioModificado.id]
        }

        //HojaDeContacto hoja = new HojaDeContacto(nombre: nombre, apellido: apellido, telefono: telefono, email: email)
        //Usuario usuario = new Usuario(apodo, contrasenia, hoja)
        //usuario.save(failOnError: true)

        Usuario logeado = Usuario.get(id)
        logeado.apodo = apodo
        logeado.hojaDeContacto.nombre = nombre
        logeado.hojaDeContacto.apellido = apellido
        logeado.hojaDeContacto.telefono = telefono
        logeado.hojaDeContacto.email = email

        logeado.save(failOnError: true)
        redirect action: 'miPerfil', id: id
    }

    def editarContrasenia(){
    }

    def modificarContrasenia(){
        //def contrasenia = Usuario.get(id)
        def contraseniaActual = params.contraseniaActual
        def nuevaContrasenia = params.nuevaContrasenia
        def nuevaContrasenia2 = params.nuevaContrasenia2

        //if (contrasenia != contraseniaActual){
        //    render "Error: contraseña incorrecta"
        //}

        if (nuevaContrasenia != nuevaContrasenia2){
            render "Error: Las contraseñas no coinciden"
        }
        else {
        //Usuario logeado = Usuario.get(id)
        //logeado.contrasenia = nuevaContrasenia
        render "Contaseña cambiada"     
        }


    }
}
