import std/httpclient
import strutils

# Quick nim package to pull public IP address
proc nip*(): string =
    var client = newHttpClient()
    var response = getContent(client, "https://icanhazip.com")
    return response.strip()

echo nip()