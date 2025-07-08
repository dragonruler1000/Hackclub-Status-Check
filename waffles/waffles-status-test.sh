#!/bin/bash

ID=""  # Add your desired ID

# Fetch raw JSON
data=$(curl -s https://waffles.hackclub.com/api/airtable)

# Decode once (inner JSON)
decoded=$(echo "$data" | jq -r '.')

# Grep for the specific ID
echo "$decoded" | grep -B 5 -A 5 "\"id\": \"$ID\""
