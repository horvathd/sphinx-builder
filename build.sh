#!/bin/bash
podman build --pull-always --no-cache -t docker.io/horvathd84/sphinx-builder -t quay.io/horvathd/sphinx-builder .
