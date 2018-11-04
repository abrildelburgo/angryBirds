class Pared{
	var property anchoPared
	var property tipo
	
	method resistencia() = anchoPared * tipo.multiplicador()
}

object vidrio{	var property multiplicador = 10 }
object madera{	var property multiplicador = 25 }
object piedra{	var property multiplicador = 50 }

object cerditoObrero{
	var property resistencia = 50
}

class CerditoArmado{

	method resistencia() = 10 * self.resistenciaEspecifica()
	
	method resistenciaEspecifica()
}

class CerditoConCasco inherits CerditoArmado{
	var property resistenciaEspecifica
}

class CerditoConEscudo inherits CerditoArmado{
	var property resistenciaEspecifica
}

