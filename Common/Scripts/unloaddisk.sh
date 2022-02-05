#!/bin/bash
. config

if [[ "$ENABLE" == "1" ]]; then
  udisksctl unmount -b `cdemu device-mapping | head -3 |tail -1 | awk '{ print $2 }'`
  sleep 1
  cdemu unload 0
fi
