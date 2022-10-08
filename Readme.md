This Repository includes terraform modules for following resources:
There will be Two Directories
- Child Module -> Includes all the details which can be reused for creating resources.
- Parent Module -> Includes all the configuration logic to create the infrastructure.



Clone this repository:

``` 

git clone https://github.com/sanketbisne/gcp-terraform-resources.git

cd gcp-terraform-resources 

```
To create individual resources, just follow the below steps:

1. Service Account

We will create a service account for gke cluster.

Go inside the "sa" directory
```
cd service-account
terraform init
terraform plan
terraform apply

```

-> After executing the above commands, our service account will be created.

2. Custom Roles

We will create Custom Roles  and bind it with the our Service Account

Go inside the "custom-roles" directory

```
cd custom-roles
terraform init
terraform plan
terraform apply

```

-> After executing the above commands, our Custom Roles will be created.

3. VPC

Go inside the "vpc-subnets" directory

```

cd vpc-subnets
terraform init
terraform plan
terraform apply

```
-> After executing the above commands, our VPC will be created.
4. GKE
We are creating a public cluster with private endpoint.
Go inside the "simple_regional_private" directory

```

cd simple_regional_private
terraform init
terraform plan
terraform apply

```
-> After executing the above commands, our GKE cluster will be created.


Thanks, Let me know your suggestions and feedback

