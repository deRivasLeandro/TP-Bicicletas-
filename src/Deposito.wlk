class Deposito {
	var coleccion = []
	
	method bicisRapidas() {return coleccion.filter({bici => bici.velocidadDeCrucero() < 25})}
	method bicisMarcas() {return coleccion.map({bici => bici.marca()}).asSet()}
	method esNocturno() {return coleccion.all({bici => bici.tieneLuz()})}
	method tieneBiciCarga(carga) {return coleccion.any({bici => bici.carga() > carga})}
	method biciMasRapidaMarca() {return coleccion.max({bici => bici.velocidadDeCrucero()}).marca()}
	method agregarBici(bici) {coleccion.add(bici)}
    method quitarBici(bici) {coleccion.remove(bici)}
    method cargaTotalBicisLargas() {return coleccion.filter({bici => bici.largo()>170}).sum({bici => bici.carga()})}
    method bicisSinAccesorios() {return coleccion.count({bici => bici.accesorios().isEmpty()})}
    method posibleCompaniera(bici1) {return coleccion.filter({bici2 => bici2.marca() == bici1.marca() and bici2 != bici1 and -10 < (bici1.largo() - bici2.largo()) and (bici1.largo() - bici2.largo()) <  10})}
}
