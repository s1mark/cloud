module "vm" {
    source = "./vm"
    project_id = "ekke-cloud"
    image = "debian-cloud/debian-11"
    nep_name = "ddq7ji"
}

data "google_project" "project" {
}