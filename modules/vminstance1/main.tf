
resource "google_compute_address" "static" {
  name = "ipv4-address"
}
//VM

resource "google_compute_instance" "vm1" {
  name         = var.name
  machine_type = var.machine_type
  zone         = var.zone

  tags = ["foo", "bar"]

  boot_disk {
    initialize_params {
      image = var.image
      labels = {
        my_label = "value"
      }
    }
  }
 
  network_interface {
    network = var.vpcname
    subnetwork = var.subname
    access_config {
      nat_ip = google_compute_address.static.address
    }
  }

  metadata = {
    foo = "bar"
  }

  metadata_startup_script = "echo hi > /test.txt"

//connection {
  //  type     = "ssh"
    //user     = "root"
   // password = var.root_password
   // host     = self.public_ip
 // }

  //provisioner "remote-exec" {
    //inline = [
    //  "echo 'Hello world' ",
      //"sudo apt update -y",
    //]
  //}
  
}









