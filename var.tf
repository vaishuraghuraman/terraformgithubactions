variable "vmname" {
    type = string
}

variable "machine_type" {
    description  = "machine type"
}

variable "zone" {
   description = "zone"
}

variable "image" { 
    description = "image of the VM"
}

variable "vpcname"{
    description = "name of the VPC"
}

variable "subnetname" {
    description = "name of the subnet"
}

variable "ip_cidr_range" {
    description  = "ip range"
}


variable "region" {
    description = "region"
}

variable "firewallname" {
    description = "name of the firewall"
}

variable "project_id"{
    description = "project id"
}

variable "bqname" {
 description = "datasetid"
  
}

variable "friendly_name"{
    description = "friendly name"
}

variable "location"{
    description = "location"
}

variable "default_table_expiration_ms" {
    description = "default_table_expiration_ms"
}

variable "bqname"{}

variable "table_id"{
    description = "table_name"
}

variable "type" {
    description = "type"
}
