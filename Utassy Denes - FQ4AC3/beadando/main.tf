module "virtual_machine" {
  source = "./VM"
  startup_script = "echo done > ~/task"
  
}

data "google_project" "project" {
  
}