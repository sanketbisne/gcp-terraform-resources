
variable "project_id" {
  description = "The project ID to host the cluster in"
}

variable "region" {
  description = "The region to host the cluster in"
}

variable "cluster_name" {
  type     = string
  description = "The name of the cluster (required)"
}



variable "network" {
  description = "The VPC network to host the cluster in"
}

variable "subnetwork" {
  description = "The subnetwork to host the cluster in"
}

variable "ip_range_pods" {
  description = "The secondary ip range to use for pods"
}

variable "ip_range_services" {
  description = "The secondary ip range to use for services"
}

variable "service_account" {
  description = "Service account to associate to the nodes in the cluster"
}

variable "min_count" {
  description = "Minimum number of nodes in the NodePool."
  default     = 1
}

variable "max_count" {
  description = "Maximum number of nodes in the NodePool."
  default     = 2
}
variable "node_pool_name" {
  type        = string
  description = "The name of the node pool (required)"
}

variable "disk_size_gb" {
  description = "Size of the disk attached to each node, specified in GB. The smallest allowed disk size is 10GB"
  default     = "100"
}

variable "disk_type" {
  description = "Type of the disk attached to each node (e.g. 'pd-standard' or 'pd-ssd')"
  default     = "pd-standard"
}


variable "max_pods_per_node" {
  description = "Maximum number of pods per nodes."
  default     = 110
}

variable "master_ipv4_cidr_block" {
  type        = string
  description = "(Beta) The IP range in CIDR notation to use for the hosted master network"
  default     = "10.0.0.0/28"
}

variable "kubernetes_version" {
  type        = string
  description = "The Kubernetes version of the masters. If set to 'latest' it will pull latest available version in the selected region."
  default     = "latest"
}

variable "default_max_pods_per_node" {
  type        = number
  description = "The maximum number of pods to schedule per node"

}

variable "cluster_resource_labels" {
  type        = map(string)
  description = "The GCE resource labels (a map of key/value pairs) to be applied to the cluster"
  default     = {}
}

variable "identity_namespace" {
  description = "The workload pool to attach all Kubernetes service accounts to. (Default value of `enabled` automatically sets project-based pool `[project_id].svc.id.goog`)"
  type        = string
  default = "enabled"
}

variable "master_authorized_networks" {
  type        = list(object({ cidr_block = string, display_name = string }))
  description = "List of master authorized networks. If none are provided, disallow external access (except the cluster node IPs, which GKE automatically whitelists)."
  default     = []
}

variable "image_type" {
}

variable "local_ssd_count" {

}
variable "machine_type" {

}

variable "zones" {
  type        = list(string)
  description = "The zones to host the cluster in (optional if regional cluster / required if zonal)"

}