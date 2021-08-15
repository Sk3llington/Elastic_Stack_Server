#!/bin/bash

# Clean up temp directories
rm -rf /tmp/*
rm -rf /var/tmp/*	

# Clear apt cache
apt clean -y

# Clear thumbnail cache for sysadmin and root user
rm -rf /home/sysadmin/.cache/thumbnails
rm -rf /root/.cache/thumbnails
