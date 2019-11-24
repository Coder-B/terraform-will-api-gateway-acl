provider "alicloud" {
  version              = ">=1.56.0"
  region               = var.region != "" ? var.region : null
  configuration_source = "terraform-will-modules/sag-acl"
}

#################
# SAG (Smart Api Gateway) ACL instance
#################
module "acl_instance" {
    source = "./modules/acl"
    acl_name = var.acl_name
}

#################
# SAG (Smart Api Gateway) ACL rules
#################
module "acl_rule" {
    source = "./modules/acl_rule"
    acl_id            = module.acl_instance.acl_id
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
