resource "google_compute_instance" "default" {
  machine_type = "f1-micro"
  name         = "axaf1w"
  zone = "europe-central2-a"
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }
  network_interface {
    network = "default"
  }
  //depends_on = [module.variable]
}
/*
module "variable" {
  source = "variable.tf"
}
module "price" {
  source = "variable.tf"
}
module "productName" {
  source = "variable.tf"
} */