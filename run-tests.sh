#!/usr/bin/env bash

DRIVE=/dev/sdb

ATA_SECURITY_PASSWORD=1234
TESTS_TO_RUN=iops,latency,throughput
#TESTS_TO_RUN=throughput

# Check script is running as root
if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

# Check drive is valid
hdparm -I $DRIVE | &> /dev/null
if [ $? != 0 ]; then
  echo "Invalid drive"
  exit
fi

# Find drive info
DRIVE_MODEL=$(hdparm -I /dev/sdb | sed -n -e 's/^.*Model Number: *//p')
DRIVE_SERIAL_NO=$(hdparm -I /dev/sdb | sed -n -e 's/^.*Serial Number: *//p')
# Drive interface type & speed
DRIVE_INTERFACE_TYPE="unknown"
hdparm -I $DRIVE | grep "SATA" &> /dev/null
if [ $? == 0 ]; then
  DRIVE_INTERFACE_TYPE="SATA"
  DRIVE_INTERFACE_SPEED=$(hdparm -I $DRIVE | grep -i speed | sed -n '$s/.*\([0-9].[0-9]Gb\/s\).*/\1/p')
  DRIVE_INTERFACE_FULL_STR="${DRIVE_INTERFACE_TYPE} ${DRIVE_INTERFACE_SPEED}"
fi

# Create results directory name string
RESULTS_DIR_NAME=$(echo $DRIVE_MODEL | sed 's/ /_/g')_$(date '+%Y-%m-%d-%H-%M-%S')

# Output test params
echo "Drive under test:       $DRIVE"
echo "Drive model:            $DRIVE_MODEL"
echo "Drive serial no:        $DRIVE_SERIAL_NO"
echo "Drive interface:        $DRIVE_INTERFACE_FULL_STR"
echo "Tests to run:           $TESTS_TO_RUN"
echo "Results directory name: $RESULTS_DIR_NAME"

printf "\n"

# Ask for user confirmation before continuing
read -p "Press enter to confirm..."

printf "\n"

# Check ATA security is disabled
hdparm -I $DRIVE | grep 'enabled' | grep 'not' &> /dev/null
if [ $? != 0 ]; then
  echo "Drive security is already enabled - please disable then re-run script"
  exit
fi

# Create results directory
# TODO: Add date/time to output directory, to avoid overwriting existing data
echo "Creating results directory..."
mkdir -p results/$RESULTS_DIR_NAME

# TODO: Add meta parameters for report inclusion (SSD model, type etc.)

# Run the test
echo "Starting test process..."
./run.sh --target=$DRIVE --test="$TESTS_TO_RUN" --verbose --secureerase_pswd "$ATA_SECURITY_PASSWORD" --meta_drive_interface="$DRIVE_INTERFACE_FULL_STR" --meta_drive_model="$DRIVE_MODEL" --meta_drive_type="$DRIVE_INTERFACE_TYPE" --meta_notes_storage="Drive S/N: $DRIVE_SERIAL_NO" --output=results/$RESULTS_DIR_NAME

echo "Script Finished!"
