# nkp-mgmt-install

this requires a self-hosted running with the following binaries installed
    nkp
    kubectl
    docker or podman

currently the gha runner application is installed in a users home directory, and systemctl is used to start it. <br>
it is expected there is a ~/kubectl-configs directory to hold cluster kube-configs<br>
this uses a lets encrypt cert

you will need to define the following secrets
```
    NUTANIX_USER
    NUTANIX_PASSWORD
    REGISTRY_USER
    REGISTRY_PASSWORD
    INGRESS_CA (lets encrypt fullchain.pem)
    INGRESS_CERT (lets encrypt fullchain.pem)
    INGRESS_PEM (lets encrypt privkey.pem)
    NKP_LICENSE_KEY
    AUTH0_CLIENT_ID
    AUTH0_CLIENT_SECRET
```
auth0 stuff is optional.

you will need to update the nkp-vars.sh file to reflect your environment

the workflows are currently set to manual <br>
you should run the following
```
01 - install nkp (this expects certs for hostname stuff, if you don't want this remove it from the install script)
06 - apply license
```
steps 02 to 05 are optional
