output "region" {
  value = var.aws_region
}

output "counter_api_base_url" {
  value = aws_apigatewayv2_api.counter_api.api_endpoint
}

output "counter_api_url" {
  value = "${aws_apigatewayv2_api.counter_api.api_endpoint}/counter"
}
