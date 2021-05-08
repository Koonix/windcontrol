# Windcontrol

## Introduction

A Simple linux fan control shell script, made with **simplicity &
sucklessness™** in mind.

It's main selling point is that it doesn't ramp up/down the fans with momentary
temperature spikes.

Any configuration is done by editing the script and reinstalling it.

Includes runit service for autostarting at system startup.

## Installation

1. Configure the script by following the instruction in the script

2. Install it by running `sudo ./install.sh`

## TO-DO

- [x] Cleanup the script; Too many nested if-statements in the main function.
- [ ] Add services for other init systems (systemd, openrc, etc.)
- [ ] Make the script POSIX compliant.
