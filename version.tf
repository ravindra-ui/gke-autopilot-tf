terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "3.63.0"
    }
  }
 
}
provider "google" {
  project = var.project_id
  region  = var.region
}