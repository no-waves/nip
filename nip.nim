import std/httpclient
import strutils

# Quick multi-platform nim package to pull public IP address
# Can be imported or compiled as stand alone program

const source = "https://icanhazip.com" # Use whatever

proc nip*(): string =
    var client = newHttpClient()
    var response = getContent(client, source)
    return response.strip()

echo nip()