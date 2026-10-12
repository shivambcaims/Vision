# Vision

A menu-driven network recon toolkit for the Linux terminal. One bash script, ten lookups.

```
$$\    $$\ $$\           $$\
$$ |   $$ |\__|          \__|
$$ |   $$ |$$\  $$$$$$$\ $$\  $$$$$$\  $$$$$$$\
\$$\  $$  |$$ |$$  _____|$$ |$$  __$$\ $$  __$$\
 \$$\$$  / $$ |\$$$$$$\  $$ |$$ /  $$ |$$ |  $$ |
  \$$$  /  $$ | \____$$\ $$ |$$ |  $$ |$$ |  $$ |
   \$  /   $$ |$$$$$$$  |$$ |\$$$$$$  |$$ |  $$ |
    \_/    \__|\_______/ \__| \______/ \__|  \__|
```

## About

Vision is an older personal project from my time at IMS Ghaziabad (UC Campus). It wraps the public [HackerTarget](https://hackertarget.com) API in a simple numbered menu, so you can run common network lookups without remembering any URLs.

It is a personal, non-commercial project, shared for learning and feedback.

## Features

| # | Option | What it does |
|---|--------|--------------|
| 1 | Zone Transfer | Checks whether a domain allows DNS zone transfers |
| 2 | DNS Lookup | Shows the DNS records for a domain |
| 3 | Port Scan | Quick nmap scan, run from HackerTarget's servers |
| 4 | HTTP Header Detector | Shows the HTTP response headers of a site |
| 5 | Link Grabber | Lists the links found on a web page |
| 6 | Ip To Location | Shows the approximate location of an IP address |
| 7 | Traceroute | Traces the network path to a host (MTR) |
| 8 | Reverse Ip Lookup | Lists sites hosted on an IP address |
| 9 | Host Search | Finds hostnames and subdomains for a domain |
| 10 | ASN Lookup | Shows the ASN details for an IP address |
| 11 | Exit | Closes the menu |

## Requirements

- Linux or WSL with `bash`
- `lynx` (fetches the results)
- `lolcat` (colours the banner only)
- An internet connection

## Install and run

```bash
sudo apt install lynx lolcat
git clone https://github.com/shivambcaims/Vision.git
cd Vision
bash vision.sh
```

## Usage

1. Type the number of the lookup you want and press Enter.
2. Enter the domain or IP when asked.
3. The result prints in your terminal. Pick another number, or choose `11` to exit.

## Responsible use

Only test domains and IPs that you own or have written permission to test. Lookups, including the port scan, run through HackerTarget's public API against whatever target you enter. Use this tool at your own risk. I am not responsible for misuse.

## Known issues

- Option 6 (Ip To Location) reads the wrong variable, so it can return an empty or wrong result.
- The free HackerTarget API is rate-limited, so repeated lookups may be refused.
- Input is not validated yet, so unusual characters can break a request.

## Feedback

Feedback is very welcome. Please [open an issue](https://github.com/shivambcaims/Vision/issues) and tell me:

- Which options worked and which did not
- Whether the output was clear
- What you would like it to do next

## Author

Shivam Singh. BCA Cyber Security, IMS Ghaziabad. [github.com/shivambcaims](https://github.com/shivambcaims)

## Credits

Lookup data comes from the [HackerTarget](https://hackertarget.com) API.
