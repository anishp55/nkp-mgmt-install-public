#!/usr/bin/env bash

# NKP version to install
# Do not change it
export NKP_VERSION=2.14.1

# NKP cluster name.
# When using NKP Pro/Ultimate, this name is used to generate the license key
export CLUSTER_NAME=jd-test

# Prism Central username
#set as env var through GHA secrets
# Prism Central Password
# Keep the password enclosed between single quotes - Ex: 'password'
#set as env var through GHA secrets
# Prism Central IP address - Ex: 10.38.30.7
export NUTANIX_ENDPOINT=10.38.41.7

# Prism Central port (default: 9440)
# Do not change it
export NUTANIX_PORT=9440

# Kubernetes VIP. Must be in the same subnet as the VMs
# Check the table to find your IP
export CONTROL_PLANE_ENDPOINT_IP=10.38.41.136

# Load balancer IP range. Format: <first_ip>-<last_ip>
# Check the table to find your IP
export LB_IP_RANGE=10.38.41.137-10.38.41.140

# NKP Rocky image name
# Do not change it
export NUTANIX_MACHINE_TEMPLATE_IMAGE_NAME=nkp-rocky-9.5-release-1.31.9-20250702204537.qcow2

# Prism Element cluster name - Ex: PHX-POC207
export NUTANIX_PRISM_ELEMENT_CLUSTER_NAME=PHX-POC269

# NKP cluster subnet
# Do not change it
export NUTANIX_SUBNET_NAME=secondary
export DOMAIN=buildit.services

# Prism storage container
# Do not change it
export TIMEOUT=60m
export NUTANIX_STORAGE_CONTAINER_NAME=SelfServiceContainer
export REGISTRY_MIRROR_URL=registry.nutanixdemo.com/docker.io
