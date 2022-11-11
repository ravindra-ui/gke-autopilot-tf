 
resource "google_container_cluster" "primary" {
  name     = var.cluster_name
  location = var.region
 
  network    = google_compute_network.vpc.name
  subnetwork = google_compute_subnetwork.subnet.name
 
  enable_autopilot = true
}