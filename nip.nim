## Quick multi-platform nim package to pull public IP address
## 
## Can be imported or compiled as stand alone program

import std/[httpclient, strutils]

const source = "https://icanhazip.com" # Use whatever

proc nip*(): string =
    ## Get the public IP address of the current host 
    var client = newHttpClient()
    try:
        let response = client.getContent(source)
        result = response.strip()
    finally:
        client.close()

when isMainModule:
    echo nip()