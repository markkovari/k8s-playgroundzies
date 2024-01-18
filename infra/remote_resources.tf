resource "null_resource" "argo_workflows_external_definiotions_import" {
  provisioner "local-exec" {
    command = format("kubectl apply -n %s -f https://github.com/argoproj/argo-workflows/releases/download/v%s/quick-start-minimal.yaml", local.argo_workflows_ns, local.argo_workflows_version)
  }
}


