#!/bin/bash
cat << "EOF" | lolcat


$$\    $$\ $$\           $$\
$$ |   $$ |\__|          \__|
$$ |   $$ |$$\  $$$$$$$\ $$\  $$$$$$\  $$$$$$$\
\$$\  $$  |$$ |$$  _____|$$ |$$  __$$\ $$  __$$\
 \$$\$$  / $$ |\$$$$$$\  $$ |$$ /  $$ |$$ |  $$ |
  \$$$  /  $$ | \____$$\ $$ |$$ |  $$ |$$ |  $$ |
   \$  /   $$ |$$$$$$$  |$$ |\$$$$$$  |$$ |  $$ |
    \_/    \__|\_______/ \__| \______/ \__|  \__|

Author     : Shivam Singh
Github:github.com/shivambcaims
From IMS Ghaziabad Uc Campus
EOF
echo ""
PS3='vision:'
options=( "Zone Transfer" "DNS Lookup" "Port Scan" "HTTP Header Detector" "Link Grabber" "Ip To Location" "Traceroute" "Reverse Ip Lookup" "Host Search" "ASN Lookup" "Exit"
)
select opt in "${options[@]}"
do
    case $opt in
        "DNS Lookup")
            echo "Enter The Website"
            read site
            lynx -dump http://api.hackertarget.com/dnslookup/?q=$site
            echo ""
            ;;
        "Zone Transfer")
            echo "Enter The Website"
            read site
            lynx -dump http://api.hackertarget.com/zonetransfer/?q=$site
            echo ""
            ;;
        "Port Scan")
            echo "Enter The Website"
            read site
            lynx -dump http://api.hackertarget.com/nmap/?q=$site
            echo ""
            ;;
        "HTTP Header Detector")
            echo "Enter The Website"
            read site
            lynx -dump http://api.hackertarget.com/httpheaders/?q=$site
            echo ""
            ;;
        "Link Grabber")
            echo "Enter The Website"
            read site
            lynx -dump https://api.hackertarget.com/pagelinks/?q=$site
            echo ""
            ;;
        "Ip To Location")
            echo "Enter IP Address"
            read ip 
            lynx -dump https://api.hackertarget.com/geoip/?q=$site
            echo ""
            ;;
        "Traceroute")
            echo "Enter The Website"
            read site
            lynx -dump https://api.hackertarget.com/mtr/?q=$site
            echo ""
            ;;
      "Reverse Ip Lookup")
            echo "Enter The Website Or IP"
            read site
            lynx -dump https://api.hackertarget.com/reverseiplookup/?q=$site
            echo ""
            ;;
            "Host Search")
            echo "Enter The Website"
            read site
            lynx -dump http://api.hackertarget.com/hostsearch/?q=$site
            echo ""
            ;;
           "ASN Lookup")
            echo "Enter The IP Only"
            read site
            lynx -dump https://api.hackertarget.com/aslookup/?q=$site
            echo ""
            ;;
            "Exit")
            break
            ;;
            *) echo "invalid option $REPLY";;
            esac
            done
