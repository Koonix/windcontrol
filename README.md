# windcontrol

## Introduction

Simple linux fan control shell script, made with **simplicity &
sucklessness™** in mind.

It's main selling point is that it doesn't ramp up/down the fans with momentary
temperature spikes.

Any configuration is done by editing the script and reinstalling it.

Includes runit service for autostarting at system startup.

## Installation

1. Install [lm_sensors](https://github.com/lm-sensors/lm-sensors) 
from your package manager, run `sudo sensors-detect`, and finally enable lm_sensor's service.
[Revise ArchWiki for more thorough instructions](https://wiki.archlinux.org/title/Lm_sensors).

2. Configure the script by following the instruction in the script.

3. Install it by running `sudo ./install.sh`.

## TO-DO

- [x] Cleanup the script; Too many nested if-statements in the main function.
- [ ] Add services for other init systems (systemd, openrc, etc.)
- [ ] Make the script POSIX compliant.
