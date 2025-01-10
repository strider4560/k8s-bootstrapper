resource "digitalocean_project" "playground" {
  name        = vars.doks_cluster_name_prefix
  description = "A project to run hivenetes/k8s-bootstrapper on DigitalOcean."
  purpose     = "Framework to build a production-grade setup"
  environment = "Production"
  resources   = [digitalocean_kubernetes_cluster.bootstrapper.urn]
}