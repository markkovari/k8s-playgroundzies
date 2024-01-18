locals {
  argo_workflows_ns      = "argo-workflows"
  argo_workflows_version = "3.5.4"
  argo_workflows_ui_port = 2746
  argo_needs_ui          = var.argo_needs_ui
}
