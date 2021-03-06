#!/bin/bash

# kubectl create clusterrolebinding cluster-admin-binding --clusterrole cluster-admin --user $(gcloud config get-value account)
releaseVersion=$1
echo "The release version we are dealing with is: $releaseVersion"

baseDir=$(echo $(pwd))
kubeFiles=$baseDir/kubefiles
cd $kubeFiles

# kubectl delete service/react
# kubectl delete deployment.apps/react-deploy

# make this dynamic using $ helm ls
helm upgrade ms1-chart ./ms1-chart

# kubectl apply -f ./ingress/net-ingress.yaml

# kubectl apply -f ./deployment/log-deployment.yaml &&
# kubectl apply -f ./deployment/nginx-controller.yaml &&
# kubectl apply -f ./deployment/react-deployment.yaml

# kubectl apply -f ./service/log-service.yaml &&
# kubectl apply -f ./service/nginx-service.yaml &&
# kubectl apply -f ./service/react-service.yaml

# kubectl apply -f ./ingress/ingress.yaml
