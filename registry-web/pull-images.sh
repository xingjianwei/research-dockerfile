#!/bin/bash
#images=(rancher/swarm-agent:v0.1.3 rancher/agent-instance:v0.8.3 rancher/agent:v1.0.2)
#images=(rancher/k8s:v1.2.4-rancher10 rancher/kubernetes-agent:v0.2.2 rancher/lb-controller:v0.2.2 rancher/etcd:v2.3.7-9 rancher/kubectld:v0.2.1 rancher/agent-instance:v0.8.3 rancher/agent:v1.0.2)
images=(rancher/hadoop-followers-config:v0.3.5 rancher/hadoop-config:v0.3.5 rancher/hadoop-base:v0.3.5)
for imageName in ${images[@]} ; do
  docker pull beagledata.com:5000/$imageName
  #docker tag xjw263/$imageName gcr.io/google_containers/$imageName
  docker tag beagledata.com:5000/$imageName  $imageName
  #docker push beagledata.com:5000/$imageName
  #docker rmi xjw263/$imageName
done