require 'httparty'

class PaymentServiceClient
  include HTTParty
  base_uri 'http://payment-service.com'

  def get_payment
    valor = JSON.parse(self.class.get("/payments/1234").body)['valor']
    nombre_factura = JSON.parse(self.class.get("/payments/1234").body)['nombreFactura']

    Payment.new(valor, nombre_factura)
  end
end
