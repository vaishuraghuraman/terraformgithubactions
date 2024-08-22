provider "google" {
    project = var.project_id
    region = var.region
    zone = var.zone
}

//VPC

module "vpc1" {
    source = "./modules/vpc1"
    vpcname = var.vpcname
}

//Subnetwork

module "subnetwork1"{
    source = "./modules/subnetwork1"
    vpcname = module.vpc1.google_compute_vpcname
    subnetname = var.subnetname
    ip_cidr_range = var.ip_cidr_range
    region = var.region
}

//VM instance

module "vminstance1"{
    source = "./modules/vminstance1"
    name = var.vmname
    machine_type = var.machine_type
    zone = var.zone
    image = var.image
    vpcname = module.vpc1.google_compute_vpcname
    subname = module.subnetwork1.google_compute_subnetwork_subname
    //user = var.user
    //ssh_private_key = var.ssh_private_key
    //ssh_public_key = var.ssh_public_key

}



//FIREWALL

module "firewall1"{
    source = "./modules/firewall1"
    firewallname =  var.firewallname
    vpcname = module.vpc1.google_compute_vpcname
}

module "bqdataset1" {
    source = "./modules/bqdataset1"
    friendly_name = var.friendly_name
    location = var.location
    bqname = var.bqname
    default_table_expiration_ms = var.default_table_expiration_ms
}


module "table" {
    source = "./modules/table"
    bqname = module.bqdataset1.google_bigquery_dataset_bqname
    table_id = var.table_id
    type = var.type
}



















































































































