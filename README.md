# WindControl

## Introduction

A Simple and Effective Fan control script Made with **Simplicity &
Sucklessness™** in mind.

All the configuration is done through editing the script and reinstalling it.

**runit** service included (for autorun at system startup).

## Installation

Install windcontrol:
    sudo ./install-windcontrol.sh

Install it's runit service:
    sudo ./install-runit-service.sh

Link the service to runit's main services directory:
    sudo ln -s /etc/runit/sv/windcontrol /run/runit/services

Runit should start the service in a few seconds. You can check it:
    sudo sv status windcontrol

## TO-DO

- [ ] Add services for other init systems (systemd, OpenRC, etc.)
- [ ] Cleanup the script; Too many nested if-statements in the main function.
- [ ] Make the script POSIX Compliant.
