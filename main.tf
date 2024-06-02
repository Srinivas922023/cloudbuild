provider "google" {
  project      = "imperial-ally-421005"
  
}
resource "google_compute_instance" "default" {

  name         = "punch"
  machine_type = "e2-small"
  zone         = "us-central1-a"
  
   boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
      
    }
   }
  #testing purpose tt
    network_interface {
    network = "default"

    access_config {
      // Ephemeral public IP
    }
  }

 }
