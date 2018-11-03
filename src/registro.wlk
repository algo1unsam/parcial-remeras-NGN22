object empresa {
	
	var pedidos =  []
	
	method altaPedido(pedido) = pedidos.add(pedido)
	
	method totalFacturado() = pedidos.sum{pedido => pedido.precio()}
	
	method facturacionSucursal(unaSucursal)
	{	  
	var pedidosLista = pedidos.filter{pedido => pedido.sucursal() == unaSucursal}
	return pedidosLista.sum{pedido => pedido.precio()}
	}
	
	method sucursales() = pedidos.map  { pedido => pedido.sucursal()}
	
	method sucursalMasFacturada() {
		
		return self.sucursales().max {sucursal => self.facturacionSucursal(sucursal)}
	}
	
		
	method maximoPedido() = pedidos.max { pedido => pedido.precio()}
	
	method cantidadDeColor(unColor)
	{	  
	var pedidoscolor = pedidos.filter{pedido => pedido.sucursal() == unColor}
	return pedidoscolor.size()
	}
}
