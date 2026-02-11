variable "windows_web_app_slots" {
  description = <<EOT
Map of windows_web_app_slots, attributes below
Required:
    - app_service_id
    - name
    - site_config (block):
        - always_on (optional)
        - api_definition_url (optional)
        - api_management_api_id (optional)
        - app_command_line (optional)
        - application_stack (optional, block):
            - current_stack (optional)
            - docker_image_name (optional)
            - docker_registry_password (optional)
            - docker_registry_url (optional)
            - docker_registry_username (optional)
            - dotnet_core_version (optional)
            - dotnet_version (optional)
            - java_container (optional)
            - java_container_version (optional)
            - java_embedded_server_enabled (optional)
            - java_version (optional)
            - node_version (optional)
            - php_version (optional)
            - python (optional)
            - tomcat_version (optional)
        - auto_heal_setting (optional, block):
            - action (required, block):
                - action_type (required)
                - custom_action (optional, block):
                    - executable (required)
                    - parameters (optional)
                - minimum_process_execution_time (optional)
            - trigger (required, block):
                - private_memory_kb (optional)
                - requests (optional, block):
                    - count (required)
                    - interval (required)
                - slow_request (optional, block):
                    - count (required)
                    - interval (required)
                    - time_taken (required)
                - slow_request_with_path (optional, block):
                    - count (required)
                    - interval (required)
                    - path (optional)
                    - time_taken (required)
                - status_code (optional, block):
                    - count (required)
                    - interval (required)
                    - path (optional)
                    - status_code_range (required)
                    - sub_status (optional)
                    - win32_status_code (optional)
        - auto_swap_slot_name (optional)
        - container_registry_managed_identity_client_id (optional)
        - container_registry_use_managed_identity (optional)
        - cors (optional, block):
            - allowed_origins (optional)
            - support_credentials (optional)
        - default_documents (optional)
        - ftps_state (optional)
        - handler_mapping (optional, block):
            - arguments (optional)
            - extension (required)
            - script_processor_path (required)
        - health_check_eviction_time_in_min (optional)
        - health_check_path (optional)
        - http2_enabled (optional)
        - ip_restriction (optional, block):
            - action (optional)
            - description (optional)
            - headers (optional, block):
                - x_azure_fdid (optional)
                - x_fd_health_probe (optional)
                - x_forwarded_for (optional)
                - x_forwarded_host (optional)
            - ip_address (optional)
            - name (optional)
            - priority (optional)
            - service_tag (optional)
            - virtual_network_subnet_id (optional)
        - ip_restriction_default_action (optional)
        - load_balancing_mode (optional)
        - local_mysql_enabled (optional)
        - managed_pipeline_mode (optional)
        - minimum_tls_version (optional)
        - remote_debugging_enabled (optional)
        - remote_debugging_version (optional)
        - scm_ip_restriction (optional, block):
            - action (optional)
            - description (optional)
            - headers (optional, block):
                - x_azure_fdid (optional)
                - x_fd_health_probe (optional)
                - x_forwarded_for (optional)
                - x_forwarded_host (optional)
            - ip_address (optional)
            - name (optional)
            - priority (optional)
            - service_tag (optional)
            - virtual_network_subnet_id (optional)
        - scm_ip_restriction_default_action (optional)
        - scm_minimum_tls_version (optional)
        - scm_use_main_ip_restriction (optional)
        - use_32_bit_worker (optional)
        - virtual_application (optional, block):
            - physical_path (required)
            - preload (required)
            - virtual_directory (optional, block):
                - physical_path (optional)
                - virtual_path (optional)
            - virtual_path (required)
        - vnet_route_all_enabled (optional)
        - websockets_enabled (optional)
        - worker_count (optional)
Optional:
    - app_settings
    - client_affinity_enabled
    - client_certificate_enabled
    - client_certificate_exclusion_paths
    - client_certificate_mode
    - enabled
    - ftp_publish_basic_authentication_enabled
    - https_only
    - key_vault_reference_identity_id
    - public_network_access_enabled
    - service_plan_id
    - tags
    - virtual_network_backup_restore_enabled
    - virtual_network_image_pull_enabled
    - virtual_network_subnet_id
    - webdeploy_publish_basic_authentication_enabled
    - zip_deploy_file
    - auth_settings (block):
        - active_directory (optional, block):
            - allowed_audiences (optional)
            - client_id (required)
            - client_secret (optional)
            - client_secret_setting_name (optional)
        - additional_login_parameters (optional)
        - allowed_external_redirect_urls (optional)
        - default_provider (optional)
        - enabled (required)
        - facebook (optional, block):
            - app_id (required)
            - app_secret (optional)
            - app_secret_setting_name (optional)
            - oauth_scopes (optional)
        - github (optional, block):
            - client_id (required)
            - client_secret (optional)
            - client_secret_setting_name (optional)
            - oauth_scopes (optional)
        - google (optional, block):
            - client_id (required)
            - client_secret (optional)
            - client_secret_setting_name (optional)
            - oauth_scopes (optional)
        - issuer (optional)
        - microsoft (optional, block):
            - client_id (required)
            - client_secret (optional)
            - client_secret_setting_name (optional)
            - oauth_scopes (optional)
        - runtime_version (optional)
        - token_refresh_extension_hours (optional)
        - token_store_enabled (optional)
        - twitter (optional, block):
            - consumer_key (required)
            - consumer_secret (optional)
            - consumer_secret_setting_name (optional)
        - unauthenticated_client_action (optional)
    - auth_settings_v2 (block):
        - active_directory_v2 (optional, block):
            - allowed_applications (optional)
            - allowed_audiences (optional)
            - allowed_groups (optional)
            - allowed_identities (optional)
            - client_id (required)
            - client_secret_certificate_thumbprint (optional)
            - client_secret_setting_name (optional)
            - jwt_allowed_client_applications (optional)
            - jwt_allowed_groups (optional)
            - login_parameters (optional)
            - tenant_auth_endpoint (required)
            - www_authentication_disabled (optional)
        - apple_v2 (optional, block):
            - client_id (required)
            - client_secret_setting_name (required)
        - auth_enabled (optional)
        - azure_static_web_app_v2 (optional, block):
            - client_id (required)
        - config_file_path (optional)
        - custom_oidc_v2 (optional, block):
            - client_id (required)
            - name (required)
            - name_claim_type (optional)
            - openid_configuration_endpoint (required)
            - scopes (optional)
        - default_provider (optional)
        - excluded_paths (optional)
        - facebook_v2 (optional, block):
            - app_id (required)
            - app_secret_setting_name (required)
            - graph_api_version (optional)
            - login_scopes (optional)
        - forward_proxy_convention (optional)
        - forward_proxy_custom_host_header_name (optional)
        - forward_proxy_custom_scheme_header_name (optional)
        - github_v2 (optional, block):
            - client_id (required)
            - client_secret_setting_name (required)
            - login_scopes (optional)
        - google_v2 (optional, block):
            - allowed_audiences (optional)
            - client_id (required)
            - client_secret_setting_name (required)
            - login_scopes (optional)
        - http_route_api_prefix (optional)
        - login (required, block):
            - allowed_external_redirect_urls (optional)
            - cookie_expiration_convention (optional)
            - cookie_expiration_time (optional)
            - logout_endpoint (optional)
            - nonce_expiration_time (optional)
            - preserve_url_fragments_for_logins (optional)
            - token_refresh_extension_time (optional)
            - token_store_enabled (optional)
            - token_store_path (optional)
            - token_store_sas_setting_name (optional)
            - validate_nonce (optional)
        - microsoft_v2 (optional, block):
            - allowed_audiences (optional)
            - client_id (required)
            - client_secret_setting_name (required)
            - login_scopes (optional)
        - require_authentication (optional)
        - require_https (optional)
        - runtime_version (optional)
        - twitter_v2 (optional, block):
            - consumer_key (required)
            - consumer_secret_setting_name (required)
        - unauthenticated_action (optional)
    - backup (block):
        - enabled (optional)
        - name (required)
        - schedule (required, block):
            - frequency_interval (required)
            - frequency_unit (required)
            - keep_at_least_one_backup (optional)
            - retention_period_days (optional)
            - start_time (optional)
        - storage_account_url (required)
    - connection_string (block):
        - name (required)
        - type (required)
        - value (required)
    - identity (block):
        - identity_ids (optional)
        - type (required)
    - logs (block):
        - application_logs (optional, block):
            - azure_blob_storage (optional, block):
                - level (required)
                - retention_in_days (required)
                - sas_url (required)
            - file_system_level (required)
        - detailed_error_messages (optional)
        - failed_request_tracing (optional)
        - http_logs (optional, block):
            - azure_blob_storage (optional, block):
                - retention_in_days (optional)
                - sas_url (required)
            - file_system (optional, block):
                - retention_in_days (required)
                - retention_in_mb (required)
    - storage_account (block):
        - access_key (required)
        - account_name (required)
        - mount_path (optional)
        - name (required)
        - share_name (required)
        - type (required)
EOT

  type = map(object({
    app_service_id                                 = string
    name                                           = string
    virtual_network_subnet_id                      = optional(string)
    virtual_network_image_pull_enabled             = optional(bool)
    virtual_network_backup_restore_enabled         = optional(bool) # Default: false
    tags                                           = optional(map(string))
    service_plan_id                                = optional(string)
    public_network_access_enabled                  = optional(bool) # Default: true
    key_vault_reference_identity_id                = optional(string)
    https_only                                     = optional(bool)   # Default: false
    ftp_publish_basic_authentication_enabled       = optional(bool)   # Default: true
    enabled                                        = optional(bool)   # Default: true
    client_certificate_mode                        = optional(string) # Default: "Required"
    client_certificate_exclusion_paths             = optional(string)
    client_certificate_enabled                     = optional(bool) # Default: false
    client_affinity_enabled                        = optional(bool) # Default: false
    app_settings                                   = optional(map(string))
    webdeploy_publish_basic_authentication_enabled = optional(bool) # Default: true
    zip_deploy_file                                = optional(string)
    site_config = object({
      always_on             = optional(bool) # Default: true
      api_definition_url    = optional(string)
      api_management_api_id = optional(string)
      app_command_line      = optional(string)
      application_stack = optional(object({
        current_stack                = optional(string)
        docker_image_name            = optional(string)
        docker_registry_password     = optional(string)
        docker_registry_url          = optional(string)
        docker_registry_username     = optional(string)
        dotnet_core_version          = optional(string)
        dotnet_version               = optional(string)
        java_container               = optional(string)
        java_container_version       = optional(string)
        java_embedded_server_enabled = optional(bool)
        java_version                 = optional(string)
        node_version                 = optional(string)
        php_version                  = optional(string)
        python                       = optional(bool) # Default: false
        tomcat_version               = optional(string)
      }))
      auto_heal_setting = optional(object({
        action = object({
          action_type = string
          custom_action = optional(object({
            executable = string
            parameters = optional(string)
          }))
          minimum_process_execution_time = optional(string)
        })
        trigger = object({
          private_memory_kb = optional(number)
          requests = optional(object({
            count    = number
            interval = string
          }))
          slow_request = optional(object({
            count      = number
            interval   = string
            time_taken = string
          }))
          slow_request_with_path = optional(object({
            count      = number
            interval   = string
            path       = optional(string)
            time_taken = string
          }))
          status_code = optional(object({
            count             = number
            interval          = string
            path              = optional(string)
            status_code_range = string
            sub_status        = optional(number)
            win32_status_code = optional(number)
          }))
        })
      }))
      auto_swap_slot_name                           = optional(string)
      container_registry_managed_identity_client_id = optional(string)
      container_registry_use_managed_identity       = optional(bool) # Default: false
      cors = optional(object({
        allowed_origins     = optional(set(string))
        support_credentials = optional(bool) # Default: false
      }))
      default_documents = optional(list(string))
      ftps_state        = optional(string) # Default: "Disabled"
      handler_mapping = optional(object({
        arguments             = optional(string)
        extension             = string
        script_processor_path = string
      }))
      health_check_eviction_time_in_min = optional(number)
      health_check_path                 = optional(string)
      http2_enabled                     = optional(bool) # Default: false
      ip_restriction = optional(object({
        action      = optional(string) # Default: "Allow"
        description = optional(string)
        headers = optional(object({
          x_azure_fdid      = optional(list(string))
          x_fd_health_probe = optional(list(string))
          x_forwarded_for   = optional(list(string))
          x_forwarded_host  = optional(list(string))
        }))
        ip_address                = optional(string)
        name                      = optional(string)
        priority                  = optional(number) # Default: 65000
        service_tag               = optional(string)
        virtual_network_subnet_id = optional(string)
      }))
      ip_restriction_default_action = optional(string) # Default: "Allow"
      load_balancing_mode           = optional(string) # Default: "LeastRequests"
      local_mysql_enabled           = optional(bool)   # Default: false
      managed_pipeline_mode         = optional(string) # Default: "Integrated"
      minimum_tls_version           = optional(string) # Default: "1.2"
      remote_debugging_enabled      = optional(bool)   # Default: false
      remote_debugging_version      = optional(string)
      scm_ip_restriction = optional(object({
        action      = optional(string) # Default: "Allow"
        description = optional(string)
        headers = optional(object({
          x_azure_fdid      = optional(list(string))
          x_fd_health_probe = optional(list(string))
          x_forwarded_for   = optional(list(string))
          x_forwarded_host  = optional(list(string))
        }))
        ip_address                = optional(string)
        name                      = optional(string)
        priority                  = optional(number) # Default: 65000
        service_tag               = optional(string)
        virtual_network_subnet_id = optional(string)
      }))
      scm_ip_restriction_default_action = optional(string) # Default: "Allow"
      scm_minimum_tls_version           = optional(string) # Default: "1.2"
      scm_use_main_ip_restriction       = optional(bool)   # Default: false
      use_32_bit_worker                 = optional(bool)
      virtual_application = optional(object({
        physical_path = string
        preload       = bool
        virtual_directory = optional(object({
          physical_path = optional(string)
          virtual_path  = optional(string)
        }))
        virtual_path = string
      }))
      vnet_route_all_enabled = optional(bool) # Default: false
      websockets_enabled     = optional(bool) # Default: false
      worker_count           = optional(number)
    })
    auth_settings = optional(object({
      active_directory = optional(object({
        allowed_audiences          = optional(list(string))
        client_id                  = string
        client_secret              = optional(string)
        client_secret_setting_name = optional(string)
      }))
      additional_login_parameters    = optional(map(string))
      allowed_external_redirect_urls = optional(list(string))
      default_provider               = optional(string)
      enabled                        = bool
      facebook = optional(object({
        app_id                  = string
        app_secret              = optional(string)
        app_secret_setting_name = optional(string)
        oauth_scopes            = optional(list(string))
      }))
      github = optional(object({
        client_id                  = string
        client_secret              = optional(string)
        client_secret_setting_name = optional(string)
        oauth_scopes               = optional(list(string))
      }))
      google = optional(object({
        client_id                  = string
        client_secret              = optional(string)
        client_secret_setting_name = optional(string)
        oauth_scopes               = optional(list(string))
      }))
      issuer = optional(string)
      microsoft = optional(object({
        client_id                  = string
        client_secret              = optional(string)
        client_secret_setting_name = optional(string)
        oauth_scopes               = optional(list(string))
      }))
      runtime_version               = optional(string)
      token_refresh_extension_hours = optional(number) # Default: 72
      token_store_enabled           = optional(bool)   # Default: false
      twitter = optional(object({
        consumer_key                 = string
        consumer_secret              = optional(string)
        consumer_secret_setting_name = optional(string)
      }))
      unauthenticated_client_action = optional(string)
    }))
    auth_settings_v2 = optional(object({
      active_directory_v2 = optional(object({
        allowed_applications                 = optional(list(string))
        allowed_audiences                    = optional(list(string))
        allowed_groups                       = optional(list(string))
        allowed_identities                   = optional(list(string))
        client_id                            = string
        client_secret_certificate_thumbprint = optional(string)
        client_secret_setting_name           = optional(string)
        jwt_allowed_client_applications      = optional(list(string))
        jwt_allowed_groups                   = optional(list(string))
        login_parameters                     = optional(map(string))
        tenant_auth_endpoint                 = string
        www_authentication_disabled          = optional(bool)
      }))
      apple_v2 = optional(object({
        client_id                  = string
        client_secret_setting_name = string
      }))
      auth_enabled = optional(bool)
      azure_static_web_app_v2 = optional(object({
        client_id = string
      }))
      config_file_path = optional(string)
      custom_oidc_v2 = optional(object({
        client_id                     = string
        name                          = string
        name_claim_type               = optional(string)
        openid_configuration_endpoint = string
        scopes                        = optional(list(string))
      }))
      default_provider = optional(string)
      excluded_paths   = optional(list(string))
      facebook_v2 = optional(object({
        app_id                  = string
        app_secret_setting_name = string
        graph_api_version       = optional(string)
        login_scopes            = optional(list(string))
      }))
      forward_proxy_convention                = optional(string) # Default: "NoProxy"
      forward_proxy_custom_host_header_name   = optional(string)
      forward_proxy_custom_scheme_header_name = optional(string)
      github_v2 = optional(object({
        client_id                  = string
        client_secret_setting_name = string
        login_scopes               = optional(list(string))
      }))
      google_v2 = optional(object({
        allowed_audiences          = optional(list(string))
        client_id                  = string
        client_secret_setting_name = string
        login_scopes               = optional(list(string))
      }))
      http_route_api_prefix = optional(string) # Default: "/.auth"
      login = object({
        allowed_external_redirect_urls    = optional(list(string))
        cookie_expiration_convention      = optional(string) # Default: "FixedTime"
        cookie_expiration_time            = optional(string) # Default: "08:00:00"
        logout_endpoint                   = optional(string)
        nonce_expiration_time             = optional(string) # Default: "00:05:00"
        preserve_url_fragments_for_logins = optional(bool)   # Default: false
        token_refresh_extension_time      = optional(number) # Default: 72
        token_store_enabled               = optional(bool)   # Default: false
        token_store_path                  = optional(string)
        token_store_sas_setting_name      = optional(string)
        validate_nonce                    = optional(bool) # Default: true
      })
      microsoft_v2 = optional(object({
        allowed_audiences          = optional(list(string))
        client_id                  = string
        client_secret_setting_name = string
        login_scopes               = optional(list(string))
      }))
      require_authentication = optional(bool)
      require_https          = optional(bool)   # Default: true
      runtime_version        = optional(string) # Default: "~1"
      twitter_v2 = optional(object({
        consumer_key                 = string
        consumer_secret_setting_name = string
      }))
      unauthenticated_action = optional(string) # Default: "RedirectToLoginPage"
    }))
    backup = optional(object({
      enabled = optional(bool) # Default: true
      name    = string
      schedule = object({
        frequency_interval       = number
        frequency_unit           = string
        keep_at_least_one_backup = optional(bool)   # Default: false
        retention_period_days    = optional(number) # Default: 30
        start_time               = optional(string)
      })
      storage_account_url = string
    }))
    connection_string = optional(object({
      name  = string
      type  = string
      value = string
    }))
    identity = optional(object({
      identity_ids = optional(set(string))
      type         = string
    }))
    logs = optional(object({
      application_logs = optional(object({
        azure_blob_storage = optional(object({
          level             = string
          retention_in_days = number
          sas_url           = string
        }))
        file_system_level = string
      }))
      detailed_error_messages = optional(bool) # Default: false
      failed_request_tracing  = optional(bool) # Default: false
      http_logs = optional(object({
        azure_blob_storage = optional(object({
          retention_in_days = optional(number) # Default: 0
          sas_url           = string
        }))
        file_system = optional(object({
          retention_in_days = number
          retention_in_mb   = number
        }))
      }))
    }))
    storage_account = optional(object({
      access_key   = string
      account_name = string
      mount_path   = optional(string)
      name         = string
      share_name   = string
      type         = string
    }))
  }))
}

