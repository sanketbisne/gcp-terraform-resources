locals {
  name_suffix = "${random_pet.suffix.id}"
}

resource "random_pet" "suffix" {
  length = 2
}

provider "google" {
  region = "us-central1"
  zone   = "us-central1-c"
  
}