output "apigee_flowhooks_id" {
  description = "Map of id values across all apigee_flowhooks, keyed the same as var.apigee_flowhooks except keys with no id are omitted"
  value       = { for k, v in google_apigee_flowhook.apigee_flowhooks : k => v.id if v.id != null && length(v.id) > 0 }
}
output "apigee_flowhooks_continue_on_error" {
  description = "Map of continue_on_error values across all apigee_flowhooks, keyed the same as var.apigee_flowhooks except keys with no continue_on_error are omitted"
  value       = { for k, v in google_apigee_flowhook.apigee_flowhooks : k => v.continue_on_error if v.continue_on_error != null }
}
output "apigee_flowhooks_deletion_policy" {
  description = "Map of deletion_policy values across all apigee_flowhooks, keyed the same as var.apigee_flowhooks except keys with no deletion_policy are omitted"
  value       = { for k, v in google_apigee_flowhook.apigee_flowhooks : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "apigee_flowhooks_description" {
  description = "Map of description values across all apigee_flowhooks, keyed the same as var.apigee_flowhooks except keys with no description are omitted"
  value       = { for k, v in google_apigee_flowhook.apigee_flowhooks : k => v.description if v.description != null && length(v.description) > 0 }
}
output "apigee_flowhooks_environment" {
  description = "Map of environment values across all apigee_flowhooks, keyed the same as var.apigee_flowhooks except keys with no environment are omitted"
  value       = { for k, v in google_apigee_flowhook.apigee_flowhooks : k => v.environment if v.environment != null && length(v.environment) > 0 }
}
output "apigee_flowhooks_flow_hook_point" {
  description = "Map of flow_hook_point values across all apigee_flowhooks, keyed the same as var.apigee_flowhooks except keys with no flow_hook_point are omitted"
  value       = { for k, v in google_apigee_flowhook.apigee_flowhooks : k => v.flow_hook_point if v.flow_hook_point != null && length(v.flow_hook_point) > 0 }
}
output "apigee_flowhooks_org_id" {
  description = "Map of org_id values across all apigee_flowhooks, keyed the same as var.apigee_flowhooks except keys with no org_id are omitted"
  value       = { for k, v in google_apigee_flowhook.apigee_flowhooks : k => v.org_id if v.org_id != null && length(v.org_id) > 0 }
}
output "apigee_flowhooks_sharedflow" {
  description = "Map of sharedflow values across all apigee_flowhooks, keyed the same as var.apigee_flowhooks except keys with no sharedflow are omitted"
  value       = { for k, v in google_apigee_flowhook.apigee_flowhooks : k => v.sharedflow if v.sharedflow != null && length(v.sharedflow) > 0 }
}

