# When using RSpec, use the metadata `:pact => true` to include all the pact functionality in your spec.
require 'rspec'
require_relative '../../lib/payment_service_client.rb'
require_relative '../../lib/payment.rb'
require_relative 'pact_helper.rb'

describe PaymentServiceClient, :pact => true do

  before do
    # Configure your client to point to the stub service on localhost using the port you have specified
    PaymentServiceClient.base_uri 'localhost:1234'
  end

  subject { PaymentServiceClient.new }

  describe "get_payment" do

    before do
      payment_service.given("un pago existe").
        upon_receiving("una petición de un pago").
        with(method: :get, path: '/payments/1234', query: '').
        will_respond_with(
          status: 200,
          headers: {'Content-Type' => 'application/json; charset=utf-8'},
          body: {
            id: 1234,
            valor: 224.25,
            direccionFactura: "Estadio Rodrigo Paz Delgado",
            nombreFactura: "Hernán Barcos"
          }
        )
    end

    it "retorna un pago" do
      expect(subject.get_payment).to eq(Payment.new(1234, 224.25, 'Estadio Rodrigo Paz Delgado', 'Hernán Barcos'))
    end
  end
end
