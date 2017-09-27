curl -v -XPUT -H "Content-Type: application/json" \
  -d@spec/pacts/vbaerolineas-apipago.json \
  http://localhost:2222/pacts/provider/APIPago/consumer/VBAerolineas/version/0.1
