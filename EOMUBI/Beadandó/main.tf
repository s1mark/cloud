module "service_accounts" {
    source = "terraform-google-modules/service-accounts/google"
    names = ["eomubi"]
    zone = "europe-central2-a"
    version = "~> 3.0"
    project_roles = [
        "ekke-cloud=>roles/viewer"
    ]
}