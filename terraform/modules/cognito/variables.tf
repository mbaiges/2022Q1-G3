# ------------------------------------------------------------------------
# Amazon Cognito variables
# ------------------------------------------------------------------------

variable "pool_name" {
  type        = string
  description = "Pool name"
}

variable "client_name" {
  type        = string
  description = "Client name"
}

variable "redirect" {
  type        = string
  description = "Redirect URI"
}

variable "domain_name" {
  type        = string
  description = "App domain name"
}

variable "ui_image" {
  description = "UI Image"
}

variable "aws_region_name" {
  type        = string
  description = "AWS Region"
}

variable "aws_account_id" {
  type        = string
  description = "AWS Account ID" 
}