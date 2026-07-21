#!/bin/bash
set -eux

dnf update -y

dnf install -y \
    git \
    docker \
    unzip \
    awscli

systemctl enable docker
systemctl start docker

usermod -aG docker ec2-user
