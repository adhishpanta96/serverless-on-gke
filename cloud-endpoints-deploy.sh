project='adhish-sandbox'
gcloud services enable servicemanagement.googleapis.com servicecontrol.googleapis.com endpoints.googleapis.com

gcloud endpoints services deploy endpoints/mysimpleapi.yaml --project $project
gcloud services enable mysimpleapi.endpoints.$project.cloud.goog