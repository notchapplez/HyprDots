#!/bin/bash

# Start swayidle to manage idle behavior
swayidle -w \
  timeout 300 'hyprlock' \                # Lock screen after 5 minutes of inactivity
  timeout 600 'hyprctl dispatch dpms off' \ # Turn off display after 10 minutes of inactivity
  timeout 1200 'systemctl hibernate' \      # Hibernate system after 20 minutes of inactivity
  resume 'hyprctl dispatch dpms on' \       # Turn on display after resuming from hibernation
  before-sleep 'hyprlock'                   # Lock screen before system goes to sleep
