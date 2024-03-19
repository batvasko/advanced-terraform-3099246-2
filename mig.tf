### COMPUTE
## Managed Instance Group
module "vm_instance_template" {
    source = "terraform-google-modules/vm/google//modules/instance_template"
    version = "7.9.0"
    project_id = var.project-id
    machine_type = "f1-micro"
    subnetwork = google_compute_subnetwork.subnet-1.name
    service_account = {
        email = var.instance_service_account
        scopes = []
    }
}

module "vm_mig" {
    source = "terraform-google-modules/vm/google//modules/mig"
    version = "7.9.0"
    project_id = var.project-id
    region = var.region
    hostname = "webserver"
    instance_template = var.vm_instance_template.self_link 
}

