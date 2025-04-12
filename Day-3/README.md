Session - 3 Terraform script Terraform is a IAC(infrastructure as a code) tool. Whenever u want to create cloud resources, like ec2, vpc, subnets, load balancers, database servers, any resources if u want to create by using automation or script, we are using terraform.

Setting up Terraform: Step 1: Install Terraform on Windows machine Step 2: We have to set Terraform Path Step 3: Configure AWS credentials from CLI(Install AWS CLI) Step 4:

HCL introduced Terraform

Security, Identity and Compliance IAM ec2 full access, vpc full access access keys cli download .csv

go to command line aws configure access key : from .csv secret key : from .csv region code : ap-south-1 default output format : ""

Open folder Terraform_Scripts from VSCode create a .tf file (ec2.tf)

tf is a scripting language when u write terraform files, we have to use different blocks -

provider blocks: Defines in whivh cloud u r doing automation (AWS, Azure, GCP)
resource block : what kind of resource u want to create on cloud (ec2, vpc, load balancers, subnets)
Variable blocks: pass any parameter as a variable Output.tf file :if u want to print output in console, like public ip address, private ip addres, vpc name, vpc id
When creating instance using terraform script, make sure to pass the 5 parameters

Amazon id
Instance Type
Key-Pair Name
Storage
Instance Name
ami - amazon machine image get ami and put in script put key-pair(create if u want)

terraform init command will initialize terraform backend configuration with cloud provider api it is going to generate one license key to authenticate cloud provider api as well as it is going to create .terraform folder which contains license and necessary files

terraform validate

terraform plan

terraform apply

terraform destroy command will automatically delete all the resources created.

When you execute the command called terraform plan, it will create terraform.tfstate file which contains current state of the infrastructure, if hacker can hack the terraform.tfstate files, he can create any instance, hence it has to be protected and stored in cloud.

ARN - Amazon Resource Name

VPC - Virtual Private Cloud

|Region | | | | ______________________________ | | | | | | | | | | | | | | | | | | | | | | | | |

Create VPC availabilty zone subnet ip address

Create terraform script to implement the aws architecture create a vpc name of the vpc should be tarun-vpc cidr block of the vpc should be 10.0.0.0/16 tenancy should be default, create a subnet within the vpc cidr block should be 10.0.1.0/24 subnet name tarun-subnet, availability zone should be ap-south-1a, Implement this script like main.tf, variables.tf, output.tf

whenever u do modifications, use command terraform init terraform validate terraform plan terraform apply terraform destroy

what is Docker? Docker is a containerisation tool which can help us to create portable applications to use resources effectively, to create platform independent applications. Docker is going to perform OS level virtualisation techniques We are going to use docker to reduce the cost of the servers, to run the applications wherever you want. Applications will divide into modules called microservices. Each and every microservice will have a separate docker file, separate docker image, separate docker container Every microservice application will deploy in a container.

Monolithic applications are nothing but it's a single tier architecture which means web server, application server and database server are combined together and we are deploying in a single server. Issues with the monolithic application : If any module goes down, the complete application goes down. Since it has tightly coupled nature. Flipkart has 622 microservices. If one service goes down, the entire application goes down. That's the reason we are moving towards microservices.

What is microservices? We will break down applications into independent services that's called loosely coupled applications. If any one service goes down, the customer will not be able to access that particular service, the remaining services can still be accessed. There are some issues with the microservices: Each microservice requires a single server, so cost is high To reduce the cost, to effectively use resources, to create platform independent applications, to create portable applications Build Once, Run Anywhere

Docker Desktop Requires wsl
