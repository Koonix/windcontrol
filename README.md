# WindControl

## Introduction

A Simple and Effective Fan control script Made with **Simplicity &
Sucklessness™** in mind.

All the **configuration is done through editing the script** and reinstalling it.

runit service included (for auto start at system startup).

## Installation

1. Edit and configure the script's configuration part

2. Install windcontrol:
    sudo ./install-windcontrol.sh

## Auto start at system startup

### runit

1. Install runit service:
    sudo ./install-runit-service.sh

2. Link the service to runit's main services directory:
    sudo ln -s /etc/runit/sv/windcontrol /run/runit/services

3. Runit should take over the service in a few seconds. Check it:
    sudo sv status windcontrol

## TO-DO

- [ ] Add services for other init systems (systemd, OpenRC, etc.)
- [ ] Cleanup the script; Too many nested if-statements in the main function.
- [ ] Make the script POSIX Compliant.
