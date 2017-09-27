require 'pact/consumer/rspec'

Pact.service_consumer "VBAerolineas" do
  has_pact_with "APIPago" do
    mock_service :payment_service do
      port 1234
    end
  end
end
