#!/bin/bash

helm repo add rimusz https://charts.rimusz.net
helm repo update
helm upgrade --install hostpath-provisioner --namespace kube-system rimusz/hostpath-provisioner
