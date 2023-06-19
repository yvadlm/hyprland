
# Check that the script is running as root. If not, then prompt for the sudo
# password and re-execute this script with sudo.
if [ "$(id -nu)" != "root" ]; then
    sudo -k
    pass=$(whiptail --backtitle "WireGuard VPN connect" --title "Authentication required" --passwordbox "\n\n[sudo] Password for user $USER:" 12 50 3>&2 2>&1 1>&3-)
    exec sudo -S -p "$0" "$@" wg-quick up yvadim-home <<< "$pass" 
    fi
