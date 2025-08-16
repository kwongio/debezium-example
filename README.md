

### Debezium MySQL CDC Example
https://github.com/debezium/debezium-examples/tree/main/tutorial

### linux
```
curl -i -X POST -H "Accept:application/json" -H  "Content-Type:application/json" http://localhost:8083/connectors/ -d @register-mysql.json
```

### window powershell connector 설정
```jsx
$headers = @{
"Accept" = "application/json"
"Content-Type" = "application/json"
}

$body = Get-Content -Raw -Path ".\register-mysql.json"

Invoke-RestMethod -Method Post -Uri "http://localhost:8083/connectors/" -Headers $headers -Body $body

```





### consume으로 CDC 데이터  확인
```jsx
docker-compose -f docker-compose-mysql.yaml exec kafka /kafka/bin/kafka-console-consumer.sh --bootstrap-server kafka:9092 --from-beginning --property print.key=true --topic dbserver1.inventory.customers
```