variable "group_lookup" {
  description = <<EOT
Map of group_lookup, attributes below
Required:
    - display_name
Optional:
    - acl_principal_id
    - allow_cluster_create
    - allow_instance_pool_create
    - api
    - child_groups
    - databricks_sql_access
    - external_id
    - groups
    - instance_profiles
    - members
    - recursive
    - roles
    - service_principals
    - users
    - workspace_access
    - workspace_consume
    - provider_config (block):
        - workspace_id (optional)
EOT

  type = map(object({
    display_name               = string
    acl_principal_id           = optional(string)
    allow_cluster_create       = optional(bool)
    allow_instance_pool_create = optional(bool)
    api                        = optional(string)
    child_groups               = optional(set(string))
    databricks_sql_access      = optional(bool)
    external_id                = optional(string)
    groups                     = optional(set(string))
    instance_profiles          = optional(set(string))
    members                    = optional(set(string))
    recursive                  = optional(bool)
    roles                      = optional(set(string))
    service_principals         = optional(set(string))
    users                      = optional(set(string))
    workspace_access           = optional(bool)
    workspace_consume          = optional(bool)
    provider_config = optional(object({
      workspace_id = optional(string)
    }))
  }))
}

