# --------------------------------------------------------------------
# Amazon Cognito output
# --------------------------------------------------------------------

output "hosted_ui_endpoint" {
  value       = "https://${aws_cognito_user_pool.this.domain}.auth.${var.aws_region_name}.amazoncognito.com/login?response_type=token&client_id=${aws_cognito_user_pool_client.this.id}&redirect_uri=${var.redirect}"
  description = "Cognito Hosted UI Endpoint"
}

output "arn" {
  value       = "arn:aws:cognito-idp:${var.aws_region_name}:${var.aws_account_id}:userpool/${aws_cognito_user_pool.this.id}"
  description = "Cognito ARN"
}

output "issuer_url" {
  value       = "https://cognito-idp.${aws_cognito_user_pool.this.domain}.amazonaws.com/${aws_cognito_user_pool.this.id}"
  description = "Cognito Base URL"
}