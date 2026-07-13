resource "azurerm_windows_web_app_slot" "windows_web_app_slots" {
  for_each = var.windows_web_app_slots

  app_service_id                                 = each.value.app_service_id
  name                                           = each.value.name
  virtual_network_subnet_id                      = each.value.virtual_network_subnet_id
  virtual_network_image_pull_enabled             = each.value.virtual_network_image_pull_enabled
  virtual_network_backup_restore_enabled         = each.value.virtual_network_backup_restore_enabled
  tags                                           = each.value.tags
  service_plan_id                                = each.value.service_plan_id
  public_network_access_enabled                  = each.value.public_network_access_enabled
  key_vault_reference_identity_id                = each.value.key_vault_reference_identity_id
  https_only                                     = each.value.https_only
  ftp_publish_basic_authentication_enabled       = each.value.ftp_publish_basic_authentication_enabled
  enabled                                        = each.value.enabled
  client_certificate_mode                        = each.value.client_certificate_mode
  client_certificate_exclusion_paths             = each.value.client_certificate_exclusion_paths
  client_certificate_enabled                     = each.value.client_certificate_enabled
  client_affinity_enabled                        = each.value.client_affinity_enabled
  app_settings                                   = each.value.app_settings
  webdeploy_publish_basic_authentication_enabled = each.value.webdeploy_publish_basic_authentication_enabled
  zip_deploy_file                                = each.value.zip_deploy_file

  site_config {
    always_on             = each.value.site_config.always_on
    api_definition_url    = each.value.site_config.api_definition_url
    api_management_api_id = each.value.site_config.api_management_api_id
    app_command_line      = each.value.site_config.app_command_line
    dynamic "application_stack" {
      for_each = each.value.site_config.application_stack != null ? [each.value.site_config.application_stack] : []
      content {
        current_stack                = application_stack.value.current_stack
        docker_image_name            = application_stack.value.docker_image_name
        docker_registry_password     = application_stack.value.docker_registry_password
        docker_registry_url          = application_stack.value.docker_registry_url
        docker_registry_username     = application_stack.value.docker_registry_username
        dotnet_core_version          = application_stack.value.dotnet_core_version
        dotnet_version               = application_stack.value.dotnet_version
        java_container               = application_stack.value.java_container
        java_container_version       = application_stack.value.java_container_version
        java_embedded_server_enabled = application_stack.value.java_embedded_server_enabled
        java_version                 = application_stack.value.java_version
        node_version                 = application_stack.value.node_version
        php_version                  = application_stack.value.php_version
        python                       = application_stack.value.python
        tomcat_version               = application_stack.value.tomcat_version
      }
    }
    dynamic "auto_heal_setting" {
      for_each = each.value.site_config.auto_heal_setting != null ? [each.value.site_config.auto_heal_setting] : []
      content {
        action {
          action_type = auto_heal_setting.value.action.action_type
          dynamic "custom_action" {
            for_each = auto_heal_setting.value.action.custom_action != null ? [auto_heal_setting.value.action.custom_action] : []
            content {
              executable = custom_action.value.executable
              parameters = custom_action.value.parameters
            }
          }
          minimum_process_execution_time = auto_heal_setting.value.action.minimum_process_execution_time
        }
        trigger {
          private_memory_kb = auto_heal_setting.value.trigger.private_memory_kb
          dynamic "requests" {
            for_each = auto_heal_setting.value.trigger.requests != null ? [auto_heal_setting.value.trigger.requests] : []
            content {
              count    = requests.value.count
              interval = requests.value.interval
            }
          }
          dynamic "slow_request" {
            for_each = auto_heal_setting.value.trigger.slow_request != null ? [auto_heal_setting.value.trigger.slow_request] : []
            content {
              count      = slow_request.value.count
              interval   = slow_request.value.interval
              time_taken = slow_request.value.time_taken
            }
          }
          dynamic "slow_request_with_path" {
            for_each = auto_heal_setting.value.trigger.slow_request_with_path != null ? auto_heal_setting.value.trigger.slow_request_with_path : []
            content {
              count      = slow_request_with_path.value.count
              interval   = slow_request_with_path.value.interval
              path       = slow_request_with_path.value.path
              time_taken = slow_request_with_path.value.time_taken
            }
          }
          dynamic "status_code" {
            for_each = auto_heal_setting.value.trigger.status_code != null ? auto_heal_setting.value.trigger.status_code : []
            content {
              count             = status_code.value.count
              interval          = status_code.value.interval
              path              = status_code.value.path
              status_code_range = status_code.value.status_code_range
              sub_status        = status_code.value.sub_status
              win32_status_code = status_code.value.win32_status_code
            }
          }
        }
      }
    }
    auto_swap_slot_name                           = each.value.site_config.auto_swap_slot_name
    container_registry_managed_identity_client_id = each.value.site_config.container_registry_managed_identity_client_id
    container_registry_use_managed_identity       = each.value.site_config.container_registry_use_managed_identity
    dynamic "cors" {
      for_each = each.value.site_config.cors != null ? [each.value.site_config.cors] : []
      content {
        allowed_origins     = cors.value.allowed_origins
        support_credentials = cors.value.support_credentials
      }
    }
    default_documents = each.value.site_config.default_documents
    ftps_state        = each.value.site_config.ftps_state
    dynamic "handler_mapping" {
      for_each = each.value.site_config.handler_mapping != null ? each.value.site_config.handler_mapping : []
      content {
        arguments             = handler_mapping.value.arguments
        extension             = handler_mapping.value.extension
        script_processor_path = handler_mapping.value.script_processor_path
      }
    }
    health_check_eviction_time_in_min = each.value.site_config.health_check_eviction_time_in_min
    health_check_path                 = each.value.site_config.health_check_path
    http2_enabled                     = each.value.site_config.http2_enabled
    dynamic "ip_restriction" {
      for_each = each.value.site_config.ip_restriction != null ? each.value.site_config.ip_restriction : []
      content {
        action      = ip_restriction.value.action
        description = ip_restriction.value.description
        dynamic "headers" {
          for_each = ip_restriction.value.headers != null ? ip_restriction.value.headers : []
          content {
            x_azure_fdid      = headers.value.x_azure_fdid
            x_fd_health_probe = headers.value.x_fd_health_probe
            x_forwarded_for   = headers.value.x_forwarded_for
            x_forwarded_host  = headers.value.x_forwarded_host
          }
        }
        ip_address                = ip_restriction.value.ip_address
        name                      = ip_restriction.value.name
        priority                  = ip_restriction.value.priority
        service_tag               = ip_restriction.value.service_tag
        virtual_network_subnet_id = ip_restriction.value.virtual_network_subnet_id
      }
    }
    ip_restriction_default_action = each.value.site_config.ip_restriction_default_action
    load_balancing_mode           = each.value.site_config.load_balancing_mode
    local_mysql_enabled           = each.value.site_config.local_mysql_enabled
    managed_pipeline_mode         = each.value.site_config.managed_pipeline_mode
    minimum_tls_cipher_suite      = each.value.site_config.minimum_tls_cipher_suite
    minimum_tls_version           = each.value.site_config.minimum_tls_version
    remote_debugging_enabled      = each.value.site_config.remote_debugging_enabled
    remote_debugging_version      = each.value.site_config.remote_debugging_version
    dynamic "scm_ip_restriction" {
      for_each = each.value.site_config.scm_ip_restriction != null ? each.value.site_config.scm_ip_restriction : []
      content {
        action      = scm_ip_restriction.value.action
        description = scm_ip_restriction.value.description
        dynamic "headers" {
          for_each = scm_ip_restriction.value.headers != null ? scm_ip_restriction.value.headers : []
          content {
            x_azure_fdid      = headers.value.x_azure_fdid
            x_fd_health_probe = headers.value.x_fd_health_probe
            x_forwarded_for   = headers.value.x_forwarded_for
            x_forwarded_host  = headers.value.x_forwarded_host
          }
        }
        ip_address                = scm_ip_restriction.value.ip_address
        name                      = scm_ip_restriction.value.name
        priority                  = scm_ip_restriction.value.priority
        service_tag               = scm_ip_restriction.value.service_tag
        virtual_network_subnet_id = scm_ip_restriction.value.virtual_network_subnet_id
      }
    }
    scm_ip_restriction_default_action = each.value.site_config.scm_ip_restriction_default_action
    scm_minimum_tls_version           = each.value.site_config.scm_minimum_tls_version
    scm_use_main_ip_restriction       = each.value.site_config.scm_use_main_ip_restriction
    use_32_bit_worker                 = each.value.site_config.use_32_bit_worker
    dynamic "virtual_application" {
      for_each = each.value.site_config.virtual_application != null ? each.value.site_config.virtual_application : []
      content {
        physical_path = virtual_application.value.physical_path
        preload       = virtual_application.value.preload
        dynamic "virtual_directory" {
          for_each = virtual_application.value.virtual_directory != null ? virtual_application.value.virtual_directory : []
          content {
            physical_path = virtual_directory.value.physical_path
            virtual_path  = virtual_directory.value.virtual_path
          }
        }
        virtual_path = virtual_application.value.virtual_path
      }
    }
    vnet_route_all_enabled = each.value.site_config.vnet_route_all_enabled
    websockets_enabled     = each.value.site_config.websockets_enabled
    worker_count           = each.value.site_config.worker_count
  }

  dynamic "auth_settings" {
    for_each = each.value.auth_settings != null ? [each.value.auth_settings] : []
    content {
      dynamic "active_directory" {
        for_each = auth_settings.value.active_directory != null ? [auth_settings.value.active_directory] : []
        content {
          allowed_audiences          = active_directory.value.allowed_audiences
          client_id                  = active_directory.value.client_id
          client_secret              = active_directory.value.client_secret
          client_secret_setting_name = active_directory.value.client_secret_setting_name
        }
      }
      additional_login_parameters    = auth_settings.value.additional_login_parameters
      allowed_external_redirect_urls = auth_settings.value.allowed_external_redirect_urls
      default_provider               = auth_settings.value.default_provider
      enabled                        = auth_settings.value.enabled
      dynamic "facebook" {
        for_each = auth_settings.value.facebook != null ? [auth_settings.value.facebook] : []
        content {
          app_id                  = facebook.value.app_id
          app_secret              = facebook.value.app_secret
          app_secret_setting_name = facebook.value.app_secret_setting_name
          oauth_scopes            = facebook.value.oauth_scopes
        }
      }
      dynamic "github" {
        for_each = auth_settings.value.github != null ? [auth_settings.value.github] : []
        content {
          client_id                  = github.value.client_id
          client_secret              = github.value.client_secret
          client_secret_setting_name = github.value.client_secret_setting_name
          oauth_scopes               = github.value.oauth_scopes
        }
      }
      dynamic "google" {
        for_each = auth_settings.value.google != null ? [auth_settings.value.google] : []
        content {
          client_id                  = google.value.client_id
          client_secret              = google.value.client_secret
          client_secret_setting_name = google.value.client_secret_setting_name
          oauth_scopes               = google.value.oauth_scopes
        }
      }
      issuer = auth_settings.value.issuer
      dynamic "microsoft" {
        for_each = auth_settings.value.microsoft != null ? [auth_settings.value.microsoft] : []
        content {
          client_id                  = microsoft.value.client_id
          client_secret              = microsoft.value.client_secret
          client_secret_setting_name = microsoft.value.client_secret_setting_name
          oauth_scopes               = microsoft.value.oauth_scopes
        }
      }
      runtime_version               = auth_settings.value.runtime_version
      token_refresh_extension_hours = auth_settings.value.token_refresh_extension_hours
      token_store_enabled           = auth_settings.value.token_store_enabled
      dynamic "twitter" {
        for_each = auth_settings.value.twitter != null ? [auth_settings.value.twitter] : []
        content {
          consumer_key                 = twitter.value.consumer_key
          consumer_secret              = twitter.value.consumer_secret
          consumer_secret_setting_name = twitter.value.consumer_secret_setting_name
        }
      }
      unauthenticated_client_action = auth_settings.value.unauthenticated_client_action
    }
  }

  dynamic "auth_settings_v2" {
    for_each = each.value.auth_settings_v2 != null ? [each.value.auth_settings_v2] : []
    content {
      dynamic "active_directory_v2" {
        for_each = auth_settings_v2.value.active_directory_v2 != null ? [auth_settings_v2.value.active_directory_v2] : []
        content {
          allowed_applications                 = active_directory_v2.value.allowed_applications
          allowed_audiences                    = active_directory_v2.value.allowed_audiences
          allowed_groups                       = active_directory_v2.value.allowed_groups
          allowed_identities                   = active_directory_v2.value.allowed_identities
          client_id                            = active_directory_v2.value.client_id
          client_secret_certificate_thumbprint = active_directory_v2.value.client_secret_certificate_thumbprint
          client_secret_setting_name           = active_directory_v2.value.client_secret_setting_name
          jwt_allowed_client_applications      = active_directory_v2.value.jwt_allowed_client_applications
          jwt_allowed_groups                   = active_directory_v2.value.jwt_allowed_groups
          login_parameters                     = active_directory_v2.value.login_parameters
          tenant_auth_endpoint                 = active_directory_v2.value.tenant_auth_endpoint
          www_authentication_disabled          = active_directory_v2.value.www_authentication_disabled
        }
      }
      dynamic "apple_v2" {
        for_each = auth_settings_v2.value.apple_v2 != null ? [auth_settings_v2.value.apple_v2] : []
        content {
          client_id                  = apple_v2.value.client_id
          client_secret_setting_name = apple_v2.value.client_secret_setting_name
        }
      }
      auth_enabled = auth_settings_v2.value.auth_enabled
      dynamic "azure_static_web_app_v2" {
        for_each = auth_settings_v2.value.azure_static_web_app_v2 != null ? [auth_settings_v2.value.azure_static_web_app_v2] : []
        content {
          client_id = azure_static_web_app_v2.value.client_id
        }
      }
      config_file_path = auth_settings_v2.value.config_file_path
      dynamic "custom_oidc_v2" {
        for_each = auth_settings_v2.value.custom_oidc_v2 != null ? auth_settings_v2.value.custom_oidc_v2 : []
        content {
          client_id                     = custom_oidc_v2.value.client_id
          name                          = custom_oidc_v2.value.name
          name_claim_type               = custom_oidc_v2.value.name_claim_type
          openid_configuration_endpoint = custom_oidc_v2.value.openid_configuration_endpoint
          scopes                        = custom_oidc_v2.value.scopes
        }
      }
      default_provider = auth_settings_v2.value.default_provider
      excluded_paths   = auth_settings_v2.value.excluded_paths
      dynamic "facebook_v2" {
        for_each = auth_settings_v2.value.facebook_v2 != null ? [auth_settings_v2.value.facebook_v2] : []
        content {
          app_id                  = facebook_v2.value.app_id
          app_secret_setting_name = facebook_v2.value.app_secret_setting_name
          graph_api_version       = facebook_v2.value.graph_api_version
          login_scopes            = facebook_v2.value.login_scopes
        }
      }
      forward_proxy_convention                = auth_settings_v2.value.forward_proxy_convention
      forward_proxy_custom_host_header_name   = auth_settings_v2.value.forward_proxy_custom_host_header_name
      forward_proxy_custom_scheme_header_name = auth_settings_v2.value.forward_proxy_custom_scheme_header_name
      dynamic "github_v2" {
        for_each = auth_settings_v2.value.github_v2 != null ? [auth_settings_v2.value.github_v2] : []
        content {
          client_id                  = github_v2.value.client_id
          client_secret_setting_name = github_v2.value.client_secret_setting_name
          login_scopes               = github_v2.value.login_scopes
        }
      }
      dynamic "google_v2" {
        for_each = auth_settings_v2.value.google_v2 != null ? [auth_settings_v2.value.google_v2] : []
        content {
          allowed_audiences          = google_v2.value.allowed_audiences
          client_id                  = google_v2.value.client_id
          client_secret_setting_name = google_v2.value.client_secret_setting_name
          login_scopes               = google_v2.value.login_scopes
        }
      }
      http_route_api_prefix = auth_settings_v2.value.http_route_api_prefix
      login {
        allowed_external_redirect_urls    = auth_settings_v2.value.login.allowed_external_redirect_urls
        cookie_expiration_convention      = auth_settings_v2.value.login.cookie_expiration_convention
        cookie_expiration_time            = auth_settings_v2.value.login.cookie_expiration_time
        logout_endpoint                   = auth_settings_v2.value.login.logout_endpoint
        nonce_expiration_time             = auth_settings_v2.value.login.nonce_expiration_time
        preserve_url_fragments_for_logins = auth_settings_v2.value.login.preserve_url_fragments_for_logins
        token_refresh_extension_time      = auth_settings_v2.value.login.token_refresh_extension_time
        token_store_enabled               = auth_settings_v2.value.login.token_store_enabled
        token_store_path                  = auth_settings_v2.value.login.token_store_path
        token_store_sas_setting_name      = auth_settings_v2.value.login.token_store_sas_setting_name
        validate_nonce                    = auth_settings_v2.value.login.validate_nonce
      }
      dynamic "microsoft_v2" {
        for_each = auth_settings_v2.value.microsoft_v2 != null ? [auth_settings_v2.value.microsoft_v2] : []
        content {
          allowed_audiences          = microsoft_v2.value.allowed_audiences
          client_id                  = microsoft_v2.value.client_id
          client_secret_setting_name = microsoft_v2.value.client_secret_setting_name
          login_scopes               = microsoft_v2.value.login_scopes
        }
      }
      require_authentication = auth_settings_v2.value.require_authentication
      require_https          = auth_settings_v2.value.require_https
      runtime_version        = auth_settings_v2.value.runtime_version
      dynamic "twitter_v2" {
        for_each = auth_settings_v2.value.twitter_v2 != null ? [auth_settings_v2.value.twitter_v2] : []
        content {
          consumer_key                 = twitter_v2.value.consumer_key
          consumer_secret_setting_name = twitter_v2.value.consumer_secret_setting_name
        }
      }
      unauthenticated_action = auth_settings_v2.value.unauthenticated_action
    }
  }

  dynamic "backup" {
    for_each = each.value.backup != null ? [each.value.backup] : []
    content {
      enabled = backup.value.enabled
      name    = backup.value.name
      schedule {
        frequency_interval       = backup.value.schedule.frequency_interval
        frequency_unit           = backup.value.schedule.frequency_unit
        keep_at_least_one_backup = backup.value.schedule.keep_at_least_one_backup
        retention_period_days    = backup.value.schedule.retention_period_days
        start_time               = backup.value.schedule.start_time
      }
      storage_account_url = backup.value.storage_account_url
    }
  }

  dynamic "connection_string" {
    for_each = each.value.connection_string != null ? each.value.connection_string : []
    content {
      name  = connection_string.value.name
      type  = connection_string.value.type
      value = connection_string.value.value
    }
  }

  dynamic "identity" {
    for_each = each.value.identity != null ? [each.value.identity] : []
    content {
      identity_ids = identity.value.identity_ids
      type         = identity.value.type
    }
  }

  dynamic "logs" {
    for_each = each.value.logs != null ? [each.value.logs] : []
    content {
      dynamic "application_logs" {
        for_each = logs.value.application_logs != null ? [logs.value.application_logs] : []
        content {
          dynamic "azure_blob_storage" {
            for_each = application_logs.value.azure_blob_storage != null ? [application_logs.value.azure_blob_storage] : []
            content {
              level             = azure_blob_storage.value.level
              retention_in_days = azure_blob_storage.value.retention_in_days
              sas_url           = azure_blob_storage.value.sas_url
            }
          }
          file_system_level = application_logs.value.file_system_level
        }
      }
      detailed_error_messages = logs.value.detailed_error_messages
      failed_request_tracing  = logs.value.failed_request_tracing
      dynamic "http_logs" {
        for_each = logs.value.http_logs != null ? [logs.value.http_logs] : []
        content {
          dynamic "azure_blob_storage" {
            for_each = http_logs.value.azure_blob_storage != null ? [http_logs.value.azure_blob_storage] : []
            content {
              retention_in_days = azure_blob_storage.value.retention_in_days
              sas_url           = azure_blob_storage.value.sas_url
            }
          }
          dynamic "file_system" {
            for_each = http_logs.value.file_system != null ? [http_logs.value.file_system] : []
            content {
              retention_in_days = file_system.value.retention_in_days
              retention_in_mb   = file_system.value.retention_in_mb
            }
          }
        }
      }
    }
  }

  dynamic "storage_account" {
    for_each = each.value.storage_account != null ? each.value.storage_account : []
    content {
      access_key   = storage_account.value.access_key
      account_name = storage_account.value.account_name
      mount_path   = storage_account.value.mount_path
      name         = storage_account.value.name
      share_name   = storage_account.value.share_name
      type         = storage_account.value.type
    }
  }
}

