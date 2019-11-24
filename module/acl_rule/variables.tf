variable "acl_id" {
  description = "The Id of a ACL."
  default     = ""
}

variable "description" {
  description = "description"
  default     = ""
}

variable "policy" {
  description = "The policy used by the ACL rule. Valid values: accept|drop."
  default     = "accept"
}

variable "ip_protocol" {
  description = "The protocol used by the ACL rule"
  default     = "ALL"
}

variable "direction" {
  description = " The direction of the ACL rule. Valid values: in|out."
  default     = "in"
}

variable "source_cidr" {
  description = "The source address. It is an IPv4 address range in the CIDR format."
  default     = ""
}

variable "source_port_range" {
  description = "The range of the source port"
  default     = "80/80"
}

variable "dest_cidr" {
  description = " The destination address. It is an IPv4 address range in CIDR format."
  default     = ""
}

variable "dest_port_range" {
  description = "The range of the destination port."
  default     = ""
}

variable "priority" {
  description = " The priority of the ACL rule. Value range: 1 to 100."
  default     = ""
}