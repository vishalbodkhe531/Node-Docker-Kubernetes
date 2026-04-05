1] docker build -t node-docker-kbr .   // for build the docker imgs

2] docker run -p 3000:3000 -d node-docker-kbr // for run the docker container

3] docker login // for login

4] docker tag node-docker-kbr userName/node-docker-kbr:1.0 // for create docker tag

5] docker push vishalbodkhe532/node-docker-kbr:1.0 // for push img into docker hub

6] docker login |  docker login -u email  // for login enter userName and pass

7] Setup the minikube on local machine 

8] minikube start  // It will run docker img on kubernetes