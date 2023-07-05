# terraform-aws-lambda-apiGW
This project makes the integration from AWS: lambda, API Gateway.
The API gateway is a trigger to the lambda function, this api is
configure to only have the "GET" method for now.

# terraform-lambda-apiGateway

#1. First you need to replace your accountId at terraform.tfvars

accountId = "yourAccountID"

#2. make sure you are inside a path that has the .tf files to execute the commands below:
>>terraform init
>>terraform plan
>>terraform apply

PS: if you don't have AWS CLI installed, and the credentials configured,
you will need to export your AWS account variables throught terminal once
ITS NOT RECOMMENDED TO HAVE THEM HARD CODED.
