project_id  = "sanket-gcp-project"
source_repo = "projects/sanket-gcp-project/repos/test-repo1"
name        = "tf-sanket-trigger"
filename    = "cloudbuild.yaml"

trigger_config = {
    branch_regex = ".*"
    tag_regex    = null
  }
 