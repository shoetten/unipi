# merse cloud

Ansible playbook for some local services. Currently features a [Unifi Controller](https://github.com/linuxserver/docker-unifi-controller) and [Jellyfin](https://github.com/linuxserver/docker-jellyfin) Docker container.
Meant to be run on a Raspberry Pi 4 with Ubuntu 20.04.

## Setup

Install ansible and dependencies:

    make setup

## First run

    make firstrun

## After initial run

Configure ssh port & user at your local `~/.ssh/config`. Then run:

    make provision

Use `make provision tags=TAGS` to run a specific tag, e.g.

    make provision tags=jellyfin
