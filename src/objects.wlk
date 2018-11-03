class Pedidos {
	
	var property sucursal
	var property remera
	var property cantidadPedida
	method precioBase() = remera.costo() * cantidadPedida
	
	method precio() = self.precioBase() - self.descuento()
	
	method descuento() {
		var descuento = 0
		if(self.aplicaDescuento())
		{
			descuento = self.precioBase() * remera.descuento()
		}
		return  descuento
	}
	
	method aplicaDescuento() = sucursal.descuento(cantidadPedida)
	
		
}


class Sucursal{
	var property cantidad
	method descuento (cantidadPedida) = cantidadPedida > cantidad 
	
}