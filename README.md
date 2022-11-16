# raspiupdater
This is a bash script that allows you to automate Raspberry Pi packages update, updating not only system files but also updating python packages.

Things to do after dowloading script
1. Make shell script executable runing "chmod u+x raspiupdater.sh"
2. Edit cron with "crontab -e" command and add the subsequent line at the end.
3. 0 3 * * 0,3 bash /<abs_path>/raspiupdater.sh > /<abs_path>/raspiupdater.log replacing *<abs_path>* with the location where you stored *raspiupdater.sh*
4. Save cron using Ctrl-O
5. Exit editor with Ctrl-X
6. Reboot so changes take effect

The cron command will run the script every wednesday and sunday at 3:00, exporting result to the file raspiupdater.log. This file is replaced everytime the script is executed, so you can check when was the last time the script was executed by opening the log file onto an editor like nano or vi.

Obviously you can change change the time interval at wich system updates, modifying the cron command. I recomend https://crontab.guru to do that.
