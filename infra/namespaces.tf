resource "kubernetes_namespace" "argo-workflows" {
  metadata {
    name = local.argo_workflows_ns
  }
}
