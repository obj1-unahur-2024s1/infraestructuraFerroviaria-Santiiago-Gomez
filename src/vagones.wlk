class VagonDePasajero {
	const largo //tengo un metodo de consulta si le pongo property
	const ancho
	var property tieneBanios
	var estaOrdenado
	
	method tieneBanios() = tieneBanios
	
	method cantidadDePasajeros() = if(ancho<=3) {8*largo} else{10*largo} - if (estaOrdenado) 0 else 15
	
	method carga() = if(tieneBanios) 300 else 800
	
	method pesoMaximo() = 2000 + 80 * self.cantidadDePasajeros() + self.carga() //instancia de la clase pasajeros
	
	method esPopular() = self.cantidadDePasajeros()>50
	
	method recibirMantenimiento() {
		estaOrdenado = true
	}
	
	method esDePasajeros() = true
	
}
//crear vagon: const vagon1 = new VagonDePasajero(largo=10,ancho=2,tieneBanios=false,estaOrdenado=true)
//preguntar: vagon1.cantidadDePasajeros()= 80
//crear vagon: const vagon2 = new VagonDePasajero(largo=10,ancho=2,tieneBanios=false,estaOrdenado=false)
//preguntar: vagon2.cantidadDePasajeros()= 65

class VagonDeCarga {
	const cargaMaximaIdeal
	var maderasSueltas
	
	//el atributo es el que puede ser distinto en cada istancia, de lo contrario es metodo
	
	method carga() = cargaMaximaIdeal - 400 * maderasSueltas //polimorfismo
	
	method cantidadDePasajeros() = 0
	
	method tieneBanios() = false //no se le puede indicar
	
	method pesoMaximo() = 1500 + self.carga()
	
	method esPopular() = false
	
	method recibirMantenimiento() {
		maderasSueltas = 0.max(maderasSueltas - 2)
	}
	method esDePasajeros() = false
}

class VagonDormitorio {
	const cantidadDeCompartimentos
	var camasPorCompartimiento
	
	method cantidadDePasajeros() = cantidadDeCompartimentos * camasPorCompartimiento
	
	method tieneBanios() = true
	
	method carga() = 1200
	
	method pesoMaximo() = 4000 + 80 * self.cantidadDePasajeros() + self.carga()
	
	method esPopular() = self.cantidadDePasajeros()>50
	
	method recibirMantenimiento() {}
	
	method esDePasajeros() = true
}

