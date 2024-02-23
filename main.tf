provider "google" {
    project= "qwiklabs-gcp-01-adb367d3e63a"
    region = us-central1
}

resource "google_storage_bucket" "auto-expire" {
  name          = "no-public-access-bucket"
  location      = "US"
  force_destroy = true

  public_access_prevention = "enforced"
}