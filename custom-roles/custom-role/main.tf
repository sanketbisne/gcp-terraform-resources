/**
 * Copyright 2021 Google LLC
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

/******************************************
  Module custom_role call
 *****************************************/
module "custom-role-project" {
  source = "../../custom-roles/custom-role-module/"

  target_level         = "project"
  target_id            = var.project_id
  role_id              = var.role_id
  base_roles           = ["roles/iam.serviceAccountAdmin"]
  permissions          = var.permissions
  description          = "This is a project level custom role for GCR."
  members              = var.members
  excluded_permissions = var.excluded_permissions
}

resource "google_service_account" "custom_role_account_02" {
  account_id = "custom-role-account-02"
  project    = var.project_id
}

