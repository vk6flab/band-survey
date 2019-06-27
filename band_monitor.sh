#!/bin/bash

# There is no checking to see if this file exists
output=$(date --utc --rfc-3339=sec | cut -d+ -f1 | tr -dc '[:digit:]').csv

# Log 0 - 1766 MHz at 1MHz interval every minute for 240 hours
rtl_power -f 0M:1766M:1M -i 1m -g 50 -e 240h "${output}.csv"

