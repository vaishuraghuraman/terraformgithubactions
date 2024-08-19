resource "google_compute_firewall" "firewall" {
  name    = var.firewallname
  network = module.network.name
  allow {
    protocol = "icmp"
  }

  allow {
    protocol = "tcp"
    ports    = ["80", "8080", "1000-2000","22"]
  }

  source_tags = ["web"]
}