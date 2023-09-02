#!/bin/bash

# Function to validate the IP address format
is_valid_ip() {
  local ip=$1
  local ip_regex='^([0-9]{1,3}\.){3}[0-9]{1,3}$'
  [[ $ip =~ $ip_regex ]]
}

# Check if a domain is provided as a command-line argument
if [ $# -eq 0 ]; then
  echo "USAGE: d2ip <DOMAIN>"
  echo "Please provide a domain name."
  exit 1
fi

domain="$1"

# Ping the domain and get the server IP address
ip=$(ping -c 1 "$domain" | awk '/^PING/{print $3}' | cut -d '(' -f 2 | cut -d ')' -f 1)

# Check if the IP address is valid
if is_valid_ip "$ip"; then
  echo $ip
  exit 0
else
  echo "Invalid domain or unreachable"
  exit 1
fi
