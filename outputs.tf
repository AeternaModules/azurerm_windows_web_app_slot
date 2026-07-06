output "windows_web_app_slots" {
  description = "All windows_web_app_slot resources"
  value       = azurerm_windows_web_app_slot.windows_web_app_slots
  sensitive   = true
}
output "windows_web_app_slots_app_service_id" {
  description = "List of app_service_id values across all windows_web_app_slots"
  value       = [for k, v in azurerm_windows_web_app_slot.windows_web_app_slots : v.app_service_id]
}
output "windows_web_app_slots_app_settings" {
  description = "List of app_settings values across all windows_web_app_slots"
  value       = [for k, v in azurerm_windows_web_app_slot.windows_web_app_slots : v.app_settings]
}
output "windows_web_app_slots_auth_settings" {
  description = "List of auth_settings values across all windows_web_app_slots"
  value       = [for k, v in azurerm_windows_web_app_slot.windows_web_app_slots : v.auth_settings]
  sensitive   = true
}
output "windows_web_app_slots_auth_settings_v2" {
  description = "List of auth_settings_v2 values across all windows_web_app_slots"
  value       = [for k, v in azurerm_windows_web_app_slot.windows_web_app_slots : v.auth_settings_v2]
}
output "windows_web_app_slots_backup" {
  description = "List of backup values across all windows_web_app_slots"
  value       = [for k, v in azurerm_windows_web_app_slot.windows_web_app_slots : v.backup]
  sensitive   = true
}
output "windows_web_app_slots_client_affinity_enabled" {
  description = "List of client_affinity_enabled values across all windows_web_app_slots"
  value       = [for k, v in azurerm_windows_web_app_slot.windows_web_app_slots : v.client_affinity_enabled]
}
output "windows_web_app_slots_client_certificate_enabled" {
  description = "List of client_certificate_enabled values across all windows_web_app_slots"
  value       = [for k, v in azurerm_windows_web_app_slot.windows_web_app_slots : v.client_certificate_enabled]
}
output "windows_web_app_slots_client_certificate_exclusion_paths" {
  description = "List of client_certificate_exclusion_paths values across all windows_web_app_slots"
  value       = [for k, v in azurerm_windows_web_app_slot.windows_web_app_slots : v.client_certificate_exclusion_paths]
}
output "windows_web_app_slots_client_certificate_mode" {
  description = "List of client_certificate_mode values across all windows_web_app_slots"
  value       = [for k, v in azurerm_windows_web_app_slot.windows_web_app_slots : v.client_certificate_mode]
}
output "windows_web_app_slots_connection_string" {
  description = "List of connection_string values across all windows_web_app_slots"
  value       = [for k, v in azurerm_windows_web_app_slot.windows_web_app_slots : v.connection_string]
  sensitive   = true
}
output "windows_web_app_slots_custom_domain_verification_id" {
  description = "List of custom_domain_verification_id values across all windows_web_app_slots"
  value       = [for k, v in azurerm_windows_web_app_slot.windows_web_app_slots : v.custom_domain_verification_id]
  sensitive   = true
}
output "windows_web_app_slots_default_hostname" {
  description = "List of default_hostname values across all windows_web_app_slots"
  value       = [for k, v in azurerm_windows_web_app_slot.windows_web_app_slots : v.default_hostname]
}
output "windows_web_app_slots_enabled" {
  description = "List of enabled values across all windows_web_app_slots"
  value       = [for k, v in azurerm_windows_web_app_slot.windows_web_app_slots : v.enabled]
}
output "windows_web_app_slots_ftp_publish_basic_authentication_enabled" {
  description = "List of ftp_publish_basic_authentication_enabled values across all windows_web_app_slots"
  value       = [for k, v in azurerm_windows_web_app_slot.windows_web_app_slots : v.ftp_publish_basic_authentication_enabled]
}
output "windows_web_app_slots_hosting_environment_id" {
  description = "List of hosting_environment_id values across all windows_web_app_slots"
  value       = [for k, v in azurerm_windows_web_app_slot.windows_web_app_slots : v.hosting_environment_id]
}
output "windows_web_app_slots_https_only" {
  description = "List of https_only values across all windows_web_app_slots"
  value       = [for k, v in azurerm_windows_web_app_slot.windows_web_app_slots : v.https_only]
}
output "windows_web_app_slots_identity" {
  description = "List of identity values across all windows_web_app_slots"
  value       = [for k, v in azurerm_windows_web_app_slot.windows_web_app_slots : v.identity]
}
output "windows_web_app_slots_key_vault_reference_identity_id" {
  description = "List of key_vault_reference_identity_id values across all windows_web_app_slots"
  value       = [for k, v in azurerm_windows_web_app_slot.windows_web_app_slots : v.key_vault_reference_identity_id]
}
output "windows_web_app_slots_kind" {
  description = "List of kind values across all windows_web_app_slots"
  value       = [for k, v in azurerm_windows_web_app_slot.windows_web_app_slots : v.kind]
}
output "windows_web_app_slots_logs" {
  description = "List of logs values across all windows_web_app_slots"
  value       = [for k, v in azurerm_windows_web_app_slot.windows_web_app_slots : v.logs]
  sensitive   = true
}
output "windows_web_app_slots_name" {
  description = "List of name values across all windows_web_app_slots"
  value       = [for k, v in azurerm_windows_web_app_slot.windows_web_app_slots : v.name]
}
output "windows_web_app_slots_outbound_ip_address_list" {
  description = "List of outbound_ip_address_list values across all windows_web_app_slots"
  value       = [for k, v in azurerm_windows_web_app_slot.windows_web_app_slots : v.outbound_ip_address_list]
}
output "windows_web_app_slots_outbound_ip_addresses" {
  description = "List of outbound_ip_addresses values across all windows_web_app_slots"
  value       = [for k, v in azurerm_windows_web_app_slot.windows_web_app_slots : v.outbound_ip_addresses]
}
output "windows_web_app_slots_possible_outbound_ip_address_list" {
  description = "List of possible_outbound_ip_address_list values across all windows_web_app_slots"
  value       = [for k, v in azurerm_windows_web_app_slot.windows_web_app_slots : v.possible_outbound_ip_address_list]
}
output "windows_web_app_slots_possible_outbound_ip_addresses" {
  description = "List of possible_outbound_ip_addresses values across all windows_web_app_slots"
  value       = [for k, v in azurerm_windows_web_app_slot.windows_web_app_slots : v.possible_outbound_ip_addresses]
}
output "windows_web_app_slots_public_network_access_enabled" {
  description = "List of public_network_access_enabled values across all windows_web_app_slots"
  value       = [for k, v in azurerm_windows_web_app_slot.windows_web_app_slots : v.public_network_access_enabled]
}
output "windows_web_app_slots_service_plan_id" {
  description = "List of service_plan_id values across all windows_web_app_slots"
  value       = [for k, v in azurerm_windows_web_app_slot.windows_web_app_slots : v.service_plan_id]
}
output "windows_web_app_slots_site_config" {
  description = "List of site_config values across all windows_web_app_slots"
  value       = [for k, v in azurerm_windows_web_app_slot.windows_web_app_slots : v.site_config]
  sensitive   = true
}
output "windows_web_app_slots_site_credential" {
  description = "List of site_credential values across all windows_web_app_slots"
  value       = [for k, v in azurerm_windows_web_app_slot.windows_web_app_slots : v.site_credential]
  sensitive   = true
}
output "windows_web_app_slots_storage_account" {
  description = "List of storage_account values across all windows_web_app_slots"
  value       = [for k, v in azurerm_windows_web_app_slot.windows_web_app_slots : v.storage_account]
  sensitive   = true
}
output "windows_web_app_slots_tags" {
  description = "List of tags values across all windows_web_app_slots"
  value       = [for k, v in azurerm_windows_web_app_slot.windows_web_app_slots : v.tags]
}
output "windows_web_app_slots_virtual_network_backup_restore_enabled" {
  description = "List of virtual_network_backup_restore_enabled values across all windows_web_app_slots"
  value       = [for k, v in azurerm_windows_web_app_slot.windows_web_app_slots : v.virtual_network_backup_restore_enabled]
}
output "windows_web_app_slots_virtual_network_image_pull_enabled" {
  description = "List of virtual_network_image_pull_enabled values across all windows_web_app_slots"
  value       = [for k, v in azurerm_windows_web_app_slot.windows_web_app_slots : v.virtual_network_image_pull_enabled]
}
output "windows_web_app_slots_virtual_network_subnet_id" {
  description = "List of virtual_network_subnet_id values across all windows_web_app_slots"
  value       = [for k, v in azurerm_windows_web_app_slot.windows_web_app_slots : v.virtual_network_subnet_id]
}
output "windows_web_app_slots_webdeploy_publish_basic_authentication_enabled" {
  description = "List of webdeploy_publish_basic_authentication_enabled values across all windows_web_app_slots"
  value       = [for k, v in azurerm_windows_web_app_slot.windows_web_app_slots : v.webdeploy_publish_basic_authentication_enabled]
}
output "windows_web_app_slots_zip_deploy_file" {
  description = "List of zip_deploy_file values across all windows_web_app_slots"
  value       = [for k, v in azurerm_windows_web_app_slot.windows_web_app_slots : v.zip_deploy_file]
}

