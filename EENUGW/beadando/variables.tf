variable "project_name" {
  description = "The name of the project."
  type        = string
  default     = "ekke-cloud"
}

variable "project_region" {
  description = "The region of the project."
  type        = string
  default     = "europe-central2"
}

variable "project_zone" {
  description = "The zone of the project."
  type        = string
  default     = "europe-central2-a"
}

variable "vm_instance_name" {
  description = "The name of the instance of the VM."
  type        = string
  default     = "eenugw"
}

variable "vm_machine_type" {
  description = "The machine type of the VM."
  type        = string
  default     = "f1-micro"
}

variable "disk_image" {
  description = "The image of the disk."
  type        = string
  default     = "debian-11-bullseye-v20220719"
}

variable "disk_type" {
  description = "The type of the disk."
  type        = string
  default     = "pd-standard"
}

variable "file_content" {
  description = "The content of the file."
  type        = string
  default     = "done"
}

variable "file_name" {
  description = "The name of the file."
  type        = string
  default     = "~/task"
}

variable "neptun_code" {
  description = "The neptun code."
  type        = string
  default     = "eenugw"
}
