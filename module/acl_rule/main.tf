resource "alicloud_sag_acl_rule" "aclRule" {
  acl_id            = var.acl_id
  description       = var.description
  policy            = var.policy
  ip_protocol       = var.ip_protocol
  direction         = var.direction
  source_cidr       = var.source_cidr
  source_port_range = var.source_port_range
  dest_cidr         = var.dest_cidr
  dest_port_range   = var.dest_port_range
  priority          = var.priority
}