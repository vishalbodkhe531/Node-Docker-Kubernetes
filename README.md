1] docker build -t node-docker-kbr .   // for build the docker imgs

2] docker run -p 3000:3000 -d node-docker-kbr // for run the docker container

3] docker login // for login

4] docker tag node-docker-kbr userName/node-docker-kbr:1.0 // for create docker tag

5] docker push userName/node-docker-kbr:1.0 // for push img into docker hub

6] docker login |  docker login -u email  // for login enter userName and pass

7] Setup the minikube on local machine 

8] minikube start  // It will run docker img on kubernetes

9] kubectl create deployment node-docker-kbr --image=userName/node-docker-kbr:1.0 --dry-run=client -o yaml > deployment.yml       // for create deployement.yaml , make   replicas: 3 and add port in yaml

10] kubectl apply -f deployment.yaml  // for apply the deployment 

11]  kubectl expose deployment node-docker-kbr --port=80 --target-port=3000 --type=LoadBalancer --dry-run=client -o yaml > service.yaml  // for create the deployment 

12] kubectl apply -f service.yaml // for apply the services 

13] kubectl get deployment // for see the deployment

14]  kubectl get pods // for get pods

15]  kubectl get all // for get all info

16]  kubectl logs podsName // for know where is pods running

17]  minikube service LoadBalencerServiceName --url // for check application

18]  kubectl describe deployment node-docker-kbr // for see details about deployment

19]  kubectl describe service node-docker-kbr  // for see details about service

