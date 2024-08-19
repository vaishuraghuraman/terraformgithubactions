
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
    network = module.vpc.google_compute_network_name
    subnetwork = module.vpc.google_compute_subnetwork_name
    access_config {
      // Ephemeral public IP
    }
  }

  metadata = {
    foo = "bar"
  }

  metadata_startup_script = "echo hi > /test.txt"

  
}









