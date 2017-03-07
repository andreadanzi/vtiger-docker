#!/bin/bash
#/usr/sbin/ntpdate ntp.ubuntu.com
BACKUP_PREFIX=$(date +%Y%m%d%H%M%S)

if [ $# -lt 2 ]; then
		echo "##########################################################"
        echo "Guide"
        echo "##########################################################"
        echo "app.backup.sh document_root_app db_name"
        echo "document_root_app : root directory where is installed app"
        echo "[db_name] : app database name"
		echo "##########################################################"
        exit
fi

if [ -d $1 ]; then

		
	tar cvzf _backups/$BACKUP_PREFIX.$1.tgz $1
	if [ -n $2 ]; then			
			mysqldump -u root -p $2  > _backups/$BACKUP_PREFIX.$2.sql   
			gzip -9 _backups/$BACKUP_PREFIX.$2.sql
	else 
		echo "Nessun backup del database eseguito!"
	fi
		
else
		echo "##########################################################"
        echo "Guide"
        echo "##########################################################"
		echo "app.backup.sh document_root_app db_name"
        echo "document_root_app : root directory where is installed app"
        echo "[db_name] : app database name"
		echo "##########################################################"
        exit
fi
