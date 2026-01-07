#!/bin/bash
yum install nfs-utils -y
mkdir -p /efs
mount -t nfs4 fs-xxxx.efs.us-east-1.amazonaws.com:/ /efs

