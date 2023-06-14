<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | 5.3.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 5.3.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_instance.app_server](https://registry.terraform.io/providers/hashicorp/aws/5.3.0/docs/resources/instance) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_ec2_instance_type"></a> [ec2\_instance\_type](#input\_ec2\_instance\_type) | AWS EC2 instance type | `string` | `"t2.micro"` | no |
| <a name="input_instance_name"></a> [instance\_name](#input\_instance\_name) | Value of the name tag for the EC2 instance | `string` | `"MyNewInstance"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_instance_id"></a> [instance\_id](#output\_instance\_id) | ID of the EC2 instance |
| <a name="output_instance_public_id"></a> [instance\_public\_id](#output\_instance\_public\_id) | Public IP address of the EC2 instance |
<!-- END_TF_DOCS -->
