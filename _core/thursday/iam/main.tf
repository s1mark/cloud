module "project-iam-bindings" {
  source   = "terraform-google-modules/iam/google//modules/projects_iam"
  projects = ["ekke-cloud"]
  mode     = "additive"

  bindings = {
    "roles/compute.instanceAdmin" = var.users
    "roles/compute.osAdminLogin" = var.users
    "roles/iap.tunnelResourceAccessor" = var.users
  }
}
