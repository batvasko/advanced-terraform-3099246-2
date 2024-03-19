variable "tf_cloud_token" {

}

variable "tfcloud_organization" {
    
}

variable "github_oauth_token" {
  
}

variable "dev-project-id" {
  type = string
}

variable "qa-project-id" {
  type = string
}


variable "vcs-identifier" {
  
}

variable "enable-services" {
  type = list
  default = ["iam.googleapis.com","cloudresourcemanager.googleapis.com", "compute.googleapis.com", "redis.googleapis.com"]
}

variable "dev-main-branch" {
  type = string
  default = "04_06_dev"
}

variable "qa-main-branch" {
  type = string
  default = "04_06_qa"
}

variable "region" {
  type = string
  default = "europe-central2"
}

variable "zone" {
  type = string
  default = "europe-central2-a"
}