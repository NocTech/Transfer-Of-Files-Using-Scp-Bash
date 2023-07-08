#!/bin/bash

# List of remote systems
remote_hosts=("remote_host1" "remote_host2" "remote_host3")

# Source file to transfer
source_file="path/to/source_file.txt"

# Destination directory on remote systems
destination_dir="/path/to/destination_dir/"

# Iterate over remote hosts
for remote_host in "${remote_hosts[@]}"; do
    echo "Transferring file to $remote_host..."
    scp "$source_file" "$remote_host:$destination_dir"
    echo "Transfer completed."
done
