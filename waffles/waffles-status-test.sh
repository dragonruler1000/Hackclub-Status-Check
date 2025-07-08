#!/bin/bash

# Fetch raw JSON
data=$(curl -s https://waffles.hackclub.com/api/airtable)

# Decode once (inner JSON)
decoded=$(echo "$data" | jq -r '.')

# Grep for "Pending" entries
echo "$decoded" | grep -B 5 -A 5 '"Review Status": "Pending"'
