variable "compute_instance_name" {
  type        = string
  description = "Name of the compute instance"
  default = "wgxnp2"
}

variable "compute_instance_machine_type" {
  type        = string
  description = "Machine type of compute instance"
  default = "f1-micro"
}

variable "project_zone" {
  type        = string
  description = "Location where the compute instance will be instantiated."
  default = "europe-central2-a"
}

variable "project_name" {
  description = "Name of current project."
  type = string
  default = "ekke-cloud"
}