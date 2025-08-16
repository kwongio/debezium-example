curl -X POST http://localhost:8083/connectors -H "Content-Type: application/json" -d "{\"name\":\"mysql-connector\",\"config\":{\"connector.class\":\"io.debezium.connector.mysql.MySqlConnector\",\"database.hostname\":\"mysql\",\"database.port\":\"3306\",\"database.user\":\"mysqluser\",\"database.password\":\"mysqlpw\",\"database.server.id\":\"184054\",\"database.server.name\":\"dbserver1\",\"database.include.list\":\"inventory\",\"table.include.list\":\"inventory.customers\",\"topic.prefix\":\"dbserver1\",\"database.history.kafka.bootstrap.servers\":\"kafka:9092\",\"database.history.kafka.topic\":\"schema-changes.inventory\",\"key.converter\":\"org.apache.kafka.connect.json.JsonConverter\",\"value.converter\":\"org.apache.kafka.connect.json.JsonConverter\",\"key.converter.schemas.enable\":\"false\",\"value.converter.schemas.enable\":\"false\"}}"


curl http://localhost:8083/connectors


curl http://localhost:8083/connectors/inventory-connector/status
