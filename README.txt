This project is for my cron jobs.

Currently running only one job - from SYSTEM's /etc/crontab

Hat tip: http://stackoverflow.com/questions/707184/how-do-you-run-a-crontab-in-cygwin-on-windows

1. open cygwin terminal in Windows. "Run as Administrator"

2. run cron as a service by user SYSTEM
mkdir /root
chown SYSTEM /root
echo "SYSTEM:*:......:/root:/bin/bash" >> /etc/passwd
cron-config

3. add cron to /etc/crontab
touch /etc/crontab
chown SYSTEM /etc/crontab
echo "HOME=/root" >> /etc/crontab
echo "PATH=/usr/local/bin:/usr/bin:/bin:$PATH" >> /etc/crontab
echo "* * * * *   SYSTEM touch ~/cron" >> /etc/crontab

4. debug as needed
cronevents
cat /root/cron.log

5. change crontab as needed
vi /etc/crontab
