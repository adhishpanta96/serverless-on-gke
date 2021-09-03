cluster_name='mylearningcluster'
project='adhish-sandbox'
zone='australia-southeast1-a'

sample=python

pack build gcr.io/$project/$sample-bot --path microservices/$sample --builder gcr.io/buildpacks/builder --publish
gcloud run deploy $sample-bot --project=$project --platform=gke --cluster=$cluster_name --cluster-location=australia-southeast1-a --image=gcr.io/$project/$sample-bot --ingress=internal 

sample=node

pack build gcr.io/$project/$sample-bot --path microservices/$sample --builder gcr.io/buildpacks/builder --publish
gcloud run deploy $sample-bot --project=$project --platform=gke --cluster=$cluster_name --cluster-location=$zone --image=gcr.io/$project/$sample-bot --ingress=internal