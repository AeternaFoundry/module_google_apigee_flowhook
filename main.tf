resource "google_apigee_flowhook" "apigee_flowhooks" {
  for_each = var.apigee_flowhooks

  environment       = each.value.environment
  flow_hook_point   = each.value.flow_hook_point
  org_id            = each.value.org_id
  sharedflow        = each.value.sharedflow
  continue_on_error = each.value.continue_on_error
  deletion_policy   = each.value.deletion_policy
  description       = each.value.description

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
    }
  }
}

