#!/bin/bash
set -e

NAME="local"

echo "Creating / Starting k3d nodes"
k3d cluster create ${NAME}  \
    --agents 1 \
    --image rancher/k3s:v1.26.1-k3s1 \
    --port 443:443@loadbalancer \
    --port 80:80@loadbalancer \
  || k3d cluster start ${NAME}

i=0
while ! k3d kubeconfig get ${NAME} &> /dev/null; do
  ((i=i+1))
  echo -ne "\rWaiting kube-config to be created... [${i}s]\033[K"
  sleep 1
done
echo
echo "kube-config created!"

kubectl config rename-context k3d-${NAME} ${NAME}

echo "All set on [ ${HOME}/.kube/config ]."
