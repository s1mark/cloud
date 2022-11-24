module "vm" {
    source = "./vm"
    project_id = "ekke-cloud"
    boot_image = "debian-cloud/debian-11"
}

data "google_project" "project" {
}