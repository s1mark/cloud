module "mod_vm" {
    source = "/module/vm"
    neptun_kod = var.nk
}

data "google_project" "project" {
}