import vagones.*

class Formacion {
	const vagones = []
	const locomotoras = []
	
	method agregarVagon(unVagon) {
		vagones.add(unVagon)
	}
	
	method desarmarFormacion() {
		vagones.clear()
		locomotoras.clear()
	}
	
	method cuantosPasajerosPuedeLlevar() = vagones.sum({v=>v.cantidadDePasajeros()}) //devuelve la suma de todos los elementos transformados de la coleccion
	
	method cantidadVagonesPopulares() = vagones.count({v=>v.esPopular()}) //cuenta los elementos que cumplen la condicion
	
	method esFormacionCarguera() = vagones.all({v=>v.carga()>1000})
	
	method vagonMasPesado() = vagones.max({v=>v.pesoMaximo()})
	
	method vagonMasLiviano() = vagones.min({v=>v.pesoMaximo()})
	
	method dispersionDePesos() = self.vagonMasPesado().pesoMaximo() - self.vagonMasLiviano()
	
	method cantidadDeBanios() = vagones.count({v=>v.tieneBanio()})
	
	method hacerMantenimiento() {
		vagones.forEach({v=>v.recibirMantenimiento()})
	}
	
	method vagonesConPasajeros() = vagones.filter({v=>v.cantidadDePasajeros()>0})
	
	method vagonConMasPasajeros() = self.vagonesConPasajeros().max({v=>v.cantidadDePasajeros()})
	
	method vagonConMenosPasajeros() = self.vagonesConPasajeros().min({v=>v.cantidadDePasajeros()})
	
	method estaEquilibrada() = self.vagonConMasPasajeros().cantidadDePasajeros() - self.vagonConMenosPasajeros().cantidadDePasajeros() <=20
	
	method estaOrganizada() {
		return not (1..vagones.size()-1.any({i=> not vagones.get(idx-1).esDePasajeros() and vagones.get(i).esDePasajeros()}))	
	}
	
	
	
	
	
	
	
	
}
