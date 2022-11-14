variable "instance_name" {
  description = "VM Instance Name"
  type        = string
  default     = "ekke-cloud-eenugw"
}

variable "machine_type" {
  description = "VM Machine Type"
  type        = string
  default     = "europe-central2-a"
}

variable "region" {
  description = "VM Region"
  type        = string
  default     = "europe-central2"
}

variable "zone" {
  description = "VM Zone"
  type        = string
  default     = "europe-central2-a"
}

variable "project" {
  description = "Project Name"
  type        = string
  default     = "ekke-cloud"
}

variable "image" {
  description = "VM Image"
  type = string
  default = "debian-cloud/debian-11"
}