# format-usb

**format-usb** is a simple Bash script that allows you to quickly format and wipe USB drives.

## Usage

1. Ensure you run the script as root or with superuser privileges.

    ```bash
    sudo ./format-usb.sh
    ```

2. The script will display a list of available devices. Choose the USB drive you want to format.

3. The selected USB drive will be unmounted, and the script will securely wipe its data. This process may take some time.

4. Once the operation is completed successfully, you will see a message confirming the successful wipe.

## Disclaimer

**Important:** The developer of this tool is not responsible for any data loss or damage caused by the use of this tool. Use it at your own risk. Make sure to select the correct USB drive to avoid any unintended data loss.

**Safety Tips:**

- **Double-check**: Before confirming the USB drive for formatting, double-check that you've selected the correct device.

- **Backup Data**: Ensure any important data on the USB drive is backed up before using this script.

- **Be Cautious**: Handle the script with care, especially if you're not familiar with the process.

## License

This script is provided under the [MIT License](LICENSE). Feel free to use, modify, and distribute it, but use it responsibly and at your own risk.
