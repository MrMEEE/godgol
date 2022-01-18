#!/bin/bash
. config


if [[ "ENABLE" == "1" ]]; then
  cdemu unload 0
  cdemu load 0 $IMAGE
  udisksctl mount -b /dev/sr0
fi
