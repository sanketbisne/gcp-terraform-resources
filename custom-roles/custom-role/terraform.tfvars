project_id = "sanket-gcp-project"
target_id  = "sanket-gcp-project"
role_id="gcrcustomrole"

permissions = [
"resourcemanager.projects.get",
"storage.buckets.get",
"storage.objects.create",
"storage.objects.get",
"storage.objects.getIamPolicy",
"storage.objects.list",
"storage.objects.setIamPolicy",
"storage.objects.update",

]
excluded_permissions = ["iam.serviceAccounts.setIamPolicy", "resourcemanager.projects.list"]
members  = ["serviceAccount:gcr-custom-role@souviks-world.iam.gserviceaccount.com"]