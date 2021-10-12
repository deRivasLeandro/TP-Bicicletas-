object farolito {
    const peso = 0.5
    const carga = 0
    const luminoso = true 
    
    method peso() {return peso}
    method carga() {return carga}
    method esLuminoso() {return luminoso}
}


class Canasto {
    var volumen 
    var peso
    var carga 
    const luminoso = false
	
    method setVolumen(volNuevo) {volumen = volNuevo peso = volumen/10 carga = volumen*2}
    method volumen() {return volumen}
    method peso() {return peso}
    method carga() {return carga}
    method esLuminoso(){return luminoso}
}

class MorralDeBici {
    var largo
    var ojoDeGato = false
    const peso = 1.2 
    var carga
    var luminoso = false

    method setLargo(largoNuevo){largo = largoNuevo carga = largo/3}
    method modificarOjoDeGato() {
        ojoDeGato = not ojoDeGato
        luminoso = not luminoso
    }
    method largo() {return largo}
    method ojoDeGato() {return ojoDeGato}
    method peso() {return peso}
    method carga() {return carga}
    method esLuminoso() {return luminoso}
}