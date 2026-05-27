variable "project_id" {
  type = string
}

variable "zone" {
  type = string
}

variable "instance_name" {
  type = string
}

variable "machine_type" {
  type    = string
  default = "e2-medium"
}

variable "subnetwork" {
  type = string
}

variable "boot_image" {
  type    = string
  default = "debian-cloud/debian-11"
}