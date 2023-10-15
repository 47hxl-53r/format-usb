#!/bin/bash

find_usb_path() {
    lsblk
    read -p "Enter the USB drive path: " usb_path

    if [ -z "$usb_path" ]; then
        echo "Error: Please provide a valid device path."
        return 1
    fi

    if [ ! -e "$usb_path" ]; then
        echo "Error: The specified path does not exist."
        return 1
    fi

    return 0
}

wipe_usb() {
    echo "Unmounting the USB drive..."
    if ! sudo umount "$usb_path"; then
        echo "Error: Failed to unmount the USB drive."
        return 1
    fi

    echo "Wiping the USB drive..."
    if ! sudo dd if=/dev/zero of="$usb_path" bs=4M status=progress; then
        echo "Error: Failed to wipe the USB drive."
        return 1
    fi

    echo "USB drive wiped successfully."
}

echo "==== WIPER ===="

if [ "$EUID" -ne 0 ]; then
    echo "Error: Run this script as root."
    exit 1
fi

find_usb_path || exit 1

wipe_usb || exit 1

exit 0
