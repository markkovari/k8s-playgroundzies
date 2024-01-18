resource "null_resource" "port_forward" {
  depends_on = [null_resource.argo_workflows_patch]
  count      = local.argo_needs_ui ? 1 : 0
  provisioner "local-exec" {
    command = format("kubectl -n=%s port-forward deployment/argo-server %d:2746", local.argo_workflows_ns, local.argo_workflows_ui_port)
  }
}
