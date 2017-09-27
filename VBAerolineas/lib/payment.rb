class Payment
  attr_reader :valor
  attr_reader :nombre_factura

  def initialize(valor, nombre_factura)
    @valor = valor
    @nombre_factura = nombre_factura
  end

  def == other
    other.is_a?(Payment) && other.valor == valor && other.nombre_factura == nombre_factura
  end
end
