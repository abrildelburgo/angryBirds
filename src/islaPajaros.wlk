object islaPajaros{
	var property pajaros
	
	method pajarosFuertes() = pajaros.filter({pajaro=>pajaro.esFuerte()})

	method fuerza() = self.pajarosFuertes() .sum({pajaro=>pajaro.fuerza()})

	method suceder(unEvento){
		pajaros.forEach({pajaro=>unEvento.afectar(pajaro)})
	}
	
	method atacar(isla){
		pajaros.forEach({pajaro => pajaro.atacar(isla)})
	}
	
	method recuperaronLosHuevos() = islaCerditos.libreDeObstaculos()
}
