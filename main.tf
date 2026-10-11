data "databricks_group" "group_lookup" {
  for_each = var.group_lookup

  display_name               = each.value.display_name
  acl_principal_id           = each.value.acl_principal_id
  allow_cluster_create       = each.value.allow_cluster_create
  allow_instance_pool_create = each.value.allow_instance_pool_create
  api                        = each.value.api
  child_groups               = each.value.child_groups
  databricks_sql_access      = each.value.databricks_sql_access
  external_id                = each.value.external_id
  groups                     = each.value.groups
  instance_profiles          = each.value.instance_profiles
  members                    = each.value.members
  recursive                  = each.value.recursive
  roles                      = each.value.roles
  service_principals         = each.value.service_principals
  users                      = each.value.users
  workspace_access           = each.value.workspace_access
  workspace_consume          = each.value.workspace_consume

  dynamic "provider_config" {
    for_each = each.value.provider_config != null ? [each.value.provider_config] : []
    content {
      workspace_id = provider_config.value.workspace_id
    }
  }
}

