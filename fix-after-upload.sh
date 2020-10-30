#!/usr/bin/env bash

# Convert scripts to unix line feeds
find . -type f -print0 | xargs -0 dos2unix

# Set required scripts executable
chmod +x *.sh
chmod +x ./lib/run.php
chmod +x ./lib/save.php

echo "Done!"
