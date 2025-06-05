# Raspiupdater

This script automates the update and maintenance process for **Raspbian** on a
Raspberry Pi.

## 📄 Description

The script performs the following actions in sequence:

1. Prints the current date and time.  
2. Runs `apt-get update` to refresh the package list.  
3. Runs `apt-get upgrade -y` to install available upgrades.  
4. Runs `apt-get full-upgrade -y` to apply all upgrades, including those
   requiring removal of obsolete packages.  
5. Runs `apt-get autoclean -y` to clean up outdated package files.  
6. Runs `apt-get autoremove -y` to remove unneeded packages.  

## 📥 Download

Clone this repository with:

    git clone https://github.com/Geek-MD/raspiupdater.git
    cd raspiupdater

## ⚠️ Requirements

- A **Debian/Raspbian-based** operating system.  
- Superuser privileges (`sudo`).  

## 🚀 Usage

Make the script executable:

    chmod +x raspiupdater.sh

Run the script:

    ./raspiupdater.sh

Alternatively, run it with `bash`:

    bash raspiupdater.sh

## ⏰ Automate with cron

To run the script automatically every **Sunday and Wednesday at 3:00 AM**, add
the following line to your crontab:

    0 3 * * 0,3 bash ~/raspiupdater/raspiupdater.sh > ~/raspiupdater/raspiupdater.log

You can edit the crontab with:

    crontab -e

This will keep a log of each execution in `raspiupdater.log` in your home
directory.

## 🛠 Recommendations

- Run this script periodically to keep your system updated and clean.  
- Monitor the log file to verify successful updates.

## 📌 Note

This script requires an internet connection and may take several minutes
depending on the number of available updates.
