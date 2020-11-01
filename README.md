# unipi

Ansible playbook for a [Unifi Controller](https://github.com/linuxserver/docker-unifi-controller) docker container. Meant to be run on a Raspberry Pi 4 with Ubuntu 20.04.

## Setup

Install ansible and dependenies:

    make setup

## First run

    make firstrun

## After intial run

Configure ssh port & user at your local `~/.ssh/config`. Then run:

    make provision
