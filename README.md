# Serverless on GKE

This tutorial assumes gcloud SDK has been intalled locally - instructions can be found here  - https://cloud.google.com/sdk/docs/install

To authenticate to google cloud  use the following command

``` gcloud auth application-default login``` 

script descriptions and order of execution

1. build-gke-cluster.sh: Creates a gke cluster in the specified project 
2. build-deploy-microservice.sh: package microservices contained in the microservices folder and deploy them in cloud run for anthos
3. cloud-endpoints-deploy.sh: deploy cloud endpoints that will be used to access the microservices
4. build-deplot-espv2: deploy esvv2 proxy required for cloud endpoints
5. espv2-domain-mapping: generate a public domain for our api