# terraform-aws-lambda-apiGW

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