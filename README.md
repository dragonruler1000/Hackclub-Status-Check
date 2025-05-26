</br><img src="https://profile-counter.glitch.me/Dragonruler1000-status_check/count.svg" alt="Visitor Counter"/>
# Status Check Script

This script checks the status of a specific Airtable record using Hack Club's API and sends a push notification via [ntfy.sh](https://ntfy.sh) if the status has changed from "Pending".

## Setup

### Bash Script

- Edit `check_status.sh` with your `RECORD_ID` and ntfy topic.
- Requires: `curl`, `jq`
- Run manually or add to cron with:  
  ```bash
  */5 * * * * /path/to/check_status.sh
  ```

### Python Script

- Edit `check_status.py` with your `RECORD_ID` and ntfy topic.
- Requires Python 3 and the `requests` package.
- Install dependencies:
  ```bash
  pip install requests
  ```
- Run manually or add to cron with:  
  ```bash
  */5 * * * * /usr/bin/python3 /path/to/check_status.py
  ```

## Contributing

- All scripts should either be bash scripts or python scripts.
- Please read [contributing.md](contributing.md) before contributing.

## License

MIT
