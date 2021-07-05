# sysupdater
This is a bash script to automate Raspberry Pi system update.

Things to do after dowloading script
1. Make shell script executable runing "chmod +x sysupdater.sh"
2. Edit cron with "crontab -e" command and add the subsequent line at the end.
3. 0 0 * * 0,3 bash /home/pi/sysupdater.sh > /home/pi/sysupdater.log
4. Save cron using Ctrl-O
5. Exit editor with Ctrl-X
6. Reboot so changes take effect

The cron command will run the script every wednesday and sunday at 0:00, exporting result to the file sysupdater.log. This file is replaced everytime the script is executed, so you can check when was the last time the script was executed by opening the log file onto an editor like nano or vi.
Obviously you can change the frequency of system update modifying the cron command. I recomend https://crontab.guru
