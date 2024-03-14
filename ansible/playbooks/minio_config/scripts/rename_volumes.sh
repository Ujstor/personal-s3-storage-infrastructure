#!/bin/bash

# Script rename default hetzner volume mounts to 'disk-n', minio need this to work

counter=1

while IFS= read -r line; do
    if [[ $line == *HC_Volume* ]]; then
        mount_point=$(echo "$line" | awk '{print $2}')
        new_mount_point="/mnt/disk$counter"
        
        sed -i "s|$mount_point|$new_mount_point|" /etc/fstab
        
        ((counter++))
    fi
done < /etc/fstab

echo "Volume mounts renamed successfully."