variable "core_compute_hosts" {
  description = <<EOT
Map of core_compute_hosts, attributes below
Required:
    - compute_host_id
Optional:
    - compute_host_group_id
    - configuration_action_type
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    compute_host_id           = string
    compute_host_group_id     = optional(string)
    configuration_action_type = optional(string)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}

