#!/bin/bash

if ip a | grep -q "yvadim-home"; then
  $HOME/.config/waybar/modules/wgmod/off.sh
else
  $HOME/.config/waybar/modules/wgmod/on.sh
fi
