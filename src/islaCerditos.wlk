object islaCerditos{
	var property obstaculos
	
	method obstaculoMasCercano() = obstaculos.last()
	
	method eliminarObstaculoMasCercano(){
		obstaculos.remove(self.obstaculoMasCercano())
	}
	
	method libreDeObstaculos() = obstaculos.isEmpty()
}