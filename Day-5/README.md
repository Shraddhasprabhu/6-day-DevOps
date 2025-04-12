Session - 5

Containers will not support auto-scaling. Scale-Up : Whenever the traffic increased towards the application, we have to increase the number of servers Vertical Scaling: Vertical scaling means you have to increase the system resources. Horizontal Auto Scaling: Horizontal Scaling means we have to add additional servers to existing infrastructure.

Scale - Down: Whenever the traffic goes low towards the application, we have to remove the additional servers. Containers will not support load-balancing. If the container is down, containers will not support self healing features.

To overcome the problems, we are moving towards the orchestration tools.

What is Kubernetes? Kubernetes is a container management tool. It is going to manage all the containers. It performs automatic deployment of the application.

Kubernetes features:

Orchestration
Auto scaling
load-balancing
Self- healing
Platform-Independent: can run on any cloud.
To perform automation in Kubernetes, we have to write manifest files. create a jump server or web-in host

Launch an instance tarun-bastionhost Ubuntu 24.04 LTS t2.micro create key-pair : tarun-bastionhost RSA .ppk 30 gb storage

We have to install kubectl, eksctl, aws cli

https://github.com/Msocial123/EverNorth-DevOps-Training-Material/Install EKSCTL,Kubectl,AWS CLI.sh copy putty -> vi cluster.sh paste(right click) :wq chmod 777 cluster.sh sudo su sh cluster.sh

Search IAM in aws Users -> create user -> tarun-Kubernetes - Administrator Access AWS managed - job function -> create user Security credentials -> create access key CLI -> next ->download .csv

server -> aws configure -> paste access id and key as well as region name eksctl eksctl create cluster --name tarun-cluster --version 1.31 --region ap-northeast-2 --nodegroup-name test-linux --node-type t2.micro --nodes 3 --nodes-min 3 --nodes-max 5 --managed

Kubernetes will manage the applications in the cluster.

What is Cluster? Cluster is a group of nodes. It contains master-nodes and worker-nodes.

Master-Node: Is the hero of the cluster which is going to take care of cluster head. Responsible for total health of the cluster. Worker-Node: Worker node is where you are going to deploy the application in a cluster. In a cluster, atleast we should have one master and one worker node. Cluster are of two types: On-premises (On-site) : We have to manage this cluster by ourselves. If something goes wrong in application downtime, you are responsible for that. Cloud-Manage Clusters : This cluster is managed by the cloud providers. If something goes wrong, they are responsible for our application. In AWS, if u want to create a cluster, we have a service called eks (Elastic Kubernetes Service) ekscls - Elastic Kubernetes Service

In a master node, we have 4 components:

API server : It is a hero of the cluster. Whenever we have to perform auto-scaling load-balancing it is playing a crucial role.
ETCD : It is a distributed database where you are going to store information about cluster, application in form of key-value pairs.
Controllers : Controller is responsible for monitoring health of the application. It always checks the desired state is equal to the actual status.
Scheduler : Scheduler is a component, It is responsible for scheduling a pod in a node.
What is pod? In Kubernetes, we will run the application in a pod. pod contains containers, containers contains docker image. pod is the smallest deployable unit in Kubernetes.

Worker node Components:

Kubelet : This component exists inside worker node. Kubelet is responsible for creating pods. It is going to act as an agent. Something goes wring in the worker node, it communicates it to the master node.
Container Runtime: Container Runtime is nothing but a docker, responsible for pulling the docker image, creating containers, starting the containers. It is responsible for managing the container-lifecycle.
Kube-Proxy : kube-proxy is networking component in the worker node. kube-proxy is responsible for creating deployments, exposing applications over the internet.
snap install kubectl --classic aws eks update-kubeconfig --name shraddha-cluster --region ap-northeast-2 kubectl get nodes

When writing kubernetes manifest files, four field are important API version : It defines schema representation of objects. Kind : Defines what kinf of object you are creating. Meta-Data : Meta-data defines name of the object, if u want to use labels, we've to use meta-data. Spec : A spec defines behavior of the object.

pod.yml One cpu = 100 millicores 1gb - 1024 Megabytes

kubectl apply -f pod.yml kubectl get pods -o wide kubectl describe pod sample-pod

git clone -b master https://github.com/shraddhasprabhu/shraddha-kubernetes-manifestfiles.git

kubectl apply -f userprofile-deployment.yml kubectl apply -f usernode-js-service.yml kubectl get deployments kubectl get svc ac6b997f103d846618fdf3442e10b5da-1008850829.ap-northeast-2.elb.amazonaws.com:3130
