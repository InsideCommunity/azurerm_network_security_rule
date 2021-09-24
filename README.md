# TF_azurerm_network_security_rule_module

Deploy Azure Network Security Rule with a dedicated Terraform module.

## Requirements

* A Network Security Group

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_network_security_rule.az_nsg_rule](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/network_security_rule) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_access"></a> [access](#input\_access) | Specifies whether network traffic is allowed or denied. Possible values are Allow and Deny. | `string` | `null` | no |
| <a name="input_destination_address_prefix"></a> [destination\_address\_prefix](#input\_destination\_address\_prefix) | CIDR or destination IP range or * to match any IP. Tags such as ‘VirtualNetwork’, ‘AzureLoadBalancer’ and ‘Internet’ can also be used. | `string` | `"*"` | no |
| <a name="input_destination_address_prefixes"></a> [destination\_address\_prefixes](#input\_destination\_address\_prefixes) | List of destination address prefixes. Tags may not be used. This is required if destination\_address\_prefix is not specified. | `any` | `null` | no |
| <a name="input_destination_application_security_group_ids"></a> [destination\_application\_security\_group\_ids](#input\_destination\_application\_security\_group\_ids) | A List of destination Application Security Group ID's | `list(string)` | `null` | no |
| <a name="input_destination_port_range"></a> [destination\_port\_range](#input\_destination\_port\_range) | Destination Port or Range. Integer or range between 0 and 65535 or * to match any. This is required if destination\_port\_ranges is not specified. | `string` | `"*"` | no |
| <a name="input_destination_port_ranges"></a> [destination\_port\_ranges](#input\_destination\_port\_ranges) | List of destination ports or port ranges. This is required if destination\_port\_range is not specified. | `list(string)` | `null` | no |
| <a name="input_direction"></a> [direction](#input\_direction) | The direction specifies if rule will be evaluated on incoming or outgoing traffic. Possible values are Inbound and Outbound. | `string` | `null` | no |
| <a name="input_nsg_name"></a> [nsg\_name](#input\_nsg\_name) | Specifies the name of the network security group. | `string` | n/a | yes |
| <a name="input_nsg_rule_name"></a> [nsg\_rule\_name](#input\_nsg\_rule\_name) | The name of the security rule. | `string` | `"default_rule1"` | no |
| <a name="input_priority"></a> [priority](#input\_priority) | Specifies the priority of the rule. The value can be between 100 and 4096. The priority number must be unique for each rule in the collection. The lower the priority number, the higher the priority of the rule. | `number` | `null` | no |
| <a name="input_protocol"></a> [protocol](#input\_protocol) | Network protocol this rule applies to. Possible values include Tcp, Udp, Icmp, Esp, Ah or * (which matches all). | `string` | `"*"` | no |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | The name of the resource group in which to create the network security group. | `string` | n/a | yes |
| <a name="input_source_address_prefix"></a> [source\_address\_prefix](#input\_source\_address\_prefix) | CIDR or source IP range or * to match any IP. Tags such as ‘VirtualNetwork’, ‘AzureLoadBalancer’ and ‘Internet’ can also be used. This is required if source\_address\_prefixes is not specified. | `string` | `"*"` | no |
| <a name="input_source_address_prefixes"></a> [source\_address\_prefixes](#input\_source\_address\_prefixes) | List of source address prefixes. Tags may not be used. This is required if source\_address\_prefix is not specified. | `any` | `null` | no |
| <a name="input_source_application_security_group_ids"></a> [source\_application\_security\_group\_ids](#input\_source\_application\_security\_group\_ids) | A List of source Application Security Group ID's | `list(string)` | `null` | no |
| <a name="input_source_port_range"></a> [source\_port\_range](#input\_source\_port\_range) | Source Port or Range. Integer or range between 0 and 65535 or * to match any. This is required if source\_port\_ranges is not specified. | `string` | `"*"` | no |
| <a name="input_source_port_ranges"></a> [source\_port\_ranges](#input\_source\_port\_ranges) | List of source ports or port ranges. This is required if source\_port\_range is not specified. | `list(string)` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_rule_id"></a> [rule\_id](#output\_rule\_id) | The ID of Network security rule. |