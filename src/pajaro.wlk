class Pajaro{
	var property ira
	
	method fuerza() = 2*ira
	
	method enojarse() = 2*ira
	
	method esFuerte() = self.fuerza() > 50
	
	method tranquilizar(){
		ira -= 5
	}
	
	method puedeDerribar(obstaculo) = self.fuerza() > obstaculo.resistencia() 

	method atacar(isla){
		if(self.puedeDerribar(isla.obstaculoMasCercano()){ //hace falta agregar que islacerditos este libre de obstaculos?
			isla.eliminarObstaculoMasCercano()
		}
	}

}

object bomb inherits Pajaro{
	var property maxFuerzaPermitido = 9000
	
	override method fuerza() = super().min(maxFuerzaPermitido)
}

object chuck inherits Pajaro{
	var property velocidad // en km por hora
	
	override method fuerza() {
		if(velocidad < 80){ return 150	}
		else{ return 150 + 5*(velocidad-80) } 
	}
	
	override method enojarse(){
		velocidad *= 2
	}	
	
	override method tranquilizar(){}
}

class Terence inherits Pajaro{
	var property multiplicador
	var property cantidadVecesQueSeEnojo
	
	constructor(mult){
		multiplicador = mult
	}
	
	override method fuerza() = multiplicador * ira * cantidadVecesQueSeEnojo

	override method enojarse(){
		super()
		cantidadVecesQueSeEnojo+=1
	}
}	

object red inherits Terence(10){
}

object matilda inherits Pajaro{
	var property huevos
	
	override method fuerza() = super() + huevos.sum({huevo=>huevo.fuerza()})

	method enojarse(){
		huevos.add(new Huevo(peso = 2))
	}
}

class Huevo{
	var property peso
	constructor(unPeso){
		peso = unPeso
	}
	
	method fuerza() = peso
}

