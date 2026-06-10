#!/usr/bin/env bash

# NKP version to install
export NKP_VERSION=2.17.1
#base address for cluster. This is used to generate the IP addresses for the cluster nodes and load balancer
export BASE_ADDRESS=10.8.31
# Prism storage container
export NUTANIX_STORAGE_CONTAINER_NAME=SelfServiceContainer
# NKP Rocky image name
# Do not change it
export NUTANIX_MACHINE_TEMPLATE_IMAGE_NAME=nkp-rocky-9.7-release-cis-1.34.3-20260504011927.qcow2
# Prism Element cluster name - Ex: PHX-POC207
export NUTANIX_PRISM_ELEMENT_CLUSTER_NAME=RNO-SPOC002-4
# NKP cluster subnet
export NUTANIX_SUBNET_NAME=secondary-RNO-SPOC002-4

# NKP cluster name.
# When using NKP Pro/Ultimate, this name is used to generate the license key
export CLUSTER_NAME=akp
export NUTANIX_ENDPOINT=${BASE_ADDRESS}.7
export NUTANIX_PORT=9440
export CONTROL_PLANE_ENDPOINT_IP=${BASE_ADDRESS}.134
export LB_IP_RANGE=${BASE_ADDRESS}.135-${BASE_ADDRESS}.136
export DOMAIN=buildit.services
export TIMEOUT=120m
export REGISTRY_MIRROR_URL=registry.nutanixdemo.com/docker.io
IMAGES=${HOME}/assets/nkp-v${NKP_VERSION}/container-images/kommander-image-bundle-v${NKP_VERSION}.tar,
IMAGES+=${HOME}/assets/nkp-v${NKP_VERSION}/container-images/konvoy-image-bundle-v${NKP_VERSION}.tar
export IMAGES
