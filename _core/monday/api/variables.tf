variable "project_id" {
  default = "ekke-cloud"
}

variable "enable" {
  default = true
}

variable "activate_apis" {
  type    = list(string)
  default = [
    "compute.googleapis.com"
  ]
}

variable "disable_services_on_destroy" {
  default = true
  type    = bool
}

variable "disable_dependent_services" {
  default = true
  type    = bool
}