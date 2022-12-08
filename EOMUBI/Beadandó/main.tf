module "service_accounts" {
    source = "terraform-google-modules/service-accounts/google"
    project_id = "ekke-cloud"
    names = ["eomubi"]
    version = "~> 3.0"
    project_roles = [
        "ekke-cloud=>roles/viewer"
    ]
}