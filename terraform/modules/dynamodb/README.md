<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0.6 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 4.10.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 4.10.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_dynamodb_table.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/dynamodb_table) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_tables"></a> [tables](#input\_tables) | DynamoDB Tables | <pre>map(object({<br>    billing_mode                       = string<br>    read_capacity                      = string<br>    write_capacity                     = string<br>    hash_key                           = string<br>    range_key                          = string<br>    attributes                         = map(any)<br>    local_secondary_indexes            = map(any)<br>    global_secondary_indexes           = map(any)<br>    replica_regions                    = map(any)<br>    server_side_encryption_enabled     = bool<br>    server_side_encryption_kms_key_arn = string<br>    tags                               = map(string)<br>  }))</pre> | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->