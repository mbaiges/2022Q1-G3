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
| [aws_lambda_function.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lambda_function) | resource |
| [aws_lambda_permission.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lambda_permission) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_api_gateway_execution_arn"></a> [api\_gateway\_execution\_arn](#input\_api\_gateway\_execution\_arn) | The API Gw execution ARN | `string` | n/a | yes |
| <a name="input_api_gateway_id"></a> [api\_gateway\_id](#input\_api\_gateway\_id) | The API GW ID | `string` | n/a | yes |
| <a name="input_aws_caller_identity_account_id"></a> [aws\_caller\_identity\_account\_id](#input\_aws\_caller\_identity\_account\_id) | the AWS caller identiti account id | `string` | n/a | yes |
| <a name="input_aws_region"></a> [aws\_region](#input\_aws\_region) | The AWS region | `string` | n/a | yes |
| <a name="input_filename"></a> [filename](#input\_filename) | The lambda filename | `string` | n/a | yes |
| <a name="input_handler"></a> [handler](#input\_handler) | The handler | `string` | n/a | yes |
| <a name="input_method"></a> [method](#input\_method) | The method | `string` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | The fuction name | `string` | n/a | yes |
| <a name="input_path"></a> [path](#input\_path) | The path | `string` | n/a | yes |
| <a name="input_runtime"></a> [runtime](#input\_runtime) | the runtime | `string` | n/a | yes |
| <a name="input_source_code_hash"></a> [source\_code\_hash](#input\_source\_code\_hash) | The source code hash | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_invoke_arn"></a> [invoke\_arn](#output\_invoke\_arn) | The lambda invoke ARN |
| <a name="output_source_arn"></a> [source\_arn](#output\_source\_arn) | The lambda source ARN |
<!-- END_TF_DOCS -->