/**
 * Copyright 2018 Google LLC
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

module "gke" {
  source                    = "../gke-cluster-module/private-cluster/"
  project_id                = var.project_id
  name                      = var.cluster_name
  regional                  = true
  region                    = var.region
  network                   = var.network
  subnetwork                = var.subnetwork
  ip_range_pods             = var.ip_range_pods
  ip_range_services         = var.ip_range_services
  service_account           = var.service_account
  master_ipv4_cidr_block    = var.master_ipv4_cidr_block
  kubernetes_version   = var.kubernetes_version
  zones = var.zones
  default_max_pods_per_node = var.default_max_pods_per_node
  remove_default_node_pool  = true
  create_service_account    = false
  enable_private_endpoint   = false
  enable_private_nodes      = true
  horizontal_pod_autoscaling  = true
  enable_binary_authorization  = false
  identity_namespace = var.identity_namespace
  cluster_resource_labels = var.cluster_resource_labels
  node_pools = [
    {
      name              = var.node_pool_name
      min_count         = var.min_count
      max_count         = var.max_count
      local_ssd_count   = var.local_ssd_count
      disk_size_gb      = var.disk_size_gb
      disk_type         = var.disk_type
      service_account   = var.service_account
      max_pods_per_node = var.max_pods_per_node
      auto_repair       = true
      auto_upgrade      = true
      preemptible       = false
      machine_type      = var.machine_type
    },
  ]

  # master_authorized_networks = [
  #   {
  #     cidr_block   = data.google_compute_subnetwork.subnetwork.ip_cidr_range
  #     display_name = "VPC"
  #   },
  # ]
}
