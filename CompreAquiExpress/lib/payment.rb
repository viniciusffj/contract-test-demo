class Payment
  attr_reader :id
  attr_reader :valor
  attr_reader :direccion_factura
  attr_reader :nombre_factura

  def initialize(id, valor, direccion_factura, nombre_factura)
    @id = id
    @valor = valor
    @direccion_factura = direccion_factura
    @nombre_factura = nombre_factura
  end

  def == other
    other.is_a?(Payment) && other.id == id && other.valor == valor && other.direccion_factura == direccion_factura && other.nombre_factura == nombre_factura
  end
end
