

kafka 1

```ruby
kubectl -n strimzi run kafka-topic-creator -ti --image=strimzi/kafka:0.20.1-kafka-2.5.1 --rm=true --restart=Never --  bin/kafka-topics.sh --bootstrap-server netflix-kafka-bootstrap:9092 --topic test --create --partitions 1 --replication-factor 1``` 
```


kafka producer
```ruby
kubectl  run kafka-producer -ti --image=quay.io/strimzi/kafka:0.32.0-kafka-3.3.1 --rm=true --restart=Never -- bin/kafka-console-producer.sh --bootstrap-server netflix-kafka-bootstrap:9092 --topic test```



kafka consumer


```ruby
kubectl run kafka-consumer -ti --image=strimzi/kafka:0.20.1-kafka-2.5.1 --rm=true --restart=Never -- bin/kafka-console-consumer.sh --bootstrap-server netflix-kafka-bootstrap:9092 --topic test --from-beginning```



```ruby
kubectl run kafka-consumer-${RANDOM} -ti --image=strimzi/kafka:0.20.1-kafka-2.5.1 --rm=true --restart=Never -- bin/kafka-topics.sh --bootstrap-server  prime-kafka-bootstrap:9092 --list```
