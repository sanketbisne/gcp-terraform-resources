project_id                = "souviks-world"
region                    = "us-west1"
zones                     = ["us-west1-a"]
cluster_name              = "sanket-cluster"
network                   = "sanket-network"
subnetwork                = "gke-subnet"
ip_range_pods             = "gke-pod-subnet"
ip_range_services         = "gke-svc-subnet"
service_account           = "gcr-custom-role@souviks-world.iam.gserviceaccount.com"
master_ipv4_cidr_block    = "10.4.1.0/28"
kubernetes_version        = "1.22.12-gke.300"
default_max_pods_per_node = 64
node_pool_name            = "sanket-node-pool"
min_count                 = 1
max_count                 = 1
local_ssd_count           = 0
disk_size_gb              = 15
disk_type                 = "pd-standard"
image_type                = "COS_CONTAINERD"
machine_type              = "e2-medium"
cluster_resource_labels = {
  env = "staging"
}




