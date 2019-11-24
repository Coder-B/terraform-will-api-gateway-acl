# alicloud_sag_acl_rule

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
|acl_id | The ID of the ACL|string|""|yes|
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
|id|The ID of the ACL rule |