#!/bin/bash

project="$1"
if [ "$project" == "" ];then
	echo "Project MUST be provided as first arg"
	exit
fi
image=gcr.io/$project/shopland-core
region=europe-north1
service=shopland-core

gcloud config set project $project

echo "Building container image: $image"
gcloud builds submit --tag $image

echo "Deploying SHOPLANDCore image: $image"
gcloud run deploy $service --image $image --platform managed --allow-unauthenticated --region $region