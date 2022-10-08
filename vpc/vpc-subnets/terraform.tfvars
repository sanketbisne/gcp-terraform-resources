project_id              = "souviks-world"
network_name            = "sanket-network"
description             = "sanket-vpc"
subnets = [
  {
    subnet_name   = "gke-subnet"
    subnet_ip     = "10.1.0.0/24"
    subnet_region = "us-west1"
  }
  
]

secondary_ranges = {
  gke-subnet = [
    {
      range_name    = "gke-pod-subnet"
      ip_cidr_range = "10.1.2.0/24"
    },
     {
      range_name    = "gke-svc-subnet"
      ip_cidr_range = "10.1.3.0/26"
    }
  ]

}
