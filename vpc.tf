
resource "google_compute_network" "vpc" {
  name                    = "${var.project_id}-vpc4"
  auto_create_subnetworks = "false"
}
resource "google_compute_subnetwork" "subnet" {
  name          = "${var.project_id}-subnet4"
  region        = var.region
  network       = google_compute_network.vpc.name
  ip_cidr_range = "10.10.0.0/24"
}