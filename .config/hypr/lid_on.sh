#!/bin/bash

# Run the hyprctl monitors command and store the result
output=$(hyprctl monitors)

# Check if the output contains ID 1
if echo "$output" | grep -q "ID 1"; then
  # Execute the first command
  echo "ID 1 found. Executing Command 1..."
  # Replace the following line with your desired command
  hyprctl keyword monitor "eDP-1, 1366x768, 0x0, 1"
else
  # Execute the second command
  echo "ID 1 not found. Executing Command 2..."
  # Replace the following line with your desired command
  hyprctl dispatch dpms on eDP-1
fi
