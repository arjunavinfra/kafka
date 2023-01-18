# kafka mirror 2.0

```ruby
k3d cluster create kube-cluster \
  --agents 3 \
  --k3s-node-label topology.kubernetes.io/zone=zone-a@agent:0 \
  --k3s-node-label topology.kubernetes.io/zone=zone-b@agent:1 \
  --k3s-node-label topology.kubernetes.io/zone=zone-c@agent:2

```

NOTE
Modify the bootstrap address on mirri2-maker.yaml before apply 
bootstrap addres can fetch from 

```ruby
kubectl get endpoints
``` 


then apply all the manifest files 

```ruby
kubectl apply -f ./
```



# #cli (kafka1)

# kubectl run kafka-client-${RANDOM} --rm -ti --image bitnami/kafka:3.1.0 -- bash
