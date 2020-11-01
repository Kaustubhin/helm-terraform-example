variable "kube_config" {
  type = string
  default = "~/.kube/config"
}

provider "helm" {
  kubernetes {
	config_path = pathexpand(var.kube_config)
  }
}

provider "kubernetes" {
  config_path = pathexpand(var.kube_config)
}