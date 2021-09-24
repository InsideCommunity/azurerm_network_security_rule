output "rule_id" {
  description = "The ID of Network security rule."
  value       = azurerm_network_security_rule.az_nsg_rule.id
}