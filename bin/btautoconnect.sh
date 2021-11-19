#!/bin/bash

result=1
while [ $result -ne 0 ]; do
    rfkill unblock all
    sleep 1
    bluetoothctl connect DC:2C:26:F6:F3:99
    result=$?
    sleep 2
done
