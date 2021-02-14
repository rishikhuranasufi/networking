output "my_vpc" {
  value = google_compute_network.vpc.id
}
output "my_subnet" {
  value = google_compute_subnetwork.subnet.id
}
output "my_firewall" {
  value = google_compute_firewall.firewall.id
}


