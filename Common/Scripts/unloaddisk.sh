#!/bin/bash
. config

if [[ "$ENABLE" == "1" ]]; then
  udisksctl unmount -b /dev/sr0
  sleep 1
  cdemu unload 0
fi