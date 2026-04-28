#!/usr/bin/env bash

# NKP version to install
# Do not change it
export NKP_VERSION=2.17.1
export BASE_ADDRESS=10.55.91
# NKP cluster name.
# When using NKP Pro/Ultimate, this name is used to generate the license key
export CLUSTER_NAME=rccl-example

# Prism Central username
#set as env var through GHA secrets
# Prism Central Password
# Keep the password enclosed between single quotes - Ex: 'password'
#set as env var through GHA secrets
# Prism Central IP address - Ex: 10.38.30.7
export NUTANIX_ENDPOINT=${BASE_ADDRESS}.7

# Prism Central port (default: 9440)
# Do not change it
export NUTANIX_PORT=9440

# Kubernetes VIP. Must be in the same subnet as the VMs
# Check the table to find your IP
export CONTROL_PLANE_ENDPOINT_IP=${BASE_ADDRESS}.134

# Load balancer IP range. Format: <first_ip>-<last_ip>
# Check the table to find your IP
export LB_IP_RANGE=${BASE_ADDRESS}.135-${BASE_ADDRESS}.136

# NKP Rocky image name
# Do not change it
export NUTANIX_MACHINE_TEMPLATE_IMAGE_NAME=nkp-rocky-9.7-release-cis-1.34.3-20260316170119.qcow2

# Prism Element cluster name - Ex: PHX-POC207
export NUTANIX_PRISM_ELEMENT_CLUSTER_NAME=DM3-POC091

# NKP cluster subnet
# Do not change it
export NUTANIX_SUBNET_NAME=secondary
export DOMAIN=buildit.services

# Prism storage container
# Do not change it
export TIMEOUT=120m
export NUTANIX_STORAGE_CONTAINER_NAME=SelfServiceContainer
export REGISTRY_MIRROR_URL=registry.nutanixdemo.com/docker.io
IMAGES=${HOME}/assets/nkp-v${NKP_VERSION}/container-images/kommander-image-bundle-v${NKP_VERSION}.tar,
IMAGES+=${HOME}/assets/nkp-v${NKP_VERSION}/container-images/konvoy-image-bundle-v${NKP_VERSION}.tar
export IMAGES
