#!/usr/bin/env bash

# NKP version to install
# Do not change it
export NKP_VERSION=2.16.0

# NKP cluster name.
# When using NKP Pro/Ultimate, this name is used to generate the license key
export CLUSTER_NAME=jd-test

# Prism Central username
#set as env var through GHA secrets
# Prism Central Password
# Keep the password enclosed between single quotes - Ex: 'password'
#set as env var through GHA secrets
# Prism Central IP address - Ex: 10.38.30.7
export NUTANIX_ENDPOINT=10.54.92.7

# Prism Central port (default: 9440)
# Do not change it
export NUTANIX_PORT=9440

# Kubernetes VIP. Must be in the same subnet as the VMs
# Check the table to find your IP
export CONTROL_PLANE_ENDPOINT_IP=10.54.92.16

# Load balancer IP range. Format: <first_ip>-<last_ip>
# Check the table to find your IP
export LB_IP_RANGE=10.54.92.17-10.54.92.19

# NKP Rocky image name
# Do not change it
export NUTANIX_MACHINE_TEMPLATE_IMAGE_NAME=nkp-ubuntu-22.04-release-cis-1.33.2-20250811224527.qcow2

# Prism Element cluster name - Ex: PHX-POC207
export NUTANIX_PRISM_ELEMENT_CLUSTER_NAME=DM3-POC141

# NKP cluster subnet
# Do not change it
export NUTANIX_SUBNET_NAME=primary
export DOMAIN=buildit.services

# Prism storage container
# Do not change it
export TIMEOUT=60m
export NUTANIX_STORAGE_CONTAINER_NAME=SelfServiceContainer
export REGISTRY_MIRROR_URL=registry.nutanixdemo.com/docker.io
export IMAGES=/home/debian/assets/nkp-v2.16.0/container-images/kommander-image-bundle-v2.16.0.tar,
export IMAGES+=/home/debian/assets/nkp-v2.16.0/container-images/konvoy-image-bundle-v2.16.0.tar
