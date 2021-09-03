cluster_name='mylearningcluster'
project='adhish-sandbox'
zone='australia-southeast1-a'


gcloud config set run/platform gke 
gcloud config set run/cluster $cluster_name
gcloud config set run/cluster_location $zone

gcloud config set project $project

gcloud config set compute/zone $zone

gcloud services enable container.googleapis.com containerregistry.googleapis.com cloudbuild.googleapis.com

gcloud container clusters create $cluster_name --addons=HttpLoadBalancing,CloudRun --machine-type=n1-standard-4 --num-nodes=3 --enable-stackdriver-kubernetes

gcloud container clusters get-credentials $cluster_name
