#!/bin/bash

echo "Installing Emag SU Monitoring..."

install_folder="/C/ESUMonitoring"
if [ -d "$install_folder" ]; then
    echo "Error: ESUM is already installed in this system! If you're trying to update, run the integrated update.sh"
    exit 1
fi

git clone --depth 1 https://github.com/Emag-SU/EmagSU_Monitoring.git

mkdir -p "$install_folder"
mv EmagSU_Monitoring "$install_folder"
cd "$install_folder/EmagSU_Monitoring"

echo "Emag SU Monitoring installed!"

# Check for arguments
args=("$@")
if [ ${#args[@]} -eq 0 ]; then
    rm -- "$0"
    exit 0
fi

if [ "$1" -eq 1 ]; then
    exit 0
fi

rm -- "$0"
exit 0
