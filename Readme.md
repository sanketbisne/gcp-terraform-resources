This Repository includes terraform modules for following resources:

Clone this repository from the below command.

```
git clone https://github.com/sanketbisne/gcp-terraform-resources.git

```

Run the below shell script, which will enable the below apis before provisioning the infrastructure.

```

./enable-api.sh

```
Below API's will be enable by running the shell script.

Explore other API's from this link-> https://console.cloud.google.com/apis/library/browse?project=$PROJECT_ID

```

- secretmanager.googleapis.com
- cloudbuild.googleapis.com
- container.googleapis.com
- containerregistry.googleapis.com


``` 

Let's Provision our infrastructure through terraform.

There are 5 Directories. Each containing its child module and root module

- Child Module -> Includes all the details which can be reused for creating resources.
- Parent Module -> Includes all the configuration logic to create the infrastructure.


Go into each directory:

``` 
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

5. Teardown our infrastructure

``` 

 terraform destroy 

```