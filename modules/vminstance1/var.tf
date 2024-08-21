variable "name" {
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
    description = "vpc name"
}

variable "subname"{
    description = "subnet name"
}



variable "user"{
    description = "user "
}

variable "ssh_public_key"{
    description  = "public key"
}

variable "ssh_private_key" {
    description = "private key"
}