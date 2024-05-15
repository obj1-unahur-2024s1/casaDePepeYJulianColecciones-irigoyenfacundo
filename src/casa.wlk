import cosas.* //obviamente, vamos a usar los objetos del archivo cosas ;-)
import cuentasBancarias.*

object casaDePepeYJulian {
	
	var cuentaAUsar 
	const cosas = []

	method comprar(cosa){
		cosas.add(cosa)
		self.gastar(cosa.precio())
	}
	
	method cuentaAUsar(cuenta) {cuentaAUsar = cuenta}
	
	method cantidadDeCosasCompradas(){cosas.size()}
	
	method tieneComida() {return cosas.contains(paqueteDeFideos) or cosas.contains(tiraDeAsado)}
	
	method vieneDeEquiparse() {return cosas.last().esElectrodomestico() or cosas.last().precio() > 50000 }
		
	method esDerrochona() { return cosas.sum({ x => x.precio()})}
	
	method compraMasCara() {return cosas.max({x => x.precio()})}
	
	method electrodomesticosComprados() { return cosas.filter({ x => x.esElectrodomestico() })}
	
	method malaEpoca() { return cosas.all({ x => x.esComida()})}
	
	method queFaltaComprar(lista) { return lista - cosas}
	
	method faltaComida() { return cosas.count({x => x.esComida() < 2 })}
	
	method gastar(importe) {cuentaAUsar.extraer(importe)}
	
	method dineroDisponible() {return cuentaAUsar.saldo()} 
}
