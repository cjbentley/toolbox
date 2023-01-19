# Automated build and push to docker hub
podman build -t localhost/temporaryimage .
podman push localhost/temporaryimage docker://docker.io/cjbentley/ubuntu-toolbox:20.04