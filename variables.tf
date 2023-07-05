variable "myregion" {
  description = "The Aws region"
  type = string
  default = "us-east-1"
}

variable "accountId" {
  type = string
}

variable "lambda_function_name" {
  description = "What to name the lambda function"
  type = string
  default = "Hello World"
}

variable "endpoint_path" {
  description = "The GET endpoint path"
  type = string
  default = "hello"
}