terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.47.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}
#setting lambda iac

resource "aws_lambda_function" "hello_world_lambda" {
  filename = "deployment.zip"
  function_name = "hello-world-lambda"
  role  = aws_iam_role.lambda_role.arn
  handler = "main.lambda_handler"
  runtime = "python3.9"
}

#setting the policy for lambda
resource "aws_iam_role" "lambda_role" {
  name = "lambda-role"

  assume_role_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Sid": "",
      "Effect": "Allow",
      "Principal": {
        "Service": "lambda.amazonaws.com"
      },
      "Action": "sts:AssumeRole"
    }
  ]
}
EOF

  tags = {
    Name = "LambdaRole"
  }
}

resource "aws_iam_role_policy_attachment" "lambda_role_attachment"{
  role = aws_iam_role.lambda_role.name
  policy_arn = "arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole"
}

#API gateway setting up