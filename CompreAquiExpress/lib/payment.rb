class Payment
  attr_reader :valor

  def initialize(valor)
    @valor = valor
  end

  def == other
    other.is_a?(Payment) && other.valor == valor
  end
end
