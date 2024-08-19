resource "google_compute_firewall" "firewall" {
  name    = var.firewallname
  network = module.vpc1.vpcname
  allow {
    protocol = "icmp"
  }

  allow {
    protocol = "tcp"
    ports    = ["80", "8080", "1000-2000","22"]
  }

  source_tags = ["web"]
}