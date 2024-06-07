<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 4.56.0 |
| <a name="requirement_clickhouse"></a> [clickhouse](#requirement\_clickhouse) | 0.0.5-beta.1 |
| <a name="requirement_random"></a> [random](#requirement\_random) | 3.6.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 4.56.0 |
| <a name="provider_clickhouse"></a> [clickhouse](#provider\_clickhouse) | 0.0.5-beta.1 |
| <a name="provider_random"></a> [random](#provider\_random) | 3.6.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_secretsmanager_secret.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/secretsmanager_secret) | resource |
| [aws_secretsmanager_secret_version.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/secretsmanager_secret_version) | resource |
| [clickhouse_private_endpoint_registration.this](https://registry.terraform.io/providers/ClickHouse/clickhouse/0.0.5-beta.1/docs/resources/private_endpoint_registration) | resource |
| [clickhouse_service.this](https://registry.terraform.io/providers/ClickHouse/clickhouse/0.0.5-beta.1/docs/resources/service) | resource |
| [random_password.this](https://registry.terraform.io/providers/hashicorp/random/3.6.0/docs/resources/password) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cloud_provider"></a> [cloud\_provider](#input\_cloud\_provider) | Cloud provider where cluster will be running | `string` | n/a | yes |
| <a name="input_double_sha1_password_hash"></a> [double\_sha1\_password\_hash](#input\_double\_sha1\_password\_hash) | MySQL connection style password | `string` | `null` | no |
| <a name="input_idle_scaling"></a> [idle\_scaling](#input\_idle\_scaling) | n/a | `bool` | `null` | no |
| <a name="input_idle_timeout_minutes"></a> [idle\_timeout\_minutes](#input\_idle\_timeout\_minutes) | n/a | `number` | `null` | no |
| <a name="input_ip_access"></a> [ip\_access](#input\_ip\_access) | n/a | `list(string)` | n/a | yes |
| <a name="input_max_total_memory_gb"></a> [max\_total\_memory\_gb](#input\_max\_total\_memory\_gb) | n/a | `number` | `null` | no |
| <a name="input_min_total_memory_gb"></a> [min\_total\_memory\_gb](#input\_min\_total\_memory\_gb) | n/a | `number` | `null` | no |
| <a name="input_name"></a> [name](#input\_name) | Cluster name | `string` | n/a | yes |
| <a name="input_password"></a> [password](#input\_password) | Cluster password | `string` | n/a | yes |
| <a name="input_password_hash"></a> [password\_hash](#input\_password\_hash) | n/a | `string` | `null` | no |
| <a name="input_region"></a> [region](#input\_region) | Running custer region | `string` | n/a | yes |
| <a name="input_tier"></a> [tier](#input\_tier) | Cluster tier | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_endpoints"></a> [endpoints](#output\_endpoints) | n/a |
| <a name="output_iam_role"></a> [iam\_role](#output\_iam\_role) | n/a |
| <a name="output_id"></a> [id](#output\_id) | n/a |
| <a name="output_last_updated"></a> [last\_updated](#output\_last\_updated) | n/a |
<!-- END_TF_DOCS -->