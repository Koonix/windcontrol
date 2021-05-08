# Windcontrol

## Introduction

A Simple and Effective Fan control script Made with **Simplicity &
Sucklessness™** in mind.

It's selling point is that it doesn't ramp up/down the fans with momentary
spikes of temperature change.

All of the **configuration is done by editing the script** and reinstalling it.

runit service included (for autostart at system startup).

## Installation

1. Configure the script by following the instruction in the script

2. Install it by running `sudo ./install.sh`

## TO-DO

- [x] Cleanup the script; Too many nested if-statements in the main function.
- [ ] Add services for other init systems (systemd, openrc, etc.)
- [ ] Make the script POSIX compliant.
