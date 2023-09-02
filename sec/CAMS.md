# CCTV & IP Cameras

SCADA/ICS Systems

- Energetics
- Industry

_Swiss Army Knife_ - SCADA hacking toolkit.

_Insecure Schneider systems_

Read and Write PLC (_Programmable Logic Controller_).

[BlackEnergy](https://en.wikipedia.org/wiki/BlackEnergy) - HTTP-based toolkit DDoS attacks.

RTSP (_Real-Time Streaming Protocol_) ports: `554`, `5554` and `8554`

## Resources

_Use of OSINT_

- Camera documentation (fingerprint, default credentials)
- Google "hacking"
- [Shodan](https://www.shodan.io/)
- [nmap](https://nmap.org/)

### Examples

1. Google hacking

   _Axis camera url_

   ```
   inurl:"/view/view.shtml?id="
   ```

2. Shodan search

   - RTSP (_Real-Time Streaming Protocol_)
   - RTP (_Real-time Transport_)
   - /cgi/bin/guestimage.html
   - `Dahua country:IR`
     - Showing every Dahua camera in Iran
       - Banner: Dahua
       - Country: Iran
   - `RTSP/1.0 has_screenshot:true`
     - Protocol: RTSP
     - has_screenshot: shows (public cameras) where Shodan was able to grab the screenshot
   - `port:554`
     - Searching by the RTSP port 554

3. Using [cameraradar](https://github.com/Ullaakut/cameradar)

   Credential Brute-forcer
   RTSP ports: `554`, `5554` and `8554`

   ```sh
   sudo docker run  ullaakut/cameradar -t <IP_ADDRESS> -p <PORT>
   ```

   Using custom wordlists

   ```sh
   sudo docker run  ullaakut/cameradar -t <IP_ADDRESS>
   -v /usr/share/seclists/Passwords/Common-Credentials:/tmp/dictionaries
   -c "tmp/dictionaries/10-million-password-list-top-1000000.json"
   ```

## Target

1. Weak password
2. [Default credentials](https://www.hackers-arise.com/post/the-default-passwords-of-nearly-every-ip-camera)
3. Remote intructions (online)

## Protection

- Firewall
- IDS (_Intrusion Detection System_)

## Links

### OccupyTheWeb

- [HackersArise](https://www.hackers-arise.com/)

- [Learng Shodan](https://www.hackers-arise.com/shodan)
- [Finding SCADA Systems](https://www.hackers-arise.com/post/2016/06/30/Hacking-SCADA-Finding-SCADA-Systems-using-Shodan)
- [Finding SCADA/ICS Sites](https://www.hackers-arise.com/post/shodan-using-shodan-to-find-vulnerable-russian-scada-ics-sites)

- [SCADA/ICS Hacking and Security](https://www.hackers-arise.com/scada-hacking)
- [SCADA Hacking](https://www.hackers-arise.com/post/2017/11/27/SCADA-Hacking-The-difference-between-Security-of-SCADA-systems-and-Traditional-IT-systems)
- [SCADA Hacking History](https://www.hackers-arise.com/post/scada-hacking-the-most-important-scada-ics-attacks-in-history)

- [SCADA/ICS Protocols (Profinet/Profibus)](https://www.hackers-arise.com/post/2017/07/07/scada-hacking-scadaics-protocols-profinetprofibus)

- [Hacking Web Cams](https://www.hackers-arise.com/how-to-hack-web-cams)

- [IP Cameras](https://www.hackers-arise.com/post/we-have-successfully-accessed-many-ip-cameras-in-ukrainian-territory-to-spy-on-russian-activities)
