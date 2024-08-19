resource "google_compute_subnetwork" "subnet1" {
  name          = var.subnetname
  ip_cidr_range = var.ip_cidr_range
  region        = var.region
  network       = var.vpcname
}