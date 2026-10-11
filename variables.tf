variable "apigee_flowhooks" {
  description = <<EOT
Map of apigee_flowhooks, attributes below
Required:
    - environment
    - flow_hook_point
    - org_id
    - sharedflow
Optional:
    - continue_on_error
    - deletion_policy
    - description
    - timeouts (block):
        - create (optional)
        - delete (optional)
EOT

  type = map(object({
    environment       = string
    flow_hook_point   = string
    org_id            = string
    sharedflow        = string
    continue_on_error = optional(bool)
    deletion_policy   = optional(string)
    description       = optional(string)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
    }))
  }))
}

