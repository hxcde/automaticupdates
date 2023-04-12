# Update Scripts
Collection of scripts for a bunch of linux and docker services.

## Autoupdate for Cloudflared on Debian
- The script is installing a cron job which updates the cloudflared package every night at midnight.
- To change the time span, the job can be edited with "crontab -e". 
- The syntax of cron can be looked up here. https://cron.help/

```bash
sh -c "$(curl -L https://git.moelle.space/ymoelle/updatescripts/raw/branch/main/deb-flared-update.sh)"
```

## Update all Docker Containers
- Please note that this script automatically updates the containers when a new image is available. Make sure that you have backed up all important data from the containers beforehand and that you consider possible effects on your applications.

```bash
sh -c "$(curl -L https://git.moelle.space/ymoelle/updatescripts/raw/branch/main/update_docker_containers.sh)"
```