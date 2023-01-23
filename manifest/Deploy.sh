k3d cluster create kube-cluster \
  --agents 3 \
  --k3s-node-label topology.kubernetes.io/zone=zone-a@agent:0 \
  --k3s-node-label topology.kubernetes.io/zone=zone-b@agent:1 \
  --k3s-node-label topology.kubernetes.io/zone=zone-c@agent:2

 k3d registry create test-app-registry --port 5050

kubectl apply -f ./



# #cli (kafka1)

# kubectl run kafka-client-${RANDOM} --rm -ti --image bitnami/kafka:3.1.0 -- bash

NOTE bootstrap addres can fetch from ```ruby kubectl get endpoints``` 

# #Create a topic with at least 2 partitions and send data to it

# kafka-topics.sh --bootstrap-server kafka-svc.kafka1.svc.cluster.local:9092 --topic test --create --partitions 1 --replication-factor 1


# #Create a first kafka-console-consumer and assign a group name with --group (kafka1)

# kafka-console-consumer.sh  --bootstrap-server kafka-svc.kafka1.svc.cluster.local:9092  --topic  test --group my-group

# #Create a secound kafka-console-consumer and assign a group name with --group (kafka1) - new terminal 

# kafka-console-consumer.sh  --bootstrap-server kafka-svc.kafka1.svc.cluster.local:9092  --topic  test --group my-group

# #Send data to the topic and you will see consumers sharing the reads

#   kafka-console-producer.sh \
#   --topic  test \
#   --request-required-acks all \
#   --bootstrap-server kafka-svc.kafka1.svc.cluster.local:9092



# #pull data

# kubectl run kafka-client-${RANDOM} --rm -ti --image bitnami/kafka:3.1.0 -- bash

#    kafka-console-consumer.sh \
#    --topic  test \
#    --from-beginning \
#    --bootstrap-server kafka-svc.kafka1.svc.cluster.local:9092

# #list topic 

#     kafka-topics.sh --bootstrap-server kafka-svc.kafka1.svc.cluster.local:9092\
#     --list #cluster 1
#     kafka-topics.sh --bootstrap-server kafka-svc.kafka1.svc.cluster.local:9092\
#     --list #cluster 2

# # describe topic

#     kafka-topics.sh --describe --bootstrap-server kafka-svc.kafka1.svc.cluster.local:9092\
#     --topic test



# # kubectl drain k3d-kube-cluster-agent-0 \
# #   --delete-emptydir-data \
# #   --force \
# #   --ignore-daemonsets


# # kubectl run kafka-client-${RANDOM} --rm -ti --image bitnami/kafka:3.1.0 -- bash


# # kubectl uncordon k3d-kube-cluster-agent-0




# # kubectl drain k3d-kube-cluster-agent-0 \
# #   --delete-emptydir-data \
# #   --force \
# #   --ignore-daemonsets


# # kubectl drain k3d-kube-cluster-agent-1 \
# #   --delete-emptydir-data \
# #   --force \
# #   --ignore-daemonsets




# #  kubectl delete node  k3d-kube-cluster-agent-0


# # k3d node create kube-cluster-new-agent \
# #   --cluster kube-cluster \
# #   --k3s-node-label topology.kubernetes.io/zone=zone-c@agent:3


# # kubectl delete pvc data-kafka-0


