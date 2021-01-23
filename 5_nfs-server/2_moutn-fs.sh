#!/bin/bash

sudo mkdir -p /srv/nfs/kubedata/

sudo mount /dev/sdb1 /srv/nfs/kubedata/

sudo chown -R nobody:nogroup /srv/nfs/kubedata/

sudo chmod 777 /srv/nfs/kubedata/
