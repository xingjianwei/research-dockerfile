#!/bin/bash
images=(rancher/k8s:v1.2.4-rancher10 rancher/kubernetes-agent:v0.2.2 rancher/lb-controller:v0.2.2 rancher/etcd:v2.3.7-9 rancher/kubectld:v0.2.1 rancher/agent-instance:v0.8.3 rancher/agent:v1.0.2)
for imageName in ${images[@]} ; do
  #docker pull xjw263/$imageName
  #docker tag xjw263/$imageName gcr.io/google_containers/$imageName
  docker tag $imageName  beagledata.com:5000/$imageName
  docker push beagledata.com:5000/$imageName
  #docker rmi xjw263/$imageName
done