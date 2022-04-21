1. colima start --with-kubernetes
2. kubectl cluster-info
3. colima ssh
4. docker build --file=Dockerfile --tag=spring-cloud-k8s-demo:latest --rm=true .
5. kubectl apply -f  app-deployment.yaml
6. kubectl delete -f app-deployment.yaml --> kubectl get deployments, kubectl get pods

