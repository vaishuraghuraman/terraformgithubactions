resource "google_bigquery_dataset" "dataset" {
  dataset_id                  = var.bqname
  friendly_name               = var.friendly_name
  description                 = "This is a test description"
  location                    = var.location
  default_table_expiration_ms = var.default_table_expiration_ms

  labels = {
    env = "default"
  }

  access {
    role          = "OWNER"
    user_by_email = google_service_account.bqowner.email
  }

  access {
    role   = "READER"
    domain = "hashicorp.com"
  }
}

resource "google_service_account" "bqowner" {
  account_id = "bqowner"
}