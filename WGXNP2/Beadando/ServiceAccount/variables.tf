variable service_account_id {
  type    = string
  default = "wgxnp2"
}

variable "service_account_display_name" {
  type = string
  default = "WGXNP2"
}

variable service_account_project_roles {
  type    = list(string)
  default = ["ekke-cloud=>roles/monitoring.viewer"]
}

variable "project_name" {
  type = string
  default = "ekke-cloud"
}

variable "service_account_email" {
  type = string
}