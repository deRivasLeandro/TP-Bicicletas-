class Bici {
	var rodado
    var largo 
    var marca
    var accesorios = []
	
	method setRodado(rodadoNuevo) {rodado = rodadoNuevo}
	method setLargo(largoNuevo) {largo = largoNuevo}
	method setMarca(marcaNueva) {marca = marcaNueva}
	method rodado() {return rodado}
	method largo() {return largo}
	method marca() {return marca}
	method accesorios() {return accesorios}
    method altura() {return rodado * 2.5 + 15}
	method velocidadDeCrucero() {
        if (largo > 120){
        	return rodado + 6
        }
        else {
        	return rodado + 2
        }
    }
    method carga() {return accesorios.sum({acc => acc.carga()})}
    method peso() {return rodado/2 + accesorios.sum({acc => acc.peso()})}
    method tieneLuz() {return accesorios.any({acc => acc.esLuminoso()})}
    method cantLivianos() {return accesorios.count({acc => acc.peso() < 1})}
    method agregarAccesorio(accesorio) {accesorios.add(accesorio)}
    method quitarAccesorio(accesorio) {accesorios.remove(accesorio)}
}
