#!/bin/bash

# Config
RECORD_ID="" # Put record number here
TOPIC="" # Put ntfy topic here
API_URL="https://api2.hackclub.com/v0.1/MC%20Modding/Submissions?select=%7B%22filterByFormula%22%3A%22RECORD_ID()%3D'$RECORD_ID'%22%7D"

# Get the current status
status=$(curl -s "$API_URL" | jq -r '.records[0].fields.Status')

# Check if status is not Pending
if [[ "$status" != "Pending" ]]; then
    curl -s -X POST "https://ntfy.sh/$TOPIC" -d "Status changed from Pending to '$status'"
fi
