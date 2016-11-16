#!/bin/bash
images=(rancher/swarm-agent:v0.1.3 rancher/agent-instance:v0.8.3 rancher/agent:v1.0.2)
for imageName in ${images[@]} ; do
  docker pull beagledata.com:5000/$imageName
  #docker tag xjw263/$imageName gcr.io/google_containers/$imageName
  docker tag beagledata.com:5000/$imageName  $imageName
  #docker push beagledata.com:5000/$imageName
  #docker rmi xjw263/$imageName
done