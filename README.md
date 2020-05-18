# tp-ansible

## Setup

Install ansible and dependenies:

    make setup

## First run

    make firstrun

## After intial run

Configure ssh port & user at your local `~/.ssh/config`. Then run:

    make provision

## Monitoring

Enable port forwarding with

    ssh -N -L 3000:localhost:3000 78.47.126.109

to access grafana on http://localhost:3000. Username is *admin* with password *secret*.
