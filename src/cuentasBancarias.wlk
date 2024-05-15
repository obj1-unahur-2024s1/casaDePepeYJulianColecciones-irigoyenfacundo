object cuentaCorriente {
	var saldo = 0
	method depositar(importe) { saldo += importe}
	
	method extraer(importe) {saldo -= importe}

	method saldo() { return saldo}
}

object cuentaConGastos {
	
	var saldo = 0
	
	method depositar(importe) { saldo += importe - 200}
	
	method extraer(importe) {
		if (importe <= 10000) {
			saldo -= importe - 200
		}
		else {
			saldo -= importe - (importe * 0.02)
		}
	}
	
	method saldo() { return saldo}
	
}

object cuentaCombinada {
	var cuentaPrimaria = 0
	var cuentaSecundaria = 0
	
	method depositar(importe) { cuentaPrimaria += importe}
	
	method extraer(importe) { 
		if (cuentaPrimaria >= importe) {
			cuentaPrimaria -= importe
		}
		else {
			cuentaSecundaria -= importe
		}
	}
	
	method saldo() { return cuentaPrimaria + cuentaSecundaria}
}