#!/bin/bash
source ./.env

kubectl get namespace $NAMESPACE &> /dev/null || kubectl create namespace $NAMESPACE

helm repo add stable https://charts.helm.sh/stable
helm repo update

helm install $RELEASE \
  --namespace kube-system \
  --set nfs.server=master \
  --set nfs.path=/srv/nfs/kubedata \
  --set storageClass.name=nfs \
  --set storageClass.defaultClass=true \
  stable/nfs-client-provisioner

