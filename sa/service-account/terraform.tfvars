project_id = "sanket-gcp-project"
names = ["gcr-custom-role"]
project_roles= [
"resourcemanager.projects.get",
"storage.buckets.get",
"storage.objects.create",
"storage.objects.get",
"storage.objects.getIamPolicy",
"storage.objects.list",
"storage.objects.setIamPolicy",
"storage.objects.update",
"roles/container.admin"
]
