#!/bin/bash
set -x
PROJECT_ID=sanket-gcp-project
for SERVICE in "containerregistry" "container" "cloudbuild" "secretmanager"
do
  gcloud services enable ${SERVICE}.googleapis.com --project=${PROJECT_ID} --async
done