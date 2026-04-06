# Docker + Kubernetes Setup Guide

This guide will help you build, run, and deploy your Node.js application using Docker and Kubernetes (Minikube).

---

## Step 1: Build Docker Image

```bash
docker build -t node-docker-kbr .
```

This will create your Docker image.

---

## Step 2: Run Docker Container

```bash
docker run -p 3000:3000 -d node-docker-kbr
```

This will start your container on port 3000.

---

## Step 3: Login to Docker Hub

```bash
docker login
```

Enter your username and password.

**Alternative:**

```bash
docker login -u yourUsername
```

---

## Step 4: Tag Docker Image

```bash
docker tag node-docker-kbr yourUsername/node-docker-kbr:1.0
```

This prepares your image for pushing to Docker Hub.

---

## Step 5: Push Image to Docker Hub

```bash
docker push yourUsername/node-docker-kbr:1.0
```

Upload your image to Docker Hub.

---

## Step 6: Setup Minikube

Install Minikube on your local machine (if not installed).

---

## Step 7: Start Minikube

```bash
minikube start
```

This will start Kubernetes locally.

---

## Step 8: Create Deployment YAML

```bash
kubectl create deployment node-docker-kbr \
--image=yourUsername/node-docker-kbr:1.0 \
--dry-run=client -o yaml > deployment.yaml
```

After creating the file:

- Set `replicas: 3`
- Add container port `3000`

---

## Step 9: Apply Deployment

```bash
kubectl apply -f deployment.yaml
```

---

## Step 10: Create Service YAML

```bash
kubectl expose deployment node-docker-kbr \
--port=80 \
--target-port=3000 \
--type=LoadBalancer \
--dry-run=client -o yaml > service.yaml
```

---

## Step 11: Apply Service

```bash
kubectl apply -f service.yaml
```

---

## Step 12: Check Deployment

```bash
kubectl get deployment
```

---

## Step 13: Check Pods

```bash
kubectl get pods
```

---

## Step 14: Check All Resources

```bash
kubectl get all
```

---

## Step 15: Check Logs

```bash
kubectl logs podName
```

Replace `podName` with your actual pod name.

---

## Step 16: Access Application

```bash
minikube service serviceName --url
```

Replace `serviceName` with your service name.

---

## Step 17: Describe Deployment

```bash
kubectl describe deployment node-docker-kbr
```

---

## Step 18: Describe Service

```bash
kubectl describe service node-docker-kbr
```

---

## Done!

Now your application is:

- Built with Docker 
- Pushed to Docker Hub 
- Deployed on Kubernetes (Minikube) 

---

**Note:**

- Make sure Docker and Minikube are installed and running.
- Replace `yourUsername` with your actual Docker Hub username.
