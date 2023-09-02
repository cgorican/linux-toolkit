#!/bin/bash

image_name="<none>"

if [[ ! -z "$1" ]]; then
  image_name=$1
fi

image_ids=$(docker images | awk '$1 == "$image_name" { print $3 }')

if [[ -z "$image_ids" ]]; then
  echo "No Docker images with name $image_name were found."
  exit 0
fi

for image_id in $image_ids; do
  docker rmi $image_id
done

echo "Docker images with name $image_name deleted successfully."
