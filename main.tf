resource "oci_core_compute_host" "core_compute_hosts" {
  for_each = var.core_compute_hosts

  compute_host_id           = each.value.compute_host_id
  compute_host_group_id     = each.value.compute_host_group_id
  configuration_action_type = each.value.configuration_action_type

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

