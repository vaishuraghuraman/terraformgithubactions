resource "google_compute_network" "vpc1" {
  name = var.vpcname
  auto_create_subnetworks = false
}