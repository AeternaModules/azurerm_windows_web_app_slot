output "windows_web_app_slots_app_service_id" {
  description = "Map of app_service_id values across all windows_web_app_slots, keyed the same as var.windows_web_app_slots"
  value       = { for k, v in azurerm_windows_web_app_slot.windows_web_app_slots : k => v.app_service_id }
}
output "windows_web_app_slots_app_settings" {
  description = "Map of app_settings values across all windows_web_app_slots, keyed the same as var.windows_web_app_slots"
  value       = { for k, v in azurerm_windows_web_app_slot.windows_web_app_slots : k => v.app_settings }
}
output "windows_web_app_slots_auth_settings" {
  description = "Map of auth_settings values across all windows_web_app_slots, keyed the same as var.windows_web_app_slots"
  value       = { for k, v in azurerm_windows_web_app_slot.windows_web_app_slots : k => v.auth_settings }
  sensitive   = true
}
output "windows_web_app_slots_auth_settings_v2" {
  description = "Map of auth_settings_v2 values across all windows_web_app_slots, keyed the same as var.windows_web_app_slots"
  value       = { for k, v in azurerm_windows_web_app_slot.windows_web_app_slots : k => v.auth_settings_v2 }
}
output "windows_web_app_slots_backup" {
  description = "Map of backup values across all windows_web_app_slots, keyed the same as var.windows_web_app_slots"
  value       = { for k, v in azurerm_windows_web_app_slot.windows_web_app_slots : k => v.backup }
  sensitive   = true
}
output "windows_web_app_slots_client_affinity_enabled" {
  description = "Map of client_affinity_enabled values across all windows_web_app_slots, keyed the same as var.windows_web_app_slots"
  value       = { for k, v in azurerm_windows_web_app_slot.windows_web_app_slots : k => v.client_affinity_enabled }
}
output "windows_web_app_slots_client_certificate_enabled" {
  description = "Map of client_certificate_enabled values across all windows_web_app_slots, keyed the same as var.windows_web_app_slots"
  value       = { for k, v in azurerm_windows_web_app_slot.windows_web_app_slots : k => v.client_certificate_enabled }
}
output "windows_web_app_slots_client_certificate_exclusion_paths" {
  description = "Map of client_certificate_exclusion_paths values across all windows_web_app_slots, keyed the same as var.windows_web_app_slots"
  value       = { for k, v in azurerm_windows_web_app_slot.windows_web_app_slots : k => v.client_certificate_exclusion_paths }
}
output "windows_web_app_slots_client_certificate_mode" {
  description = "Map of client_certificate_mode values across all windows_web_app_slots, keyed the same as var.windows_web_app_slots"
  value       = { for k, v in azurerm_windows_web_app_slot.windows_web_app_slots : k => v.client_certificate_mode }
}
output "windows_web_app_slots_connection_string" {
  description = "Map of connection_string values across all windows_web_app_slots, keyed the same as var.windows_web_app_slots"
  value       = { for k, v in azurerm_windows_web_app_slot.windows_web_app_slots : k => v.connection_string }
  sensitive   = true
}
output "windows_web_app_slots_custom_domain_verification_id" {
  description = "Map of custom_domain_verification_id values across all windows_web_app_slots, keyed the same as var.windows_web_app_slots"
  value       = { for k, v in azurerm_windows_web_app_slot.windows_web_app_slots : k => v.custom_domain_verification_id }
  sensitive   = true
}
output "windows_web_app_slots_default_hostname" {
  description = "Map of default_hostname values across all windows_web_app_slots, keyed the same as var.windows_web_app_slots"
  value       = { for k, v in azurerm_windows_web_app_slot.windows_web_app_slots : k => v.default_hostname }
}
output "windows_web_app_slots_enabled" {
  description = "Map of enabled values across all windows_web_app_slots, keyed the same as var.windows_web_app_slots"
  value       = { for k, v in azurerm_windows_web_app_slot.windows_web_app_slots : k => v.enabled }
}
output "windows_web_app_slots_ftp_publish_basic_authentication_enabled" {
  description = "Map of ftp_publish_basic_authentication_enabled values across all windows_web_app_slots, keyed the same as var.windows_web_app_slots"
  value       = { for k, v in azurerm_windows_web_app_slot.windows_web_app_slots : k => v.ftp_publish_basic_authentication_enabled }
}
output "windows_web_app_slots_hosting_environment_id" {
  description = "Map of hosting_environment_id values across all windows_web_app_slots, keyed the same as var.windows_web_app_slots"
  value       = { for k, v in azurerm_windows_web_app_slot.windows_web_app_slots : k => v.hosting_environment_id }
}
output "windows_web_app_slots_https_only" {
  description = "Map of https_only values across all windows_web_app_slots, keyed the same as var.windows_web_app_slots"
  value       = { for k, v in azurerm_windows_web_app_slot.windows_web_app_slots : k => v.https_only }
}
output "windows_web_app_slots_identity" {
  description = "Map of identity values across all windows_web_app_slots, keyed the same as var.windows_web_app_slots"
  value       = { for k, v in azurerm_windows_web_app_slot.windows_web_app_slots : k => v.identity }
}
output "windows_web_app_slots_key_vault_reference_identity_id" {
  description = "Map of key_vault_reference_identity_id values across all windows_web_app_slots, keyed the same as var.windows_web_app_slots"
  value       = { for k, v in azurerm_windows_web_app_slot.windows_web_app_slots : k => v.key_vault_reference_identity_id }
}
output "windows_web_app_slots_kind" {
  description = "Map of kind values across all windows_web_app_slots, keyed the same as var.windows_web_app_slots"
  value       = { for k, v in azurerm_windows_web_app_slot.windows_web_app_slots : k => v.kind }
}
output "windows_web_app_slots_logs" {
  description = "Map of logs values across all windows_web_app_slots, keyed the same as var.windows_web_app_slots"
  value       = { for k, v in azurerm_windows_web_app_slot.windows_web_app_slots : k => v.logs }
  sensitive   = true
}
output "windows_web_app_slots_name" {
  description = "Map of name values across all windows_web_app_slots, keyed the same as var.windows_web_app_slots"
  value       = { for k, v in azurerm_windows_web_app_slot.windows_web_app_slots : k => v.name }
}
output "windows_web_app_slots_outbound_ip_address_list" {
  description = "Map of outbound_ip_address_list values across all windows_web_app_slots, keyed the same as var.windows_web_app_slots"
  value       = { for k, v in azurerm_windows_web_app_slot.windows_web_app_slots : k => v.outbound_ip_address_list }
}
output "windows_web_app_slots_outbound_ip_addresses" {
  description = "Map of outbound_ip_addresses values across all windows_web_app_slots, keyed the same as var.windows_web_app_slots"
  value       = { for k, v in azurerm_windows_web_app_slot.windows_web_app_slots : k => v.outbound_ip_addresses }
}
output "windows_web_app_slots_possible_outbound_ip_address_list" {
  description = "Map of possible_outbound_ip_address_list values across all windows_web_app_slots, keyed the same as var.windows_web_app_slots"
  value       = { for k, v in azurerm_windows_web_app_slot.windows_web_app_slots : k => v.possible_outbound_ip_address_list }
}
output "windows_web_app_slots_possible_outbound_ip_addresses" {
  description = "Map of possible_outbound_ip_addresses values across all windows_web_app_slots, keyed the same as var.windows_web_app_slots"
  value       = { for k, v in azurerm_windows_web_app_slot.windows_web_app_slots : k => v.possible_outbound_ip_addresses }
}
output "windows_web_app_slots_public_network_access_enabled" {
  description = "Map of public_network_access_enabled values across all windows_web_app_slots, keyed the same as var.windows_web_app_slots"
  value       = { for k, v in azurerm_windows_web_app_slot.windows_web_app_slots : k => v.public_network_access_enabled }
}
output "windows_web_app_slots_service_plan_id" {
  description = "Map of service_plan_id values across all windows_web_app_slots, keyed the same as var.windows_web_app_slots"
  value       = { for k, v in azurerm_windows_web_app_slot.windows_web_app_slots : k => v.service_plan_id }
}
output "windows_web_app_slots_site_config" {
  description = "Map of site_config values across all windows_web_app_slots, keyed the same as var.windows_web_app_slots"
  value       = { for k, v in azurerm_windows_web_app_slot.windows_web_app_slots : k => v.site_config }
  sensitive   = true
}
output "windows_web_app_slots_site_credential" {
  description = "Map of site_credential values across all windows_web_app_slots, keyed the same as var.windows_web_app_slots"
  value       = { for k, v in azurerm_windows_web_app_slot.windows_web_app_slots : k => v.site_credential }
  sensitive   = true
}
output "windows_web_app_slots_storage_account" {
  description = "Map of storage_account values across all windows_web_app_slots, keyed the same as var.windows_web_app_slots"
  value       = { for k, v in azurerm_windows_web_app_slot.windows_web_app_slots : k => v.storage_account }
  sensitive   = true
}
output "windows_web_app_slots_tags" {
  description = "Map of tags values across all windows_web_app_slots, keyed the same as var.windows_web_app_slots"
  value       = { for k, v in azurerm_windows_web_app_slot.windows_web_app_slots : k => v.tags }
}
output "windows_web_app_slots_virtual_network_backup_restore_enabled" {
  description = "Map of virtual_network_backup_restore_enabled values across all windows_web_app_slots, keyed the same as var.windows_web_app_slots"
  value       = { for k, v in azurerm_windows_web_app_slot.windows_web_app_slots : k => v.virtual_network_backup_restore_enabled }
}
output "windows_web_app_slots_virtual_network_image_pull_enabled" {
  description = "Map of virtual_network_image_pull_enabled values across all windows_web_app_slots, keyed the same as var.windows_web_app_slots"
  value       = { for k, v in azurerm_windows_web_app_slot.windows_web_app_slots : k => v.virtual_network_image_pull_enabled }
}
output "windows_web_app_slots_virtual_network_subnet_id" {
  description = "Map of virtual_network_subnet_id values across all windows_web_app_slots, keyed the same as var.windows_web_app_slots"
  value       = { for k, v in azurerm_windows_web_app_slot.windows_web_app_slots : k => v.virtual_network_subnet_id }
}
output "windows_web_app_slots_webdeploy_publish_basic_authentication_enabled" {
  description = "Map of webdeploy_publish_basic_authentication_enabled values across all windows_web_app_slots, keyed the same as var.windows_web_app_slots"
  value       = { for k, v in azurerm_windows_web_app_slot.windows_web_app_slots : k => v.webdeploy_publish_basic_authentication_enabled }
}
output "windows_web_app_slots_zip_deploy_file" {
  description = "Map of zip_deploy_file values across all windows_web_app_slots, keyed the same as var.windows_web_app_slots"
  value       = { for k, v in azurerm_windows_web_app_slot.windows_web_app_slots : k => v.zip_deploy_file }
}

