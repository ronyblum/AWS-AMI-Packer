set -e
timezone=${TIME_ZONE:-Asia/Jerusalem}

echo "### Setting timezone to $timezone ###"
#sudo tee /etc/sysconfig/clock << EOF > /dev/null
#ZONE="$timezone"
#UTC=true
#EOF

sudo ln -sf /usr/share/zoneinfo/$timezone /etc/localtime

#Enable NTP
sudo chkconfig ntpd on
