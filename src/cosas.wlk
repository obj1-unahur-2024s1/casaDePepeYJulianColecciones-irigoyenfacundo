import dolar.*

// Como ya sabemos crear objetos y definir algunos métodos simples, 
// algunos los tenemos parcialmente definidos. Completar todo los demás
// para satisfacer lo que pide el enunciado.

object heladera {
	method precio() { return 200000 }
	method esComida() { return false }
	method esElectrodomestico() { return true }	
}

object cama {
	method precio() { return 80000 }
	method esComida() { return false }
	method esElectrodomestico() { return false }	
}

object tiraDeAsado {
	method precio() { return 3500 }
	method esComida() { return true }
	method esElectrodomestico() { return false }	
}

object paqueteDeFideos {
	method precio() { return 500 }
	method esComida() { return true }
	method esElectrodomestico() { return false }	
}

object plancha {
	method precio() { return 12000 }
	method esComida() { return false }
	method esElectrodomestico() { return true }	
}

object kiloDeMilanesa {
	method precio() { return 2600}
	method esComida() {return true}
	method esElectrodomestico() { return false}
}

object botellaDeSalsa {
	method precio() { return 900}
	method esComida() {return true}
	method esElectrodomestico() { return false}
}

object microondas {
	method precio() { return 42000}
	method esComida() {return false}
	method esElectrodomestico() { return true}
}

object kiloDeCebollas {
	method precio() { return 250}
	method esComida() {return true}
	method esElectrodomestico() { return false}
}

object computadora {
	method precio() { return 500 * dolar.precioDeVenta()}
	method esComida() {return false}
	method esElectrodomestico() { return true}
}

object packDeComida { 
	const pack = []
	method agregarAlPlato(cosa) {pack.add(cosa)}
	method precio() { return pack.sum({ x => x.precio()})}
	method esComida(){ return true}
	method esElectrodomestico() {return false}
}
