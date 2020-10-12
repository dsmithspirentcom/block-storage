#!/usr/bin/env bash

DRIVE=/dev/sda
ATA_SECURITY_PASSWORD=1234
RESULTS_DIR_NAME=samsung_860_evo
#TESTS_TO_RUN=iops,latency,throughput
TESTS_TO_RUN=throughput

# Check script is running as root
if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

# Output test params
echo "Drive under test:       $DRIVE"
echo "Tests to run:           $TESTS_TO_RUN"
echo "Results directory name: $RESULTS_DIR_NAME"

# Ask for user confirmation before continuing
read -p "Press enter to confirm..."

# Check ATA security is disabled
hdparm -I $DRIVE | grep 'enabled' | grep 'not' &> /dev/null
if [ $? != 0 ]; then
  echo "Drive security is already enabled - please disable then re-run script"
  exit
fi

# Enable ATA security
echo "Enabling ATA drive security with password '$ATA_SECURITY_PASSWORD'..."
hdparm --user-master u --security-set-pass $ATA_SECURITY_PASSWORD $DRIVE &> /dev/null

# Check ATA security was successfully enabled
hdparm -I $DRIVE | grep 'enabled' | grep 'not' &> /dev/null
if [ $? == 0 ]; then
  echo "Failed to enable drive security"
  exit
fi

# Create results directory
echo "Creating results directory..."
mkdir -p ./results/$RESULTS_DIR_NAME

# Run the test
echo "Starting test process..."
./run.sh --target=$DRIVE --test=$TESTS_TO_RUN --verbose --secureerase_pswd $ATA_SECURITY_PASSWORD --output=./results/$RESULTS_DIR_NAME

echo "Script Finished!"
