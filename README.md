# Status Check Script

This script checks the status of a specific Airtable record using Hack Club's API and sends a push notification via [ntfy.sh](https://ntfy.sh) if the status has changed from "Pending".

## Setup

- Edit `check_status.sh` with your `RECORD_ID` and ntfy topic.
- Requires: `curl`, `jq`
- Run manually or add to cron with: `*/5 * * * * /path/to/check_status.sh`

## License

MIT
