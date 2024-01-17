#!/bin/bash

for file in $(ls ./*.service); do
    echo $file
    mv /etc/systemd/system/$file /etc/systemd/system/$file.back
    ln -s $(pwd)/$file /etc/systemd/system/$file
done
