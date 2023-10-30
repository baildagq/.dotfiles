#!/bin/bash

for file in $(ls ./*.service); do
    echo $file
    rm /etc/systemd/system/$file
    cp $(pwd)/$file /etc/systemd/system/$file
done
