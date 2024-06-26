echo -e 'Deleting kafka topics'
kafka-topics --bootstrap-server $1:9092 --topic payment-request --delete --if-exists
kafka-topics --bootstrap-server $1:9092 --topic payment-response --delete --if-exists
kafka-topics --bootstrap-server $1:9092 --topic restaurant-approval-request --delete --if-exists
kafka-topics --bootstrap-server $1:9092 --topic restaurant-approval-response --delete --if-exists
kafka-topics --bootstrap-server $1:9092 --topic customer --delete --if-exists

echo -e 'Creating kafka topics'
kafka-topics --bootstrap-server $1:9092 --create --if-not-exists --topic payment-request --replication-factor 3 --partitions 3
kafka-topics --bootstrap-server $1:9092 --create --if-not-exists --topic payment-response --replication-factor 3 --partitions 3
kafka-topics --bootstrap-server $1:9092 --create --if-not-exists --topic restaurant-approval-request --replication-factor 3 --partitions 3
kafka-topics --bootstrap-server $1:9092 --create --if-not-exists --topic restaurant-approval-response --replication-factor 3 --partitions 3
kafka-topics --bootstrap-server $1:9092 --create --if-not-exists --topic customer --replication-factor 3 --partitions 3