package seminario

class UsuarioController {

    def index() {
    }

    def crearUsuario(){
    	def apodo = params.apodo
    	def contrasenia = params.contrasenia
		def nombre = params.nombre
		def apellido = params.apellido
		def telefono = params.telefono
		def email = params.email

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
