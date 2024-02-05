# IAM Assume Role for Lambda 
resource "aws_iam_role" "lambda_iam" {
  name = var.iam_role_name
  assume_role_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
      {
        "Action": "sts:AssumeRole",
        "Effect": "Allow",
        "Principal": {
          "Service": "lambda.amazonaws.com"
        }
      }
    ]
}
EOF
}

resource "aws_iam_role_policy_attachment" "lambda_logs" {
  role       = aws_iam_role.lambda_iam.name
  policy_arn = "arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole"
}

# Cloud Watch Group for Lambda
resource "aws_cloudwatch_log_group" "lambda_log_group" {
  name = "/aws/lambda/${aws_lambda_function.lambda_udacity.function_name}"
  retention_in_days = 7
}

# Archive source code
data "archive_file" "source_code" {
  type = "zip"
  source_file = "greet_lambda.py"
  output_path = var.output_path
}
# Create Lambda Function
resource "aws_lambda_function" "lambda_udacity" {
  function_name = "Udacity_exercise_2"
  filename = var.output_path
  handler = "greet_lambda.lambda_handler"
  runtime = "python3.8"
  role = aws_iam_role.lambda_iam.arn
  environment {
    variables = {
      greeting = "Test/Dev"
    }
  }
}


