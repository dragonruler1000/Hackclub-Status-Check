import requests

# Config
RECORD_ID = ""  # Put record number here
TOPIC = ""      # Put ntfy topic here

# Construct API URL
API_URL = f"https://api2.hackclub.com/v0.1/MC%20Modding/Submissions?select=%7B%22filterByFormula%22%3A%22RECORD_ID()%3D'{RECORD_ID}'%22%7D"

# Get the current status
response = requests.get(API_URL)
data = response.json()

try:
    status = data['records'][0]['fields']['Status']
except (KeyError, IndexError):
    print("Failed to retrieve status.")
    exit(1)

# Check if status is not Pending
if status != "Pending":
    message = f"Status changed from Pending to '{status}'"
    requests.post(f"https://ntfy.sh/{TOPIC}", data=message.encode('utf-8'))
