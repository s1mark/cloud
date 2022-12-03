module "virtual_machine" {
  source = "./VM"
  
  
}

data "google_project" "project" {
  
}