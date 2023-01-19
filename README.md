# Ubuntu base containers for Toolbox
Modified Ubuntu containers optimized for interactive input with Toolbox and Podman.

Roughly based on https://github.com/containers/toolbox/blob/e27d7cafa45303100db91797179ecec1c4abb9a3/images/debian/unstable/Dockerfile

## Usage
` toolbox create <container-name-here> -i docker.io/cjbentley/ubuntu-toolbox:20.04 `

## Coverage
- Ubuntu 20.04

## Issues
- Login error "WARNING: libcap needs an update" (newer kernel versions on the host may expose capabilities not available to older libcap version in the container)

## Warning
This is mostly implemented for my own purposes. You shouldn't rely on pulling these images for any CI/automated dev workflow! I try and keep the images as minimal as possible, but things may change (base applications, etc) to fix small issues. If you need pull consistency, make a fork!