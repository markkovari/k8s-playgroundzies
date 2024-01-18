#kubectl patch deployment \
#   argo-server \
#   --namespace argo \
#   --type='json' \
#   -p='[{"op": "replace", "path": "/spec/template/spec/containers/0/args", "value": [
#   "server",
#   "--auth-mode=server"
# ]}]'

resource "null_resource" "argo_workflows_patch" {
  depends_on = [null_resource.argo_workflows_external_definiotions_import]
  provisioner "local-exec" {
    command = format(<<EOT
    kubectl patch deployment argo-server -n=%s --type='json' -p='[{"op": "replace", "path": "/spec/template/spec/containers/0/args", "value": [ "server", "--auth-mode=server"]}]' 
EOT
    , local.argo_workflows_ns)
  }
}
