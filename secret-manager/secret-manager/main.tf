module "secret" {
  source     = "../secret-manager-module/"
  project_id = var.project_id
  id         = var.id
  secret     = null
}