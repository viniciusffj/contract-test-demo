require 'httparty'

class PaymentServiceClient
  include HTTParty
  base_uri 'http://payment-service.com'

  def get_payment
    id = JSON.parse(self.class.get("/payments/1234").body)['id']
    valor = JSON.parse(self.class.get("/payments/1234").body)['valor']
    direccion_factura = JSON.parse(self.class.get("/payments/1234").body)['direccionFactura']
    nombre_factura = JSON.parse(self.class.get("/payments/1234").body)['nombreFactura']

    Payment.new(id, valor, direccion_factura, nombre_factura)
  end
end
