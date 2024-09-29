provider "google" {
  region  = var.region
  zone    = var.zone
  project = "devdataops-project"
  credentials = file("/Users/mac/Downloads/devdataops-project.json")
}
