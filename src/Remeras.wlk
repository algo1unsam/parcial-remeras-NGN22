class Remera {
		
	var property color
	var property numero
	method costo() = talle.costo(numero) + color.costo(talle.costo(numero))
	method descuento() = 0.1
}

class Bordado inherits Remera{
	var property cantidadColores 	
	override method costo() = super() + cantidadColores * 10
	override method descuento() = 0
	
	}

class Subliminado inherits Remera{
	
	var property ancho
	var property  alto
	var property author 
	override method costo() = super() + self.precioPorSuperficie() + self.precioPorDerechos()
	
	method precioPorSuperficie() = {(ancho * alto * 0.5)}
	method precioPorDerechos() = author.costo()
	override method descuento() 
	{
		var descuento = 0
		if(author.convenio()) 
		descuento = 0.2
		return descuento
		}
	
	
}


class Marca {
	var property costo = 0
	var property convenio = false
}


//incluye blanco negro gris
class Color {
	var base = [blanco, negro, gris] 		
	method costo(valor) = 0
}

class Especial inherits Color{
	var property porcentaje = 0.1
	override method costo(valor) = valor * porcentaje 
	 
}



object talle { 
	const property costoChico = 80
	const property costoGrande = 100
	var tallesChicos = [32,33,34,35,36,37,38,39,40]
	var tallesGrandes = [41,42,43,44,45,46,47,48]
	method costo(talle) {
		var costo = costoChico 
		if(tallesGrandes.contains(talle)){
			costo = 100			
		}
		return costo
	}
	

}




object blanco {method costo(valor) = 0}
object negro {method costo(valor) = 0}
object gris {method costo(valor) = 0}
object verde {method costo(valor) = valor* 0.1}
object azul {method costo(valor) = valor* 0.1}
object amarillo {method costo(valor) = valor* 0.1}














