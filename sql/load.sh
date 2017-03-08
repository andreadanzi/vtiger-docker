#!/bin/bash
mysql -u root --port=3386 --protocol=tcp -p vtiger < vtiger.sql
