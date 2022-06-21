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
| <a name="provider_template"></a> [template](#provider\_template) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_api_gateway_deployment.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/api_gateway_deployment) | resource |
| [aws_api_gateway_rest_api.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/api_gateway_rest_api) | resource |
| [aws_api_gateway_stage.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/api_gateway_stage) | resource |
| [template_file.this](https://registry.terraform.io/providers/hashicorp/template/latest/docs/data-sources/file) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_api_description"></a> [api\_description](#input\_api\_description) | The description of the api gateway. Must be less than or equal to 63 characters in length. | `string` | `""` | no |
| <a name="input_api_name"></a> [api\_name](#input\_api\_name) | The name of the api gateway. Must be less than or equal to 63 characters in length. | `string` | n/a | yes |
| <a name="input_api_template"></a> [api\_template](#input\_api\_template) | API Template | `string` | n/a | yes |
| <a name="input_api_template_vars"></a> [api\_template\_vars](#input\_api\_template\_vars) | API Template Variables for replacement | `map(any)` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_api_endpoint"></a> [api\_endpoint](#output\_api\_endpoint) | The API GW enpoint url |
| <a name="output_execution_arn"></a> [execution\_arn](#output\_execution\_arn) | The API GW execution arn |
| <a name="output_id"></a> [id](#output\_id) | The API GW ID |
<!-- END_TF_DOCS -->