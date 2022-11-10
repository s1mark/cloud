module "project-iam-bindings" {
  source   = "terraform-google-modules/iam/google//modules/projects_iam"
  projects = ["ekke-cloud"]
  mode     = "additive"

  bindings = var.bindings
}
