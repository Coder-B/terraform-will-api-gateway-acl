# terraform-will-sag-acl
This terraform module supports to create access control list for SAG (smart api gateway).

These type of resource is supported:
- [alicloud_sag_acl](https://www.terraform.io/docs/providers/alicloud/r/sag_acl.html)
- [alicloud_sag_acl_rule](https://www.terraform.io/docs/providers/alicloud/r/sag_acl_rule.html)

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
|name|The name of the ACL instance| string| "" | yes|
|description | The description of the ACL rule. It must be 1 to 512 characters in length|string|"a new acl rule"|no|
|policy | The policy used by the ACL rule. Valid values: accept, drop|string|""|yes|
|ip_protocol | The protocol used by the ACL rule. The value is not case sensitive|string|""|yes|
|direction | The direction of the ACL rule. Valid values: in, out|string|""|yes|
|source_cidr | The source address. It is an IPv4 address range in the CIDR format. Default value: 0.0.0.0/0|string|""|yes|
|source_port_range | The range of the source port. Valid value: 80/80|string|""|yes|
|dest_cidr | The destination address. It is an IPv4 address range in CIDR format. Default value: 0.0.0.0/0|string|""|yes|
|dest_port_range | The range of the destination port. Valid value: 80/80|string|""|yes|
|priority | The priority of the ACL rule. Value range: 1 to 100|string|""|no|

## Outputs

| Name | Description |
|------|-------------|
|acl_instance_id|The ID of the ACL instance |
|acl_rule_id|The ID of the ACL rule |