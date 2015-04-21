import seminario.*

class BootStrap {

    def init = { servletContext ->

        HojaDeContacto hoja1 = new HojaDeContacto(nombre: "Susana", apellido: "Gimenez", telefono: "2020", email: "su@telefe.com.ar")
        Usuario usuario1 = new Usuario("la_su", "jazmin", hoja1)
        usuario1.save(failOnError: true)

        HojaDeContacto hoja2 = new HojaDeContacto(nombre: "Marcelo", apellido: "Tinelli", telefono: "13013", email: "marcetinelli@ideas.com")
        Usuario usuario2 = new Usuario("cuervotinelli", "12345", hoja2)
        usuario2.save(failOnError: true)

    	HojaDeContacto hoja3 = new HojaDeContacto(nombre: "Cristian", apellido: "Alvarez", telefono: "6380465", email: "pityviejaslo@hotmail.com")
    	Usuario usuario3 = new Usuario("elpity", "vamosviejaslo", hoja3)
    	usuario3.save(failOnError: true)

    }
    def destroy = {
    }
}
