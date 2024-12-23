module "lambda_function" {
  source = "terraform-aws-modules/lambda/aws"

  function_name = "pek-lambda1"
  description   = "Pek lambda function"
  handler       = "index.lambda_handler"
  runtime       = "python3.12"

  source_path = ["${path.module}/lambda-code/src/lambda-functions"]
  tags = {
    Name = "pek-lambda1"
  }
}