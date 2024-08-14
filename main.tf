provider "google" {
    project = var.project_id
    region = var.region
    zone = var.zone
}

//VPC

module "vpc" {
    source = "./modules/vpc"
    vpcname = var.vpcname
}

//Subnetwork

module "subnetwork"{
    source = "./modules/subnetwork"
    subnetname = var.subnetname
    ip_cidr_range = var.ip_cidr_range
    region = var.region
}

//VM instance

module "vminstance"{
    source = "./modules/vminstance"
    name = var.vmname
    machine_type = var.machine_type
    zone = var.zone
    image = var.image

}



//FIREWALL

module "firewall"{
    source = "./modules/firewall"
    firewallname =  var.firewallname
}























































































































