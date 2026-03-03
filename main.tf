provider "google" {
  project = "project-d1a95002-78b0-493b-b7e"
  region  = "us-central1"
}

resource "google_storage_bucket" "demo_bucket" {
  name     = "terraform-drift-demo-2024" # Must be globally unique
  location = "US"

  labels = {
    environment = "dev"
    managed_by  = "terraform"
  }
}