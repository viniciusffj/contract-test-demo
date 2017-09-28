curl -v -XPUT -H "Content-Type: application/json" \
  -d@spec/pacts/compreaquiexpress-apipago.json \
  http://localhost:2222/pacts/provider/APIPago/consumer/CompreAquiExpress/version/0.2
