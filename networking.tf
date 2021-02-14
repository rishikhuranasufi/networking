// Create VPC
resource "google_compute_network" "vpc" {
 name                    = "technotrainer-vpc"
 auto_create_subnetworks = "false"
}

// Create Subnet
resource "google_compute_subnetwork" "subnet" {
 name          = "first-technotrainer-subnet"
 ip_cidr_range = "10.10.10.0/24"
 network       = "technotrainer-vpc"
 depends_on    = [google_compute_network.vpc]
 region      = "us-west1"
}

// VPC firewall configuration
resource "google_compute_firewall" "firewall" {
  name    = "technotrainer-firewall"
  network = "${google_compute_network.vpc.name}"

  allow {
    protocol = "icmp"
  }

  allow {
    protocol = "tcp"
    ports    = ["22"]
  }

  source_ranges = ["0.0.0.0/0"]
}
