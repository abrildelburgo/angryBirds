object manejoIra{
	method afectar(pajaro){
		pajaro.tranquilizar()
	}
}

class InvasionCerditos{
	var property cerditosQueInvaden
	
	method afectar(pajaro){
		cerditosQueInvaden.div(100).times({x=>pajaro.enojarse()})
	}
}

class FiestaSorpresa{
	var property homenajeados
	
	method afectar(pajaro){
		if(homenajeados.contains(pajaro)){
			pajaro.enojarse()
		}
		else if(homenajeados.isEmpty()){
			self.error("no hay homenajeados")	
		}
	}
}

class EventosDesafortunados{
	var property eventos
	
	method afectar(pajaro){
		eventos.forEach({evento => evento.afectar(pajaro)})
	}
}
