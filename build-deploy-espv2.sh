#!/bin/bash
project='adhish-sandbox'
endpoint_name='mysimpleapi'
config_id=$(gcloud endpoints configs list --service=mysimpleapi.endpoints.$project.cloud.goog --format="value(id)" --limit=1)
echo $config_id
curl https://raw.githubusercontent.com/GoogleCloudPlatform/esp-v2/master/docker/serverless/gcloud_build_image > gcloud_build_image
chmod +x gcloud_build_image
./gcloud_build_image -s $endpoint_name.endpoints.$project.cloud.goog -c $config_id -p $project
gcloud run deploy espv2 --image="gcr.io/$project/endpoints-runtime-serverless:2.30.2-$endpoint_name.endpoints.$project.cloud.goog-$config_id" --platform gke --project=$project



