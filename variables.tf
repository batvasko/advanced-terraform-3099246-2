### VARIABLES
variable "project-id" {
  type = string
  default = "storied-scarab-408814"
}

variable "region" {
  type = string
  default = "europe-central2"
}

variable "zone" {
  type = string
  default = "europe-central2-a"
}

variable "subnet-name" {
  type = string
  default = "subnet1"
}

variable "subnet-cidr" {
  type = string
  default = "10.1.0.0/20"
}

variable "private_google_access" {
  type = bool
  default = true
}