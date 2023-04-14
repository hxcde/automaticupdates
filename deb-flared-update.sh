#!/bin/bash
cd /opt/
touch flaredupdate.sh
echo "curl -L --output cloudflared.deb https://github.com/cloudflare/cloudflared/releases/latest/download/cloudflared-linux-amd64.deb" | tee -a flaredupdate.sh
echo "sudo dpkg -i cloudflared.deb" | tee -a flaredupdate.sh
echo "rm cloudflared.deb" | tee -a flaredupdate.sh
echo "systemctl restart cloudflared" | tee -a flaredupdate.sh
crontab -l > mycron
echo "0 0 * * * sh /opt/flaredupdate.sh >/dev/null 2>&1" >> mycron
crontab mycron
rm mycron
