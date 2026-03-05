provider "google" {
  project = "project-d1a95002-78b0-493b-b7e"
  region  = "us-central1"
}

resource "google_storage_bucket" "mybucket" {
  name     = "terraform-drift-demo-2024" # Must be globally unique
  location = "US"
  uniform_bucket_level_access = true


  labels = {
    environment = "dev"
    managed_by  = "terraforms"
  }
}