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
| [aws_waf_ipset.ipset](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/waf_ipset) | resource |
| [aws_waf_rule.waf_rule](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/waf_rule) | resource |
| [aws_waf_rule_group.rule_group](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/waf_rule_group) | resource |
| [aws_waf_web_acl.waf_acl](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/waf_web_acl) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_waf_rule_group_metrics"></a> [waf\_rule\_group\_metrics](#input\_waf\_rule\_group\_metrics) | The waf rule group metrics | `string` | n/a | yes |
| <a name="input_waf_rule_group_name"></a> [waf\_rule\_group\_name](#input\_waf\_rule\_group\_name) | The waf rule group mame | `string` | n/a | yes |
| <a name="input_waf_rule_metrics"></a> [waf\_rule\_metrics](#input\_waf\_rule\_metrics) | The waf rule metrics | `string` | n/a | yes |
| <a name="input_waf_rule_name"></a> [waf\_rule\_name](#input\_waf\_rule\_name) | The waf rule name | `string` | n/a | yes |
| <a name="input_web_acl_metics"></a> [web\_acl\_metics](#input\_web\_acl\_metics) | The web acl metrics | `string` | n/a | yes |
| <a name="input_web_acl_name"></a> [web\_acl\_name](#input\_web\_acl\_name) | The web acl name | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_aws_waf_rule_arn"></a> [aws\_waf\_rule\_arn](#output\_aws\_waf\_rule\_arn) | The AWS waf rule arn |
| <a name="output_aws_waf_rule_group_arn"></a> [aws\_waf\_rule\_group\_arn](#output\_aws\_waf\_rule\_group\_arn) | The AWS waf group arn |
| <a name="output_aws_waf_rule_group_id"></a> [aws\_waf\_rule\_group\_id](#output\_aws\_waf\_rule\_group\_id) | The AWS waf group id |
| <a name="output_aws_waf_rule_id"></a> [aws\_waf\_rule\_id](#output\_aws\_waf\_rule\_id) | The AWS waf rule id |
| <a name="output_aws_waf_web_acl_arn"></a> [aws\_waf\_web\_acl\_arn](#output\_aws\_waf\_web\_acl\_arn) | The AWS waf web acl arn |
| <a name="output_aws_waf_web_acl_id"></a> [aws\_waf\_web\_acl\_id](#output\_aws\_waf\_web\_acl\_id) | The AWS waf web acl id |
<!-- END_TF_DOCS -->