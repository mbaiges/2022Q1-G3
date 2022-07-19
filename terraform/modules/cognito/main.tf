# ------------------------------------------------------------------------------
# Amazon Cognito
# ------------------------------------------------------------------------------

resource "aws_cognito_user_pool" "this" {
  name = var.pool_name

  alias_attributes = [
    "email",
    "preferred_username"
  ]

  password_policy {
    minimum_length                   = 8
    require_lowercase                = true
    require_symbols                  = true
    require_numbers                  = true
    require_uppercase                = true
    temporary_password_validity_days = 7
  }

  schema {
    attribute_data_type      = "String"
    developer_only_attribute = false
    mutable                  = true
    name                     = "email"
    required                 = true

    string_attribute_constraints {
      max_length = "1024"
      min_length = "0"
    }
  }

  username_configuration {
    case_sensitive = true
  }

  verification_message_template {
    default_email_option = "CONFIRM_WITH_CODE"
  }

  account_recovery_setting {
    recovery_mechanism {
      name     = "verified_email"
      priority = 1
    }
  }

  email_configuration {
    email_sending_account = "COGNITO_DEFAULT"
  }

  auto_verified_attributes = ["email"]
}

resource "aws_cognito_user_pool_client" "this" {
  name         = var.client_name
  user_pool_id = aws_cognito_user_pool.this.id

  callback_urls = ["${var.redirect}"]

  allowed_oauth_flows_user_pool_client = true
  allowed_oauth_flows                  = ["code", "implicit"]
  allowed_oauth_scopes                 = ["phone", "email", "openid", "profile"]
  supported_identity_providers         = ["COGNITO"]
  id_token_validity                    = "60" # 1 h
  access_token_validity                = "60" # 1 h
  explicit_auth_flows                  = ["ALLOW_CUSTOM_AUTH", "ALLOW_REFRESH_TOKEN_AUTH", "ALLOW_USER_SRP_AUTH"]
  prevent_user_existence_errors        = "ENABLED"
  read_attributes                      = ["email", "gender", "name", "picture", "preferred_username"]

  token_validity_units {
    access_token  = "minutes"
    id_token      = "minutes"
    refresh_token = "days"
  }

  write_attributes = ["email", "gender", "name", "picture", "preferred_username"]
}

resource "aws_cognito_user_pool_domain" "this" {
  domain       = var.domain_name
  user_pool_id = aws_cognito_user_pool.this.id
}

resource "aws_cognito_user_pool_ui_customization" "this" {
  css        = ".label-customizable {font-weight: 400;}"
  image_file = var.ui_image

  user_pool_id = aws_cognito_user_pool_domain.this.user_pool_id
}