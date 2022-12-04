#Betölti a modult, aminek nincs alapértelmezett értéke, annak ad
module "vm" {
    source = "../module/vm"
    vm_name = "h36og5-vm"
    vm_type = "f1-micro"
    vm_zone = "europe-central2-a"
    service_account_id = "h36og5"
}
#Projekt adatainak lekérése
data "google_project" "project" {
    
}