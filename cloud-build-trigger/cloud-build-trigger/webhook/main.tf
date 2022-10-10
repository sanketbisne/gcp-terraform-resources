

resource "google_cloudbuild_trigger" "webhook-config-trigger" {
  project = "sanket-gcp-project"
  name        = "sanket-webhook-trigger"
  description = "acceptance test example webhook build trigger"
  build  {
         
           step  {
               args       = [ "echo", "hello world"] 
               name       = "ubuntu" 
             
            }
        }
 webhook_config {
   secret = "projects/$P_ID/secrets/sanket-secret/versions/1"
  }
service_account = "projects/$PROJECT_ID/serviceAccounts/gcr-custom-role@$PROJECT_ID.iam.gserviceaccount.com"
}