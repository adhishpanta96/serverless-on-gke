
project_id='adhish-sandbox'
cluster_name='mylearningcluster'

echo "getting istio ingress IP address"


export ip_address=$(kubectl get svc istio-ingress -n gke-system \
  -o 'jsonpath={.status.loadBalancer.ingress[0].ip}')

echo $ip_address

gcloud beta run domain-mappings create \
  --project=$project_id \
  --platform=gke \
  --cluster=$cluster_name \
  --cluster-location=australia-southeast1-a \
  --service=espv2 \
  --domain=espv2.$ip_address.nip.io
