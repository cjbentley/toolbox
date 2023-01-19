# Ubuntu base containers for Toolbox
Inspired by https://github.com/containers/toolbox/blob/e27d7cafa45303100db91797179ecec1c4abb9a3/images/debian/unstable/Dockerfile

## Coverage
- Ubuntu 20.04

## Issues
- Login error "WARNING: libcap needs an update" (newer kernel versions on the host may expose capabilities not available to older libcap version in the container)

## Warning
This is mostly implemented for my own purposes. You shouldn't rely on pulling these images for any CI/automated dev workflow! I try and keep the images as minimal as possible, but things may change (base applications, etc) to fix small issues. If you need pull consistency, make a fork!