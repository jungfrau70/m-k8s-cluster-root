#!/bin/bash
rm -rf /home/jih/.kube
mkdir -p /home/jih/.kube
sudo cp -i /etc/kubernetes/admin.conf /home/jih/.kube/config
sudo chown -R jih:jih /home/jih/.kube
