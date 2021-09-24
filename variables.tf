variable "nsg_name" {
  description = "Specifies the name of the network security group."
  type        = string
}
variable "nsg_rule_name" {
  description = " The name of the security rule."
  type        = string
  default     = "default_rule1"
}
variable "priority" {
  description = "Specifies the priority of the rule. The value can be between 100 and 4096. The priority number must be unique for each rule in the collection. The lower the priority number, the higher the priority of the rule."
  type        = number
  default     = null
}
variable "direction" {
  description = "The direction specifies if rule will be evaluated on incoming or outgoing traffic. Possible values are Inbound and Outbound."
  type        = string
  default     = null
}
variable "access" {
  description = "Specifies whether network traffic is allowed or denied. Possible values are Allow and Deny."
  type        = string
  default     = null
}
variable "protocol" {
  description = "Network protocol this rule applies to. Possible values include Tcp, Udp, Icmp, Esp, Ah or * (which matches all)."
  type        = string
  default     = "*"
}
variable "source_port_range" {
  description = "Source Port or Range. Integer or range between 0 and 65535 or * to match any. This is required if source_port_ranges is not specified."
  type        = string
  default     = "*"
}
variable "source_port_ranges" {
  description = "List of source ports or port ranges. This is required if source_port_range is not specified."
  type        = list(string)
  default     = null
}
variable "destination_port_range" {
  description = "Destination Port or Range. Integer or range between 0 and 65535 or * to match any. This is required if destination_port_ranges is not specified."
  type        = string
  default     = "*"
}
variable "destination_port_ranges" {
  description = "List of destination ports or port ranges. This is required if destination_port_range is not specified."
  type        = list(string)
  default     = null
}
variable "source_address_prefix" {
  description = "CIDR or source IP range or * to match any IP. Tags such as ‘VirtualNetwork’, ‘AzureLoadBalancer’ and ‘Internet’ can also be used. This is required if source_address_prefixes is not specified."
  default     = "*"
}
variable "source_address_prefixes" {
  description = "List of source address prefixes. Tags may not be used. This is required if source_address_prefix is not specified."
  default     = null
}
variable "destination_address_prefix" {
  description = "CIDR or destination IP range or * to match any IP. Tags such as ‘VirtualNetwork’, ‘AzureLoadBalancer’ and ‘Internet’ can also be used."
  default     = "*"
}
variable "destination_address_prefixes" {
  description = "List of destination address prefixes. Tags may not be used. This is required if destination_address_prefix is not specified."
  default     = null
}
variable "source_application_security_group_ids" {
  description = "A List of source Application Security Group ID's"
  type        = list(string)
  default     = null
}
variable "destination_application_security_group_ids" {
  description = "A List of destination Application Security Group ID's"
  type        = list(string)
  default     = null
}
variable "resource_group_name" {
  description = "The name of the resource group in which to create the network security group."
  type        = string
}