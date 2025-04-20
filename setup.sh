#!/usr/bin/bash
mv ~/.bashrc ~/.bashrc.save
rsync -av --exclude='.git' --exclude='cron*' --exclude='setup.sh' "$(pwd)/" ~/
