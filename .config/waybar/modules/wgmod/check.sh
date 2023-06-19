#!/bin/bash


if ip a | grep -q "yvadim-home"; then
  echo "󰒄 "
else
  echo "󰛳 " 
fi
