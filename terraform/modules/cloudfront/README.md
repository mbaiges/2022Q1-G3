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
| [aws_cloudfront_distribution.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudfront_distribution) | resource |
| [aws_cloudfront_origin_access_identity.origin_access_identity](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudfront_origin_access_identity) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_aliases"></a> [aliases](#input\_aliases) | List of aliases. | `list` | `[]` | no |
| <a name="input_apigw_domain_name"></a> [apigw\_domain\_name](#input\_apigw\_domain\_name) | The name of the apigw domain name . Must be less than or equal to 63 characters in length. | `string` | n/a | yes |
| <a name="input_apigw_origin_id"></a> [apigw\_origin\_id](#input\_apigw\_origin\_id) | The name of the apigw. Must be less than or equal to 63 characters in length. | `string` | n/a | yes |
| <a name="input_apigw_origin_path"></a> [apigw\_origin\_path](#input\_apigw\_origin\_path) | The origin path of the apigw | `string` | n/a | yes |
| <a name="input_certificate_arn"></a> [certificate\_arn](#input\_certificate\_arn) | Certificate ARN | `string` | `null` | no |
| <a name="input_logs_prefix"></a> [logs\_prefix](#input\_logs\_prefix) | Prefix used for logging. | `string` | `""` | no |
| <a name="input_logs_s3_bucket_name"></a> [logs\_s3\_bucket\_name](#input\_logs\_s3\_bucket\_name) | Name of the logs bucket. | `string` | `""` | no |
| <a name="input_s3_domain_name"></a> [s3\_domain\_name](#input\_s3\_domain\_name) | The domain name of the bucket. Must be less than or equal to 63 characters in length. | `string` | n/a | yes |
| <a name="input_s3_origin_id"></a> [s3\_origin\_id](#input\_s3\_origin\_id) | The id of the bucket. Must be less than or equal to 63 characters in length. | `string` | n/a | yes |
| <a name="input_web_acl_id"></a> [web\_acl\_id](#input\_web\_acl\_id) | WAF ACL ID | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_access_oai"></a> [access\_oai](#output\_access\_oai) | Cloudfront Access OAI |
| <a name="output_access_oai_path"></a> [access\_oai\_path](#output\_access\_oai\_path) | Cloudfront Access OAI Path |
| <a name="output_distribution"></a> [distribution](#output\_distribution) | The cloudfront distribution |
| <a name="output_domain_name"></a> [domain\_name](#output\_domain\_name) | Cloudfront Domain Name |
<!-- END_TF_DOCS -->