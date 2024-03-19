### VARIABLES
variable "project-id" {
  type = string
  default = "storied-scarab-408814"
}

variable "org_id" {
  type = string
  default = ""
  sensitive = true
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

variable "firewall-ports" {
  type = list
  default = ["80", "8080", "1000-2000", "22"]
}

variable "compute-source-tags" {
    type = list
    default = ["web"]
}

variable "target_environment" {
  default = "DEV"
}

variable "environment_list" {
  type = list(string)
  default = ["DEV","QA","STAGE","PROD"]
}

variable "environment_map" {
  type = map(string)
  default = {
    "DEV" = "dev",
    "QA" = "qa",
    "STAGE" = "stage",
    "PROD" = "prod"
  }
}

variable "environment_machine_type" {
  type = map(string)
  default = {
    "DEV" = "f1-micro",
    "QA" = "f1-micro",
    "STAGE" = "f1-micro",
    "PROD" = "e2-micro"
  }
}

variable "environment_instance_settings" {
  type = map(object({machine_type=string, labels=map(string)}))
  default = {
    "DEV" = {
      machine_type = "f1-micro"
      labels = {
        environment = "dev"
      }
    },
   "QA" = {
      machine_type = "f1-micro"
      labels = {
        environment = "qa"
      }
    },
    "STAGE" = {
      machine_type = "f1-micro"
      labels = {
        environment = "stage"
      }
    },
    "PROD" = {
      machine_type = "e2-micro"
      labels = {
        environment = "prod"
      }
    }
  }
}