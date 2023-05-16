#!/bin/bash

# Setup Linux Cron Job
# crontab -e
# 28 * * * * /bin/bash /home/genos/code/m3rashid/archives/pc_setup/jobs/github.sh

declare -a repositories=(
	"/home/genos/Documents/Obsidian\ Vault"
	"/home/genos/code/m3rashid/archives/pc_setup"
	"/home/genos/code/m3rashid/archives/ioew"
	"/home/genos/code/m3rashid/hmis/hmis-clients"
	"/home/genos/code/m3rashid/hmis/hmis-node-server"
	"/home/genos/code/m3rashid/oss/data-ingestion"
	"/home/genos/code/m3rashid/oss/data-dashboards"
	# "/home/genos/code/m3rashid/hmis/hmis-go-server"
)

gitlogin m3rashid

for i in "${repositories[@]}"
do
	cd $i
	git add .
	git commit -m "update(app): periodic Auto update"
	git push origin main
	echo "Pushed to github $i" 
	sleep 2
done
