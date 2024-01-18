provider "kubernetes" {
  config_path = "~/.kube/config"
}

terraform {
  backend "kubernetes" {
    secret_suffix = "tf-state"
    config_path   = "~/.kube/config"
  }
}
