# Base Docker image with Oracle Server JRE

This repository contains the base image that is used to build images that require Oracle Server JRE.

## Image

The image **extends** the `projectomakase/base:latest` image and installs the Oracle Server JRE 8u51-b16 distribution.

## Availability

The `Dockerfile` is available in the `master` branch and is built in the Docker HUB as `projectomakase/server-jre:latest`.
