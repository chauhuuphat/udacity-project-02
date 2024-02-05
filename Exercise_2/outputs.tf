# TODO: Define the output variable for the lambda function.
output "lambda_function_arn" {
  value = aws_lambda_function.lambda_udacity.arn
}

output "lambda_function_name" {
  value = aws_lambda_function.lambda_udacity.function_name
}
