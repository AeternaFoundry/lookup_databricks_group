output "group_lookup_id" {
  description = "Map of id values across all group_lookup, keyed the same as var.group_lookup except keys with no id are omitted"
  value       = { for k, v in data.databricks_group.group_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "group_lookup_acl_principal_id" {
  description = "Map of acl_principal_id values across all group_lookup, keyed the same as var.group_lookup except keys with no acl_principal_id are omitted"
  value       = { for k, v in data.databricks_group.group_lookup : k => v.acl_principal_id if v.acl_principal_id != null && length(v.acl_principal_id) > 0 }
}
output "group_lookup_allow_cluster_create" {
  description = "Map of allow_cluster_create values across all group_lookup, keyed the same as var.group_lookup except keys with no allow_cluster_create are omitted"
  value       = { for k, v in data.databricks_group.group_lookup : k => v.allow_cluster_create if v.allow_cluster_create != null }
}
output "group_lookup_allow_instance_pool_create" {
  description = "Map of allow_instance_pool_create values across all group_lookup, keyed the same as var.group_lookup except keys with no allow_instance_pool_create are omitted"
  value       = { for k, v in data.databricks_group.group_lookup : k => v.allow_instance_pool_create if v.allow_instance_pool_create != null }
}
output "group_lookup_api" {
  description = "Map of api values across all group_lookup, keyed the same as var.group_lookup except keys with no api are omitted"
  value       = { for k, v in data.databricks_group.group_lookup : k => v.api if v.api != null && length(v.api) > 0 }
}
output "group_lookup_child_groups" {
  description = "Map of child_groups values across all group_lookup, keyed the same as var.group_lookup except keys with no child_groups are omitted"
  value       = { for k, v in data.databricks_group.group_lookup : k => v.child_groups if v.child_groups != null && length(v.child_groups) > 0 }
}
output "group_lookup_databricks_sql_access" {
  description = "Map of databricks_sql_access values across all group_lookup, keyed the same as var.group_lookup except keys with no databricks_sql_access are omitted"
  value       = { for k, v in data.databricks_group.group_lookup : k => v.databricks_sql_access if v.databricks_sql_access != null }
}
output "group_lookup_display_name" {
  description = "Map of display_name values across all group_lookup, keyed the same as var.group_lookup except keys with no display_name are omitted"
  value       = { for k, v in data.databricks_group.group_lookup : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "group_lookup_external_id" {
  description = "Map of external_id values across all group_lookup, keyed the same as var.group_lookup except keys with no external_id are omitted"
  value       = { for k, v in data.databricks_group.group_lookup : k => v.external_id if v.external_id != null && length(v.external_id) > 0 }
}
output "group_lookup_groups" {
  description = "Map of groups values across all group_lookup, keyed the same as var.group_lookup except keys with no groups are omitted"
  value       = { for k, v in data.databricks_group.group_lookup : k => v.groups if v.groups != null && length(v.groups) > 0 }
}
output "group_lookup_instance_profiles" {
  description = "Map of instance_profiles values across all group_lookup, keyed the same as var.group_lookup except keys with no instance_profiles are omitted"
  value       = { for k, v in data.databricks_group.group_lookup : k => v.instance_profiles if v.instance_profiles != null && length(v.instance_profiles) > 0 }
}
output "group_lookup_members" {
  description = "Map of members values across all group_lookup, keyed the same as var.group_lookup except keys with no members are omitted"
  value       = { for k, v in data.databricks_group.group_lookup : k => v.members if v.members != null && length(v.members) > 0 }
}
output "group_lookup_provider_config" {
  description = "Map of provider_config values across all group_lookup, keyed the same as var.group_lookup except keys with no provider_config are omitted"
  value       = { for k, v in data.databricks_group.group_lookup : k => one(v.provider_config) if v.provider_config != null && length(v.provider_config) > 0 }
}
output "group_lookup_recursive" {
  description = "Map of recursive values across all group_lookup, keyed the same as var.group_lookup except keys with no recursive are omitted"
  value       = { for k, v in data.databricks_group.group_lookup : k => v.recursive if v.recursive != null }
}
output "group_lookup_roles" {
  description = "Map of roles values across all group_lookup, keyed the same as var.group_lookup except keys with no roles are omitted"
  value       = { for k, v in data.databricks_group.group_lookup : k => v.roles if v.roles != null && length(v.roles) > 0 }
}
output "group_lookup_service_principals" {
  description = "Map of service_principals values across all group_lookup, keyed the same as var.group_lookup except keys with no service_principals are omitted"
  value       = { for k, v in data.databricks_group.group_lookup : k => v.service_principals if v.service_principals != null && length(v.service_principals) > 0 }
}
output "group_lookup_users" {
  description = "Map of users values across all group_lookup, keyed the same as var.group_lookup except keys with no users are omitted"
  value       = { for k, v in data.databricks_group.group_lookup : k => v.users if v.users != null && length(v.users) > 0 }
}
output "group_lookup_workspace_access" {
  description = "Map of workspace_access values across all group_lookup, keyed the same as var.group_lookup except keys with no workspace_access are omitted"
  value       = { for k, v in data.databricks_group.group_lookup : k => v.workspace_access if v.workspace_access != null }
}
output "group_lookup_workspace_consume" {
  description = "Map of workspace_consume values across all group_lookup, keyed the same as var.group_lookup except keys with no workspace_consume are omitted"
  value       = { for k, v in data.databricks_group.group_lookup : k => v.workspace_consume if v.workspace_consume != null }
}

